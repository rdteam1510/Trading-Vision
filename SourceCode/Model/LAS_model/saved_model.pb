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
dense_138/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_138/kernel
u
$dense_138/kernel/Read/ReadVariableOpReadVariableOpdense_138/kernel*
_output_shapes

:
*
dtype0
t
dense_138/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_138/bias
m
"dense_138/bias/Read/ReadVariableOpReadVariableOpdense_138/bias*
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
lstm_414/lstm_cell_414/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_414/lstm_cell_414/kernel
?
1lstm_414/lstm_cell_414/kernel/Read/ReadVariableOpReadVariableOplstm_414/lstm_cell_414/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_414/lstm_cell_414/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_414/lstm_cell_414/recurrent_kernel
?
;lstm_414/lstm_cell_414/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_414/lstm_cell_414/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_414/lstm_cell_414/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_414/lstm_cell_414/bias
?
/lstm_414/lstm_cell_414/bias/Read/ReadVariableOpReadVariableOplstm_414/lstm_cell_414/bias*
_output_shapes	
:?*
dtype0
?
lstm_415/lstm_cell_415/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_415/lstm_cell_415/kernel
?
1lstm_415/lstm_cell_415/kernel/Read/ReadVariableOpReadVariableOplstm_415/lstm_cell_415/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_415/lstm_cell_415/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_415/lstm_cell_415/recurrent_kernel
?
;lstm_415/lstm_cell_415/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_415/lstm_cell_415/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_415/lstm_cell_415/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_415/lstm_cell_415/bias
?
/lstm_415/lstm_cell_415/bias/Read/ReadVariableOpReadVariableOplstm_415/lstm_cell_415/bias*
_output_shapes	
:?*
dtype0
?
lstm_416/lstm_cell_416/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_416/lstm_cell_416/kernel
?
1lstm_416/lstm_cell_416/kernel/Read/ReadVariableOpReadVariableOplstm_416/lstm_cell_416/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_416/lstm_cell_416/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_416/lstm_cell_416/recurrent_kernel
?
;lstm_416/lstm_cell_416/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_416/lstm_cell_416/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_416/lstm_cell_416/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_416/lstm_cell_416/bias
?
/lstm_416/lstm_cell_416/bias/Read/ReadVariableOpReadVariableOplstm_416/lstm_cell_416/bias*
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
Adam/dense_138/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_138/kernel/m
?
+Adam/dense_138/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_138/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_138/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_138/bias/m
{
)Adam/dense_138/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_138/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_414/lstm_cell_414/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_414/lstm_cell_414/kernel/m
?
8Adam/lstm_414/lstm_cell_414/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_414/lstm_cell_414/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_414/lstm_cell_414/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_414/lstm_cell_414/recurrent_kernel/m
?
BAdam/lstm_414/lstm_cell_414/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_414/lstm_cell_414/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_414/lstm_cell_414/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_414/lstm_cell_414/bias/m
?
6Adam/lstm_414/lstm_cell_414/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_414/lstm_cell_414/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_415/lstm_cell_415/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_415/lstm_cell_415/kernel/m
?
8Adam/lstm_415/lstm_cell_415/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_415/lstm_cell_415/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_415/lstm_cell_415/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_415/lstm_cell_415/recurrent_kernel/m
?
BAdam/lstm_415/lstm_cell_415/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_415/lstm_cell_415/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_415/lstm_cell_415/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_415/lstm_cell_415/bias/m
?
6Adam/lstm_415/lstm_cell_415/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_415/lstm_cell_415/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_416/lstm_cell_416/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_416/lstm_cell_416/kernel/m
?
8Adam/lstm_416/lstm_cell_416/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_416/lstm_cell_416/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_416/lstm_cell_416/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_416/lstm_cell_416/recurrent_kernel/m
?
BAdam/lstm_416/lstm_cell_416/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_416/lstm_cell_416/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_416/lstm_cell_416/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_416/lstm_cell_416/bias/m
?
6Adam/lstm_416/lstm_cell_416/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_416/lstm_cell_416/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_138/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_138/kernel/v
?
+Adam/dense_138/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_138/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_138/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_138/bias/v
{
)Adam/dense_138/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_138/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_414/lstm_cell_414/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_414/lstm_cell_414/kernel/v
?
8Adam/lstm_414/lstm_cell_414/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_414/lstm_cell_414/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_414/lstm_cell_414/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_414/lstm_cell_414/recurrent_kernel/v
?
BAdam/lstm_414/lstm_cell_414/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_414/lstm_cell_414/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_414/lstm_cell_414/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_414/lstm_cell_414/bias/v
?
6Adam/lstm_414/lstm_cell_414/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_414/lstm_cell_414/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_415/lstm_cell_415/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_415/lstm_cell_415/kernel/v
?
8Adam/lstm_415/lstm_cell_415/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_415/lstm_cell_415/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_415/lstm_cell_415/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_415/lstm_cell_415/recurrent_kernel/v
?
BAdam/lstm_415/lstm_cell_415/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_415/lstm_cell_415/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_415/lstm_cell_415/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_415/lstm_cell_415/bias/v
?
6Adam/lstm_415/lstm_cell_415/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_415/lstm_cell_415/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_416/lstm_cell_416/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_416/lstm_cell_416/kernel/v
?
8Adam/lstm_416/lstm_cell_416/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_416/lstm_cell_416/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_416/lstm_cell_416/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_416/lstm_cell_416/recurrent_kernel/v
?
BAdam/lstm_416/lstm_cell_416/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_416/lstm_cell_416/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_416/lstm_cell_416/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_416/lstm_cell_416/bias/v
?
6Adam/lstm_416/lstm_cell_416/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_416/lstm_cell_416/bias/v*
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
VARIABLE_VALUEdense_138/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_138/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_414/lstm_cell_414/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_414/lstm_cell_414/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_414/lstm_cell_414/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_415/lstm_cell_415/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_415/lstm_cell_415/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_415/lstm_cell_415/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_416/lstm_cell_416/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_416/lstm_cell_416/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_416/lstm_cell_416/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_138/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_138/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_414/lstm_cell_414/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_414/lstm_cell_414/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_414/lstm_cell_414/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_415/lstm_cell_415/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_415/lstm_cell_415/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_415/lstm_cell_415/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_416/lstm_cell_416/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_416/lstm_cell_416/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_416/lstm_cell_416/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_138/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_138/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_414/lstm_cell_414/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_414/lstm_cell_414/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_414/lstm_cell_414/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_415/lstm_cell_415/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_415/lstm_cell_415/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_415/lstm_cell_415/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_416/lstm_cell_416/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_416/lstm_cell_416/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_416/lstm_cell_416/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_414_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_414_inputlstm_414/lstm_cell_414/kernel'lstm_414/lstm_cell_414/recurrent_kernellstm_414/lstm_cell_414/biaslstm_415/lstm_cell_415/kernel'lstm_415/lstm_cell_415/recurrent_kernellstm_415/lstm_cell_415/biaslstm_416/lstm_cell_416/kernel'lstm_416/lstm_cell_416/recurrent_kernellstm_416/lstm_cell_416/biasdense_138/kerneldense_138/bias*
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
%__inference_signature_wrapper_3336203
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_138/kernel/Read/ReadVariableOp"dense_138/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_414/lstm_cell_414/kernel/Read/ReadVariableOp;lstm_414/lstm_cell_414/recurrent_kernel/Read/ReadVariableOp/lstm_414/lstm_cell_414/bias/Read/ReadVariableOp1lstm_415/lstm_cell_415/kernel/Read/ReadVariableOp;lstm_415/lstm_cell_415/recurrent_kernel/Read/ReadVariableOp/lstm_415/lstm_cell_415/bias/Read/ReadVariableOp1lstm_416/lstm_cell_416/kernel/Read/ReadVariableOp;lstm_416/lstm_cell_416/recurrent_kernel/Read/ReadVariableOp/lstm_416/lstm_cell_416/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_138/kernel/m/Read/ReadVariableOp)Adam/dense_138/bias/m/Read/ReadVariableOp8Adam/lstm_414/lstm_cell_414/kernel/m/Read/ReadVariableOpBAdam/lstm_414/lstm_cell_414/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_414/lstm_cell_414/bias/m/Read/ReadVariableOp8Adam/lstm_415/lstm_cell_415/kernel/m/Read/ReadVariableOpBAdam/lstm_415/lstm_cell_415/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_415/lstm_cell_415/bias/m/Read/ReadVariableOp8Adam/lstm_416/lstm_cell_416/kernel/m/Read/ReadVariableOpBAdam/lstm_416/lstm_cell_416/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_416/lstm_cell_416/bias/m/Read/ReadVariableOp+Adam/dense_138/kernel/v/Read/ReadVariableOp)Adam/dense_138/bias/v/Read/ReadVariableOp8Adam/lstm_414/lstm_cell_414/kernel/v/Read/ReadVariableOpBAdam/lstm_414/lstm_cell_414/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_414/lstm_cell_414/bias/v/Read/ReadVariableOp8Adam/lstm_415/lstm_cell_415/kernel/v/Read/ReadVariableOpBAdam/lstm_415/lstm_cell_415/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_415/lstm_cell_415/bias/v/Read/ReadVariableOp8Adam/lstm_416/lstm_cell_416/kernel/v/Read/ReadVariableOpBAdam/lstm_416/lstm_cell_416/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_416/lstm_cell_416/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3339415
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_138/kerneldense_138/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_414/lstm_cell_414/kernel'lstm_414/lstm_cell_414/recurrent_kernellstm_414/lstm_cell_414/biaslstm_415/lstm_cell_415/kernel'lstm_415/lstm_cell_415/recurrent_kernellstm_415/lstm_cell_415/biaslstm_416/lstm_cell_416/kernel'lstm_416/lstm_cell_416/recurrent_kernellstm_416/lstm_cell_416/biastotalcountAdam/dense_138/kernel/mAdam/dense_138/bias/m$Adam/lstm_414/lstm_cell_414/kernel/m.Adam/lstm_414/lstm_cell_414/recurrent_kernel/m"Adam/lstm_414/lstm_cell_414/bias/m$Adam/lstm_415/lstm_cell_415/kernel/m.Adam/lstm_415/lstm_cell_415/recurrent_kernel/m"Adam/lstm_415/lstm_cell_415/bias/m$Adam/lstm_416/lstm_cell_416/kernel/m.Adam/lstm_416/lstm_cell_416/recurrent_kernel/m"Adam/lstm_416/lstm_cell_416/bias/mAdam/dense_138/kernel/vAdam/dense_138/bias/v$Adam/lstm_414/lstm_cell_414/kernel/v.Adam/lstm_414/lstm_cell_414/recurrent_kernel/v"Adam/lstm_414/lstm_cell_414/bias/v$Adam/lstm_415/lstm_cell_415/kernel/v.Adam/lstm_415/lstm_cell_415/recurrent_kernel/v"Adam/lstm_415/lstm_cell_415/bias/v$Adam/lstm_416/lstm_cell_416/kernel/v.Adam/lstm_416/lstm_cell_416/recurrent_kernel/v"Adam/lstm_416/lstm_cell_416/bias/v*4
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
#__inference__traced_restore_3339545??+
?
?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336056

inputs#
lstm_414_3336029:	?#
lstm_414_3336031:	d?
lstm_414_3336033:	?#
lstm_415_3336036:	d?#
lstm_415_3336038:	2?
lstm_415_3336040:	?"
lstm_416_3336043:2("
lstm_416_3336045:
(
lstm_416_3336047:(#
dense_138_3336050:

dense_138_3336052:
identity??!dense_138/StatefulPartitionedCall? lstm_414/StatefulPartitionedCall? lstm_415/StatefulPartitionedCall? lstm_416/StatefulPartitionedCall?
 lstm_414/StatefulPartitionedCallStatefulPartitionedCallinputslstm_414_3336029lstm_414_3336031lstm_414_3336033*
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335988?
 lstm_415/StatefulPartitionedCallStatefulPartitionedCall)lstm_414/StatefulPartitionedCall:output:0lstm_415_3336036lstm_415_3336038lstm_415_3336040*
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335823?
 lstm_416/StatefulPartitionedCallStatefulPartitionedCall)lstm_415/StatefulPartitionedCall:output:0lstm_416_3336043lstm_416_3336045lstm_416_3336047*
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335658?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall)lstm_416/StatefulPartitionedCall:output:0dense_138_3336050dense_138_3336052*
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
F__inference_dense_138_layer_call_and_return_conditional_losses_3335460y
IdentityIdentity*dense_138/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_138/StatefulPartitionedCall!^lstm_414/StatefulPartitionedCall!^lstm_415/StatefulPartitionedCall!^lstm_416/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2D
 lstm_414/StatefulPartitionedCall lstm_414/StatefulPartitionedCall2D
 lstm_415/StatefulPartitionedCall lstm_415/StatefulPartitionedCall2D
 lstm_416/StatefulPartitionedCall lstm_416/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3334724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_551_3334748_0:2(/
while_lstm_cell_551_3334750_0:
(+
while_lstm_cell_551_3334752_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_551_3334748:2(-
while_lstm_cell_551_3334750:
()
while_lstm_cell_551_3334752:(??+while/lstm_cell_551/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_551/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_551_3334748_0while_lstm_cell_551_3334750_0while_lstm_cell_551_3334752_0*
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334710?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_551/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_551/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_551/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_551/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_551_3334748while_lstm_cell_551_3334748_0"<
while_lstm_cell_551_3334750while_lstm_cell_551_3334750_0"<
while_lstm_cell_551_3334752while_lstm_cell_551_3334752_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_551/StatefulPartitionedCall+while/lstm_cell_551/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3337829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3337829___redundant_placeholder05
1while_while_cond_3337829___redundant_placeholder15
1while_while_cond_3337829___redundant_placeholder25
1while_while_cond_3337829___redundant_placeholder3
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
while_cond_3334723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3334723___redundant_placeholder05
1while_while_cond_3334723___redundant_placeholder15
1while_while_cond_3334723___redundant_placeholder25
1while_while_cond_3334723___redundant_placeholder3
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
while_cond_3335903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3335903___redundant_placeholder05
1while_while_cond_3335903___redundant_placeholder15
1while_while_cond_3335903___redundant_placeholder25
1while_while_cond_3335903___redundant_placeholder3
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
*__inference_lstm_414_layer_call_fn_3337155

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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335988s
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
?
*sequential_138_lstm_415_while_cond_3333713L
Hsequential_138_lstm_415_while_sequential_138_lstm_415_while_loop_counterR
Nsequential_138_lstm_415_while_sequential_138_lstm_415_while_maximum_iterations-
)sequential_138_lstm_415_while_placeholder/
+sequential_138_lstm_415_while_placeholder_1/
+sequential_138_lstm_415_while_placeholder_2/
+sequential_138_lstm_415_while_placeholder_3N
Jsequential_138_lstm_415_while_less_sequential_138_lstm_415_strided_slice_1e
asequential_138_lstm_415_while_sequential_138_lstm_415_while_cond_3333713___redundant_placeholder0e
asequential_138_lstm_415_while_sequential_138_lstm_415_while_cond_3333713___redundant_placeholder1e
asequential_138_lstm_415_while_sequential_138_lstm_415_while_cond_3333713___redundant_placeholder2e
asequential_138_lstm_415_while_sequential_138_lstm_415_while_cond_3333713___redundant_placeholder3*
&sequential_138_lstm_415_while_identity
?
"sequential_138/lstm_415/while/LessLess)sequential_138_lstm_415_while_placeholderJsequential_138_lstm_415_while_less_sequential_138_lstm_415_strided_slice_1*
T0*
_output_shapes
: {
&sequential_138/lstm_415/while/IdentityIdentity&sequential_138/lstm_415/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_138_lstm_415_while_identity/sequential_138/lstm_415/while/Identity:output:0*(
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

lstm_415_while_body_3336882.
*lstm_415_while_lstm_415_while_loop_counter4
0lstm_415_while_lstm_415_while_maximum_iterations
lstm_415_while_placeholder 
lstm_415_while_placeholder_1 
lstm_415_while_placeholder_2 
lstm_415_while_placeholder_3-
)lstm_415_while_lstm_415_strided_slice_1_0i
elstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0:	d?R
?lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?M
>lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
lstm_415_while_identity
lstm_415_while_identity_1
lstm_415_while_identity_2
lstm_415_while_identity_3
lstm_415_while_identity_4
lstm_415_while_identity_5+
'lstm_415_while_lstm_415_strided_slice_1g
clstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensorN
;lstm_415_while_lstm_cell_550_matmul_readvariableop_resource:	d?P
=lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource:	2?K
<lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource:	???3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp?2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp?4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp?
@lstm_415/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_415/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensor_0lstm_415_while_placeholderIlstm_415/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp=lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_415/while/lstm_cell_550/MatMulMatMul9lstm_415/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp?lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_415/while/lstm_cell_550/MatMul_1MatMullstm_415_while_placeholder_2<lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_415/while/lstm_cell_550/addAddV2-lstm_415/while/lstm_cell_550/MatMul:product:0/lstm_415/while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp>lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_415/while/lstm_cell_550/BiasAddBiasAdd$lstm_415/while/lstm_cell_550/add:z:0;lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_415/while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_415/while/lstm_cell_550/splitSplit5lstm_415/while/lstm_cell_550/split/split_dim:output:0-lstm_415/while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_415/while/lstm_cell_550/SigmoidSigmoid+lstm_415/while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_415/while/lstm_cell_550/Sigmoid_1Sigmoid+lstm_415/while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_415/while/lstm_cell_550/mulMul*lstm_415/while/lstm_cell_550/Sigmoid_1:y:0lstm_415_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_415/while/lstm_cell_550/ReluRelu+lstm_415/while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_415/while/lstm_cell_550/mul_1Mul(lstm_415/while/lstm_cell_550/Sigmoid:y:0/lstm_415/while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_415/while/lstm_cell_550/add_1AddV2$lstm_415/while/lstm_cell_550/mul:z:0&lstm_415/while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_415/while/lstm_cell_550/Sigmoid_2Sigmoid+lstm_415/while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_415/while/lstm_cell_550/Relu_1Relu&lstm_415/while/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_415/while/lstm_cell_550/mul_2Mul*lstm_415/while/lstm_cell_550/Sigmoid_2:y:01lstm_415/while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_415/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_415_while_placeholder_1lstm_415_while_placeholder&lstm_415/while/lstm_cell_550/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_415/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_415/while/addAddV2lstm_415_while_placeholderlstm_415/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_415/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_415/while/add_1AddV2*lstm_415_while_lstm_415_while_loop_counterlstm_415/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_415/while/IdentityIdentitylstm_415/while/add_1:z:0^lstm_415/while/NoOp*
T0*
_output_shapes
: ?
lstm_415/while/Identity_1Identity0lstm_415_while_lstm_415_while_maximum_iterations^lstm_415/while/NoOp*
T0*
_output_shapes
: t
lstm_415/while/Identity_2Identitylstm_415/while/add:z:0^lstm_415/while/NoOp*
T0*
_output_shapes
: ?
lstm_415/while/Identity_3IdentityClstm_415/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_415/while/NoOp*
T0*
_output_shapes
: ?
lstm_415/while/Identity_4Identity&lstm_415/while/lstm_cell_550/mul_2:z:0^lstm_415/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_415/while/Identity_5Identity&lstm_415/while/lstm_cell_550/add_1:z:0^lstm_415/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_415/while/NoOpNoOp4^lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp3^lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp5^lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_415_while_identity lstm_415/while/Identity:output:0"?
lstm_415_while_identity_1"lstm_415/while/Identity_1:output:0"?
lstm_415_while_identity_2"lstm_415/while/Identity_2:output:0"?
lstm_415_while_identity_3"lstm_415/while/Identity_3:output:0"?
lstm_415_while_identity_4"lstm_415/while/Identity_4:output:0"?
lstm_415_while_identity_5"lstm_415/while/Identity_5:output:0"T
'lstm_415_while_lstm_415_strided_slice_1)lstm_415_while_lstm_415_strided_slice_1_0"~
<lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource>lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0"?
=lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource?lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0"|
;lstm_415_while_lstm_cell_550_matmul_readvariableop_resource=lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0"?
clstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensorelstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp2h
2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp2l
4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334710

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
lstm_415_while_cond_3336454.
*lstm_415_while_lstm_415_while_loop_counter4
0lstm_415_while_lstm_415_while_maximum_iterations
lstm_415_while_placeholder 
lstm_415_while_placeholder_1 
lstm_415_while_placeholder_2 
lstm_415_while_placeholder_30
,lstm_415_while_less_lstm_415_strided_slice_1G
Clstm_415_while_lstm_415_while_cond_3336454___redundant_placeholder0G
Clstm_415_while_lstm_415_while_cond_3336454___redundant_placeholder1G
Clstm_415_while_lstm_415_while_cond_3336454___redundant_placeholder2G
Clstm_415_while_lstm_415_while_cond_3336454___redundant_placeholder3
lstm_415_while_identity
?
lstm_415/while/LessLesslstm_415_while_placeholder,lstm_415_while_less_lstm_415_strided_slice_1*
T0*
_output_shapes
: ]
lstm_415/while/IdentityIdentitylstm_415/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_415_while_identity lstm_415/while/Identity:output:0*(
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
*__inference_lstm_414_layer_call_fn_3337144

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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335142s
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
?8
?
while_body_3337357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_549_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_549_matmul_readvariableop_resource:	?G
4while_lstm_cell_549_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_549_biasadd_readvariableop_resource:	???*while/lstm_cell_549/BiasAdd/ReadVariableOp?)while/lstm_cell_549/MatMul/ReadVariableOp?+while/lstm_cell_549/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_549/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_549/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_549/addAddV2$while/lstm_cell_549/MatMul:product:0&while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_549/BiasAddBiasAddwhile/lstm_cell_549/add:z:02while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_549/splitSplit,while/lstm_cell_549/split/split_dim:output:0$while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_549/SigmoidSigmoid"while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_1Sigmoid"while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mulMul!while/lstm_cell_549/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_549/ReluRelu"while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_1Mulwhile/lstm_cell_549/Sigmoid:y:0&while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/add_1AddV2while/lstm_cell_549/mul:z:0while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_2Sigmoid"while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_549/Relu_1Reluwhile/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_2Mul!while/lstm_cell_549/Sigmoid_2:y:0(while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_549/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_549/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_549/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_549/BiasAdd/ReadVariableOp*^while/lstm_cell_549/MatMul/ReadVariableOp,^while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_549_biasadd_readvariableop_resource5while_lstm_cell_549_biasadd_readvariableop_resource_0"n
4while_lstm_cell_549_matmul_1_readvariableop_resource6while_lstm_cell_549_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_549_matmul_readvariableop_resource4while_lstm_cell_549_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_549/BiasAdd/ReadVariableOp*while/lstm_cell_549/BiasAdd/ReadVariableOp2V
)while/lstm_cell_549/MatMul/ReadVariableOp)while/lstm_cell_549/MatMul/ReadVariableOp2Z
+while/lstm_cell_549/MatMul_1/ReadVariableOp+while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_138_layer_call_fn_3336230

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
K__inference_sequential_138_layer_call_and_return_conditional_losses_3335467o
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
?

?
lstm_414_while_cond_3336315.
*lstm_414_while_lstm_414_while_loop_counter4
0lstm_414_while_lstm_414_while_maximum_iterations
lstm_414_while_placeholder 
lstm_414_while_placeholder_1 
lstm_414_while_placeholder_2 
lstm_414_while_placeholder_30
,lstm_414_while_less_lstm_414_strided_slice_1G
Clstm_414_while_lstm_414_while_cond_3336315___redundant_placeholder0G
Clstm_414_while_lstm_414_while_cond_3336315___redundant_placeholder1G
Clstm_414_while_lstm_414_while_cond_3336315___redundant_placeholder2G
Clstm_414_while_lstm_414_while_cond_3336315___redundant_placeholder3
lstm_414_while_identity
?
lstm_414/while/LessLesslstm_414_while_placeholder,lstm_414_while_less_lstm_414_strided_slice_1*
T0*
_output_shapes
: ]
lstm_414/while/IdentityIdentitylstm_414/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_414_while_identity lstm_414/while/Identity:output:0*(
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337727

inputs?
,lstm_cell_549_matmul_readvariableop_resource:	?A
.lstm_cell_549_matmul_1_readvariableop_resource:	d?<
-lstm_cell_549_biasadd_readvariableop_resource:	?
identity??$lstm_cell_549/BiasAdd/ReadVariableOp?#lstm_cell_549/MatMul/ReadVariableOp?%lstm_cell_549/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_549/MatMul/ReadVariableOpReadVariableOp,lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_549/MatMulMatMulstrided_slice_2:output:0+lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_549/MatMul_1MatMulzeros:output:0-lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_549/addAddV2lstm_cell_549/MatMul:product:0 lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_549/BiasAddBiasAddlstm_cell_549/add:z:0,lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_549/splitSplit&lstm_cell_549/split/split_dim:output:0lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_549/SigmoidSigmoidlstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_1Sigmoidlstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_549/mulMullstm_cell_549/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_549/ReluRelulstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_1Mullstm_cell_549/Sigmoid:y:0 lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_549/add_1AddV2lstm_cell_549/mul:z:0lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_2Sigmoidlstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_549/Relu_1Relulstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_2Mullstm_cell_549/Sigmoid_2:y:0"lstm_cell_549/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_549_matmul_readvariableop_resource.lstm_cell_549_matmul_1_readvariableop_resource-lstm_cell_549_biasadd_readvariableop_resource*
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
while_body_3337643*
condR
while_cond_3337642*K
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
NoOpNoOp%^lstm_cell_549/BiasAdd/ReadVariableOp$^lstm_cell_549/MatMul/ReadVariableOp&^lstm_cell_549/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_549/BiasAdd/ReadVariableOp$lstm_cell_549/BiasAdd/ReadVariableOp2J
#lstm_cell_549/MatMul/ReadVariableOp#lstm_cell_549/MatMul/ReadVariableOp2N
%lstm_cell_549/MatMul_1/ReadVariableOp%lstm_cell_549/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3334215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_549_3334239_0:	?0
while_lstm_cell_549_3334241_0:	d?,
while_lstm_cell_549_3334243_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_549_3334239:	?.
while_lstm_cell_549_3334241:	d?*
while_lstm_cell_549_3334243:	???+while/lstm_cell_549/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_549/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_549_3334239_0while_lstm_cell_549_3334241_0while_lstm_cell_549_3334243_0*
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334156?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_549/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_549/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_549/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_549/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_549_3334239while_lstm_cell_549_3334239_0"<
while_lstm_cell_549_3334241while_lstm_cell_549_3334241_0"<
while_lstm_cell_549_3334243while_lstm_cell_549_3334243_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_549/StatefulPartitionedCall+while/lstm_cell_549/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3338258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3338258___redundant_placeholder05
1while_while_cond_3338258___redundant_placeholder15
1while_while_cond_3338258___redundant_placeholder25
1while_while_cond_3338258___redundant_placeholder3
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
while_body_3335358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_551_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_551_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_551_matmul_readvariableop_resource:2(F
4while_lstm_cell_551_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_551_biasadd_readvariableop_resource:(??*while/lstm_cell_551/BiasAdd/ReadVariableOp?)while/lstm_cell_551/MatMul/ReadVariableOp?+while/lstm_cell_551/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_551/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_551/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_551/addAddV2$while/lstm_cell_551/MatMul:product:0&while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_551/BiasAddBiasAddwhile/lstm_cell_551/add:z:02while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_551/splitSplit,while/lstm_cell_551/split/split_dim:output:0$while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_551/SigmoidSigmoid"while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_1Sigmoid"while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mulMul!while/lstm_cell_551/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_551/ReluRelu"while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_1Mulwhile/lstm_cell_551/Sigmoid:y:0&while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/add_1AddV2while/lstm_cell_551/mul:z:0while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_2Sigmoid"while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_551/Relu_1Reluwhile/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_2Mul!while/lstm_cell_551/Sigmoid_2:y:0(while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_551/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_551/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_551/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_551/BiasAdd/ReadVariableOp*^while/lstm_cell_551/MatMul/ReadVariableOp,^while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_551_biasadd_readvariableop_resource5while_lstm_cell_551_biasadd_readvariableop_resource_0"n
4while_lstm_cell_551_matmul_1_readvariableop_resource6while_lstm_cell_551_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_551_matmul_readvariableop_resource4while_lstm_cell_551_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_551/BiasAdd/ReadVariableOp*while/lstm_cell_551/BiasAdd/ReadVariableOp2V
)while/lstm_cell_551/MatMul/ReadVariableOp)while/lstm_cell_551/MatMul/ReadVariableOp2Z
+while/lstm_cell_551/MatMul_1/ReadVariableOp+while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_414_while_body_3336316.
*lstm_414_while_lstm_414_while_loop_counter4
0lstm_414_while_lstm_414_while_maximum_iterations
lstm_414_while_placeholder 
lstm_414_while_placeholder_1 
lstm_414_while_placeholder_2 
lstm_414_while_placeholder_3-
)lstm_414_while_lstm_414_strided_slice_1_0i
elstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0:	?R
?lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?M
>lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
lstm_414_while_identity
lstm_414_while_identity_1
lstm_414_while_identity_2
lstm_414_while_identity_3
lstm_414_while_identity_4
lstm_414_while_identity_5+
'lstm_414_while_lstm_414_strided_slice_1g
clstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensorN
;lstm_414_while_lstm_cell_549_matmul_readvariableop_resource:	?P
=lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource:	d?K
<lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource:	???3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp?2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp?4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp?
@lstm_414/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_414/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensor_0lstm_414_while_placeholderIlstm_414/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp=lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_414/while/lstm_cell_549/MatMulMatMul9lstm_414/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp?lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_414/while/lstm_cell_549/MatMul_1MatMullstm_414_while_placeholder_2<lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_414/while/lstm_cell_549/addAddV2-lstm_414/while/lstm_cell_549/MatMul:product:0/lstm_414/while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp>lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_414/while/lstm_cell_549/BiasAddBiasAdd$lstm_414/while/lstm_cell_549/add:z:0;lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_414/while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_414/while/lstm_cell_549/splitSplit5lstm_414/while/lstm_cell_549/split/split_dim:output:0-lstm_414/while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_414/while/lstm_cell_549/SigmoidSigmoid+lstm_414/while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_414/while/lstm_cell_549/Sigmoid_1Sigmoid+lstm_414/while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_414/while/lstm_cell_549/mulMul*lstm_414/while/lstm_cell_549/Sigmoid_1:y:0lstm_414_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_414/while/lstm_cell_549/ReluRelu+lstm_414/while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_414/while/lstm_cell_549/mul_1Mul(lstm_414/while/lstm_cell_549/Sigmoid:y:0/lstm_414/while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_414/while/lstm_cell_549/add_1AddV2$lstm_414/while/lstm_cell_549/mul:z:0&lstm_414/while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_414/while/lstm_cell_549/Sigmoid_2Sigmoid+lstm_414/while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_414/while/lstm_cell_549/Relu_1Relu&lstm_414/while/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_414/while/lstm_cell_549/mul_2Mul*lstm_414/while/lstm_cell_549/Sigmoid_2:y:01lstm_414/while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_414/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_414_while_placeholder_1lstm_414_while_placeholder&lstm_414/while/lstm_cell_549/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_414/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_414/while/addAddV2lstm_414_while_placeholderlstm_414/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_414/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_414/while/add_1AddV2*lstm_414_while_lstm_414_while_loop_counterlstm_414/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_414/while/IdentityIdentitylstm_414/while/add_1:z:0^lstm_414/while/NoOp*
T0*
_output_shapes
: ?
lstm_414/while/Identity_1Identity0lstm_414_while_lstm_414_while_maximum_iterations^lstm_414/while/NoOp*
T0*
_output_shapes
: t
lstm_414/while/Identity_2Identitylstm_414/while/add:z:0^lstm_414/while/NoOp*
T0*
_output_shapes
: ?
lstm_414/while/Identity_3IdentityClstm_414/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_414/while/NoOp*
T0*
_output_shapes
: ?
lstm_414/while/Identity_4Identity&lstm_414/while/lstm_cell_549/mul_2:z:0^lstm_414/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_414/while/Identity_5Identity&lstm_414/while/lstm_cell_549/add_1:z:0^lstm_414/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_414/while/NoOpNoOp4^lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp3^lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp5^lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_414_while_identity lstm_414/while/Identity:output:0"?
lstm_414_while_identity_1"lstm_414/while/Identity_1:output:0"?
lstm_414_while_identity_2"lstm_414/while/Identity_2:output:0"?
lstm_414_while_identity_3"lstm_414/while/Identity_3:output:0"?
lstm_414_while_identity_4"lstm_414/while/Identity_4:output:0"?
lstm_414_while_identity_5"lstm_414/while/Identity_5:output:0"T
'lstm_414_while_lstm_414_strided_slice_1)lstm_414_while_lstm_414_strided_slice_1_0"~
<lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource>lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0"?
=lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource?lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0"|
;lstm_414_while_lstm_cell_549_matmul_readvariableop_resource=lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0"?
clstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensorelstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp2h
2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp2l
4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3337914
inputs_0?
,lstm_cell_550_matmul_readvariableop_resource:	d?A
.lstm_cell_550_matmul_1_readvariableop_resource:	2?<
-lstm_cell_550_biasadd_readvariableop_resource:	?
identity??$lstm_cell_550/BiasAdd/ReadVariableOp?#lstm_cell_550/MatMul/ReadVariableOp?%lstm_cell_550/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_550/MatMul/ReadVariableOpReadVariableOp,lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_550/MatMulMatMulstrided_slice_2:output:0+lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_550/MatMul_1MatMulzeros:output:0-lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_550/addAddV2lstm_cell_550/MatMul:product:0 lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_550/BiasAddBiasAddlstm_cell_550/add:z:0,lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_550/splitSplit&lstm_cell_550/split/split_dim:output:0lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_550/SigmoidSigmoidlstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_1Sigmoidlstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_550/mulMullstm_cell_550/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_550/ReluRelulstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_1Mullstm_cell_550/Sigmoid:y:0 lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_550/add_1AddV2lstm_cell_550/mul:z:0lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_2Sigmoidlstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_550/Relu_1Relulstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_2Mullstm_cell_550/Sigmoid_2:y:0"lstm_cell_550/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_550_matmul_readvariableop_resource.lstm_cell_550_matmul_1_readvariableop_resource-lstm_cell_550_biasadd_readvariableop_resource*
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
while_body_3337830*
condR
while_cond_3337829*K
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
NoOpNoOp%^lstm_cell_550/BiasAdd/ReadVariableOp$^lstm_cell_550/MatMul/ReadVariableOp&^lstm_cell_550/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_550/BiasAdd/ReadVariableOp$lstm_cell_550/BiasAdd/ReadVariableOp2J
#lstm_cell_550/MatMul/ReadVariableOp#lstm_cell_550/MatMul/ReadVariableOp2N
%lstm_cell_550/MatMul_1/ReadVariableOp%lstm_cell_550/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3338732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_551_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_551_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_551_matmul_readvariableop_resource:2(F
4while_lstm_cell_551_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_551_biasadd_readvariableop_resource:(??*while/lstm_cell_551/BiasAdd/ReadVariableOp?)while/lstm_cell_551/MatMul/ReadVariableOp?+while/lstm_cell_551/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_551/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_551/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_551/addAddV2$while/lstm_cell_551/MatMul:product:0&while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_551/BiasAddBiasAddwhile/lstm_cell_551/add:z:02while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_551/splitSplit,while/lstm_cell_551/split/split_dim:output:0$while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_551/SigmoidSigmoid"while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_1Sigmoid"while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mulMul!while/lstm_cell_551/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_551/ReluRelu"while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_1Mulwhile/lstm_cell_551/Sigmoid:y:0&while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/add_1AddV2while/lstm_cell_551/mul:z:0while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_2Sigmoid"while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_551/Relu_1Reluwhile/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_2Mul!while/lstm_cell_551/Sigmoid_2:y:0(while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_551/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_551/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_551/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_551/BiasAdd/ReadVariableOp*^while/lstm_cell_551/MatMul/ReadVariableOp,^while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_551_biasadd_readvariableop_resource5while_lstm_cell_551_biasadd_readvariableop_resource_0"n
4while_lstm_cell_551_matmul_1_readvariableop_resource6while_lstm_cell_551_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_551_matmul_readvariableop_resource4while_lstm_cell_551_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_551/BiasAdd/ReadVariableOp*while/lstm_cell_551/BiasAdd/ReadVariableOp2V
)while/lstm_cell_551/MatMul/ReadVariableOp)while/lstm_cell_551/MatMul/ReadVariableOp2Z
+while/lstm_cell_551/MatMul_1/ReadVariableOp+while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
#__inference__traced_restore_3339545
file_prefix3
!assignvariableop_dense_138_kernel:
/
!assignvariableop_1_dense_138_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_414_lstm_cell_414_kernel:	?M
:assignvariableop_8_lstm_414_lstm_cell_414_recurrent_kernel:	d?=
.assignvariableop_9_lstm_414_lstm_cell_414_bias:	?D
1assignvariableop_10_lstm_415_lstm_cell_415_kernel:	d?N
;assignvariableop_11_lstm_415_lstm_cell_415_recurrent_kernel:	2?>
/assignvariableop_12_lstm_415_lstm_cell_415_bias:	?C
1assignvariableop_13_lstm_416_lstm_cell_416_kernel:2(M
;assignvariableop_14_lstm_416_lstm_cell_416_recurrent_kernel:
(=
/assignvariableop_15_lstm_416_lstm_cell_416_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_138_kernel_m:
7
)assignvariableop_19_adam_dense_138_bias_m:K
8assignvariableop_20_adam_lstm_414_lstm_cell_414_kernel_m:	?U
Bassignvariableop_21_adam_lstm_414_lstm_cell_414_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_414_lstm_cell_414_bias_m:	?K
8assignvariableop_23_adam_lstm_415_lstm_cell_415_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_415_lstm_cell_415_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_415_lstm_cell_415_bias_m:	?J
8assignvariableop_26_adam_lstm_416_lstm_cell_416_kernel_m:2(T
Bassignvariableop_27_adam_lstm_416_lstm_cell_416_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_416_lstm_cell_416_bias_m:(=
+assignvariableop_29_adam_dense_138_kernel_v:
7
)assignvariableop_30_adam_dense_138_bias_v:K
8assignvariableop_31_adam_lstm_414_lstm_cell_414_kernel_v:	?U
Bassignvariableop_32_adam_lstm_414_lstm_cell_414_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_414_lstm_cell_414_bias_v:	?K
8assignvariableop_34_adam_lstm_415_lstm_cell_415_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_415_lstm_cell_415_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_415_lstm_cell_415_bias_v:	?J
8assignvariableop_37_adam_lstm_416_lstm_cell_416_kernel_v:2(T
Bassignvariableop_38_adam_lstm_416_lstm_cell_416_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_416_lstm_cell_416_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_138_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_138_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_414_lstm_cell_414_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_414_lstm_cell_414_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_414_lstm_cell_414_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_415_lstm_cell_415_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_415_lstm_cell_415_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_415_lstm_cell_415_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_416_lstm_cell_416_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_416_lstm_cell_416_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_416_lstm_cell_416_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_138_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_138_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_414_lstm_cell_414_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_414_lstm_cell_414_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_414_lstm_cell_414_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_415_lstm_cell_415_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_415_lstm_cell_415_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_415_lstm_cell_415_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_416_lstm_cell_416_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_416_lstm_cell_416_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_416_lstm_cell_416_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_138_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_138_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_414_lstm_cell_414_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_414_lstm_cell_414_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_414_lstm_cell_414_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_415_lstm_cell_415_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_415_lstm_cell_415_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_415_lstm_cell_415_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_416_lstm_cell_416_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_416_lstm_cell_416_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_416_lstm_cell_416_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334856

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
?#
?
while_body_3334024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_549_3334048_0:	?0
while_lstm_cell_549_3334050_0:	d?,
while_lstm_cell_549_3334052_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_549_3334048:	?.
while_lstm_cell_549_3334050:	d?*
while_lstm_cell_549_3334052:	???+while/lstm_cell_549/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_549/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_549_3334048_0while_lstm_cell_549_3334050_0while_lstm_cell_549_3334052_0*
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334010?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_549/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_549/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_549/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_549/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_549_3334048while_lstm_cell_549_3334048_0"<
while_lstm_cell_549_3334050while_lstm_cell_549_3334050_0"<
while_lstm_cell_549_3334052while_lstm_cell_549_3334052_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_549/StatefulPartitionedCall+while/lstm_cell_549/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336138
lstm_414_input#
lstm_414_3336111:	?#
lstm_414_3336113:	d?
lstm_414_3336115:	?#
lstm_415_3336118:	d?#
lstm_415_3336120:	2?
lstm_415_3336122:	?"
lstm_416_3336125:2("
lstm_416_3336127:
(
lstm_416_3336129:(#
dense_138_3336132:

dense_138_3336134:
identity??!dense_138/StatefulPartitionedCall? lstm_414/StatefulPartitionedCall? lstm_415/StatefulPartitionedCall? lstm_416/StatefulPartitionedCall?
 lstm_414/StatefulPartitionedCallStatefulPartitionedCalllstm_414_inputlstm_414_3336111lstm_414_3336113lstm_414_3336115*
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335142?
 lstm_415/StatefulPartitionedCallStatefulPartitionedCall)lstm_414/StatefulPartitionedCall:output:0lstm_415_3336118lstm_415_3336120lstm_415_3336122*
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335292?
 lstm_416/StatefulPartitionedCallStatefulPartitionedCall)lstm_415/StatefulPartitionedCall:output:0lstm_416_3336125lstm_416_3336127lstm_416_3336129*
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335442?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall)lstm_416/StatefulPartitionedCall:output:0dense_138_3336132dense_138_3336134*
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
F__inference_dense_138_layer_call_and_return_conditional_losses_3335460y
IdentityIdentity*dense_138/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_138/StatefulPartitionedCall!^lstm_414/StatefulPartitionedCall!^lstm_415/StatefulPartitionedCall!^lstm_416/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2D
 lstm_414/StatefulPartitionedCall lstm_414/StatefulPartitionedCall2D
 lstm_415/StatefulPartitionedCall lstm_415/StatefulPartitionedCall2D
 lstm_416/StatefulPartitionedCall lstm_416/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_414_input
?8
?
while_body_3338116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_550_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_550_matmul_readvariableop_resource:	d?G
4while_lstm_cell_550_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_550_biasadd_readvariableop_resource:	???*while/lstm_cell_550/BiasAdd/ReadVariableOp?)while/lstm_cell_550/MatMul/ReadVariableOp?+while/lstm_cell_550/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_550/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_550/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_550/addAddV2$while/lstm_cell_550/MatMul:product:0&while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_550/BiasAddBiasAddwhile/lstm_cell_550/add:z:02while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_550/splitSplit,while/lstm_cell_550/split/split_dim:output:0$while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_550/SigmoidSigmoid"while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_1Sigmoid"while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mulMul!while/lstm_cell_550/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_550/ReluRelu"while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_1Mulwhile/lstm_cell_550/Sigmoid:y:0&while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/add_1AddV2while/lstm_cell_550/mul:z:0while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_2Sigmoid"while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_550/Relu_1Reluwhile/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_2Mul!while/lstm_cell_550/Sigmoid_2:y:0(while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_550/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_550/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_550/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_550/BiasAdd/ReadVariableOp*^while/lstm_cell_550/MatMul/ReadVariableOp,^while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_550_biasadd_readvariableop_resource5while_lstm_cell_550_biasadd_readvariableop_resource_0"n
4while_lstm_cell_550_matmul_1_readvariableop_resource6while_lstm_cell_550_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_550_matmul_readvariableop_resource4while_lstm_cell_550_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_550/BiasAdd/ReadVariableOp*while/lstm_cell_550/BiasAdd/ReadVariableOp2V
)while/lstm_cell_550/MatMul/ReadVariableOp)while/lstm_cell_550/MatMul/ReadVariableOp2Z
+while/lstm_cell_550/MatMul_1/ReadVariableOp+while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_416_layer_call_fn_3338387

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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335658o
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
while_body_3335208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_550_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_550_matmul_readvariableop_resource:	d?G
4while_lstm_cell_550_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_550_biasadd_readvariableop_resource:	???*while/lstm_cell_550/BiasAdd/ReadVariableOp?)while/lstm_cell_550/MatMul/ReadVariableOp?+while/lstm_cell_550/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_550/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_550/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_550/addAddV2$while/lstm_cell_550/MatMul:product:0&while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_550/BiasAddBiasAddwhile/lstm_cell_550/add:z:02while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_550/splitSplit,while/lstm_cell_550/split/split_dim:output:0$while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_550/SigmoidSigmoid"while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_1Sigmoid"while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mulMul!while/lstm_cell_550/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_550/ReluRelu"while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_1Mulwhile/lstm_cell_550/Sigmoid:y:0&while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/add_1AddV2while/lstm_cell_550/mul:z:0while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_2Sigmoid"while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_550/Relu_1Reluwhile/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_2Mul!while/lstm_cell_550/Sigmoid_2:y:0(while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_550/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_550/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_550/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_550/BiasAdd/ReadVariableOp*^while/lstm_cell_550/MatMul/ReadVariableOp,^while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_550_biasadd_readvariableop_resource5while_lstm_cell_550_biasadd_readvariableop_resource_0"n
4while_lstm_cell_550_matmul_1_readvariableop_resource6while_lstm_cell_550_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_550_matmul_readvariableop_resource4while_lstm_cell_550_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_550/BiasAdd/ReadVariableOp*while/lstm_cell_550/BiasAdd/ReadVariableOp2V
)while/lstm_cell_550/MatMul/ReadVariableOp)while/lstm_cell_550/MatMul/ReadVariableOp2Z
+while/lstm_cell_550/MatMul_1/ReadVariableOp+while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3338446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_551_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_551_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_551_matmul_readvariableop_resource:2(F
4while_lstm_cell_551_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_551_biasadd_readvariableop_resource:(??*while/lstm_cell_551/BiasAdd/ReadVariableOp?)while/lstm_cell_551/MatMul/ReadVariableOp?+while/lstm_cell_551/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_551/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_551/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_551/addAddV2$while/lstm_cell_551/MatMul:product:0&while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_551/BiasAddBiasAddwhile/lstm_cell_551/add:z:02while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_551/splitSplit,while/lstm_cell_551/split/split_dim:output:0$while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_551/SigmoidSigmoid"while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_1Sigmoid"while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mulMul!while/lstm_cell_551/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_551/ReluRelu"while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_1Mulwhile/lstm_cell_551/Sigmoid:y:0&while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/add_1AddV2while/lstm_cell_551/mul:z:0while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_2Sigmoid"while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_551/Relu_1Reluwhile/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_2Mul!while/lstm_cell_551/Sigmoid_2:y:0(while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_551/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_551/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_551/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_551/BiasAdd/ReadVariableOp*^while/lstm_cell_551/MatMul/ReadVariableOp,^while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_551_biasadd_readvariableop_resource5while_lstm_cell_551_biasadd_readvariableop_resource_0"n
4while_lstm_cell_551_matmul_1_readvariableop_resource6while_lstm_cell_551_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_551_matmul_readvariableop_resource4while_lstm_cell_551_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_551/BiasAdd/ReadVariableOp*while/lstm_cell_551/BiasAdd/ReadVariableOp2V
)while/lstm_cell_551/MatMul/ReadVariableOp)while/lstm_cell_551/MatMul/ReadVariableOp2Z
+while/lstm_cell_551/MatMul_1/ReadVariableOp+while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_550_layer_call_fn_3339093

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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334360o
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
while_body_3337500
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_549_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_549_matmul_readvariableop_resource:	?G
4while_lstm_cell_549_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_549_biasadd_readvariableop_resource:	???*while/lstm_cell_549/BiasAdd/ReadVariableOp?)while/lstm_cell_549/MatMul/ReadVariableOp?+while/lstm_cell_549/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_549/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_549/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_549/addAddV2$while/lstm_cell_549/MatMul:product:0&while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_549/BiasAddBiasAddwhile/lstm_cell_549/add:z:02while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_549/splitSplit,while/lstm_cell_549/split/split_dim:output:0$while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_549/SigmoidSigmoid"while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_1Sigmoid"while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mulMul!while/lstm_cell_549/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_549/ReluRelu"while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_1Mulwhile/lstm_cell_549/Sigmoid:y:0&while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/add_1AddV2while/lstm_cell_549/mul:z:0while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_2Sigmoid"while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_549/Relu_1Reluwhile/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_2Mul!while/lstm_cell_549/Sigmoid_2:y:0(while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_549/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_549/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_549/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_549/BiasAdd/ReadVariableOp*^while/lstm_cell_549/MatMul/ReadVariableOp,^while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_549_biasadd_readvariableop_resource5while_lstm_cell_549_biasadd_readvariableop_resource_0"n
4while_lstm_cell_549_matmul_1_readvariableop_resource6while_lstm_cell_549_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_549_matmul_readvariableop_resource4while_lstm_cell_549_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_549/BiasAdd/ReadVariableOp*while/lstm_cell_549/BiasAdd/ReadVariableOp2V
)while/lstm_cell_549/MatMul/ReadVariableOp)while/lstm_cell_549/MatMul/ReadVariableOp2Z
+while/lstm_cell_549/MatMul_1/ReadVariableOp+while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336168
lstm_414_input#
lstm_414_3336141:	?#
lstm_414_3336143:	d?
lstm_414_3336145:	?#
lstm_415_3336148:	d?#
lstm_415_3336150:	2?
lstm_415_3336152:	?"
lstm_416_3336155:2("
lstm_416_3336157:
(
lstm_416_3336159:(#
dense_138_3336162:

dense_138_3336164:
identity??!dense_138/StatefulPartitionedCall? lstm_414/StatefulPartitionedCall? lstm_415/StatefulPartitionedCall? lstm_416/StatefulPartitionedCall?
 lstm_414/StatefulPartitionedCallStatefulPartitionedCalllstm_414_inputlstm_414_3336141lstm_414_3336143lstm_414_3336145*
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335988?
 lstm_415/StatefulPartitionedCallStatefulPartitionedCall)lstm_414/StatefulPartitionedCall:output:0lstm_415_3336148lstm_415_3336150lstm_415_3336152*
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335823?
 lstm_416/StatefulPartitionedCallStatefulPartitionedCall)lstm_415/StatefulPartitionedCall:output:0lstm_416_3336155lstm_416_3336157lstm_416_3336159*
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335658?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall)lstm_416/StatefulPartitionedCall:output:0dense_138_3336162dense_138_3336164*
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
F__inference_dense_138_layer_call_and_return_conditional_losses_3335460y
IdentityIdentity*dense_138/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_138/StatefulPartitionedCall!^lstm_414/StatefulPartitionedCall!^lstm_415/StatefulPartitionedCall!^lstm_416/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2D
 lstm_414/StatefulPartitionedCall lstm_414/StatefulPartitionedCall2D
 lstm_415/StatefulPartitionedCall lstm_415/StatefulPartitionedCall2D
 lstm_416/StatefulPartitionedCall lstm_416/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_414_input
?J
?
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335142

inputs?
,lstm_cell_549_matmul_readvariableop_resource:	?A
.lstm_cell_549_matmul_1_readvariableop_resource:	d?<
-lstm_cell_549_biasadd_readvariableop_resource:	?
identity??$lstm_cell_549/BiasAdd/ReadVariableOp?#lstm_cell_549/MatMul/ReadVariableOp?%lstm_cell_549/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_549/MatMul/ReadVariableOpReadVariableOp,lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_549/MatMulMatMulstrided_slice_2:output:0+lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_549/MatMul_1MatMulzeros:output:0-lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_549/addAddV2lstm_cell_549/MatMul:product:0 lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_549/BiasAddBiasAddlstm_cell_549/add:z:0,lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_549/splitSplit&lstm_cell_549/split/split_dim:output:0lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_549/SigmoidSigmoidlstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_1Sigmoidlstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_549/mulMullstm_cell_549/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_549/ReluRelulstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_1Mullstm_cell_549/Sigmoid:y:0 lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_549/add_1AddV2lstm_cell_549/mul:z:0lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_2Sigmoidlstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_549/Relu_1Relulstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_2Mullstm_cell_549/Sigmoid_2:y:0"lstm_cell_549/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_549_matmul_readvariableop_resource.lstm_cell_549_matmul_1_readvariableop_resource-lstm_cell_549_biasadd_readvariableop_resource*
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
while_body_3335058*
condR
while_cond_3335057*K
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
NoOpNoOp%^lstm_cell_549/BiasAdd/ReadVariableOp$^lstm_cell_549/MatMul/ReadVariableOp&^lstm_cell_549/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_549/BiasAdd/ReadVariableOp$lstm_cell_549/BiasAdd/ReadVariableOp2J
#lstm_cell_549/MatMul/ReadVariableOp#lstm_cell_549/MatMul/ReadVariableOp2N
%lstm_cell_549/MatMul_1/ReadVariableOp%lstm_cell_549/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_415_layer_call_fn_3337738
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3334443|
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
while_cond_3338445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3338445___redundant_placeholder05
1while_while_cond_3338445___redundant_placeholder15
1while_while_cond_3338445___redundant_placeholder25
1while_while_cond_3338445___redundant_placeholder3
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338816

inputs>
,lstm_cell_551_matmul_readvariableop_resource:2(@
.lstm_cell_551_matmul_1_readvariableop_resource:
(;
-lstm_cell_551_biasadd_readvariableop_resource:(
identity??$lstm_cell_551/BiasAdd/ReadVariableOp?#lstm_cell_551/MatMul/ReadVariableOp?%lstm_cell_551/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_551/MatMul/ReadVariableOpReadVariableOp,lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_551/MatMulMatMulstrided_slice_2:output:0+lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_551/MatMul_1MatMulzeros:output:0-lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_551/addAddV2lstm_cell_551/MatMul:product:0 lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_551/BiasAddBiasAddlstm_cell_551/add:z:0,lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_551/splitSplit&lstm_cell_551/split/split_dim:output:0lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_551/SigmoidSigmoidlstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_1Sigmoidlstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_551/mulMullstm_cell_551/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_551/ReluRelulstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_1Mullstm_cell_551/Sigmoid:y:0 lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_551/add_1AddV2lstm_cell_551/mul:z:0lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_2Sigmoidlstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_551/Relu_1Relulstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_2Mullstm_cell_551/Sigmoid_2:y:0"lstm_cell_551/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_551_matmul_readvariableop_resource.lstm_cell_551_matmul_1_readvariableop_resource-lstm_cell_551_biasadd_readvariableop_resource*
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
while_body_3338732*
condR
while_cond_3338731*K
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
NoOpNoOp%^lstm_cell_551/BiasAdd/ReadVariableOp$^lstm_cell_551/MatMul/ReadVariableOp&^lstm_cell_551/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_551/BiasAdd/ReadVariableOp$lstm_cell_551/BiasAdd/ReadVariableOp2J
#lstm_cell_551/MatMul/ReadVariableOp#lstm_cell_551/MatMul/ReadVariableOp2N
%lstm_cell_551/MatMul_1/ReadVariableOp%lstm_cell_551/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3335467

inputs#
lstm_414_3335143:	?#
lstm_414_3335145:	d?
lstm_414_3335147:	?#
lstm_415_3335293:	d?#
lstm_415_3335295:	2?
lstm_415_3335297:	?"
lstm_416_3335443:2("
lstm_416_3335445:
(
lstm_416_3335447:(#
dense_138_3335461:

dense_138_3335463:
identity??!dense_138/StatefulPartitionedCall? lstm_414/StatefulPartitionedCall? lstm_415/StatefulPartitionedCall? lstm_416/StatefulPartitionedCall?
 lstm_414/StatefulPartitionedCallStatefulPartitionedCallinputslstm_414_3335143lstm_414_3335145lstm_414_3335147*
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335142?
 lstm_415/StatefulPartitionedCallStatefulPartitionedCall)lstm_414/StatefulPartitionedCall:output:0lstm_415_3335293lstm_415_3335295lstm_415_3335297*
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335292?
 lstm_416/StatefulPartitionedCallStatefulPartitionedCall)lstm_415/StatefulPartitionedCall:output:0lstm_416_3335443lstm_416_3335445lstm_416_3335447*
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335442?
!dense_138/StatefulPartitionedCallStatefulPartitionedCall)lstm_416/StatefulPartitionedCall:output:0dense_138_3335461dense_138_3335463*
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
F__inference_dense_138_layer_call_and_return_conditional_losses_3335460y
IdentityIdentity*dense_138/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_138/StatefulPartitionedCall!^lstm_414/StatefulPartitionedCall!^lstm_415/StatefulPartitionedCall!^lstm_416/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_138/StatefulPartitionedCall!dense_138/StatefulPartitionedCall2D
 lstm_414/StatefulPartitionedCall lstm_414/StatefulPartitionedCall2D
 lstm_415/StatefulPartitionedCall lstm_415/StatefulPartitionedCall2D
 lstm_416/StatefulPartitionedCall lstm_416/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3337356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3337356___redundant_placeholder05
1while_while_cond_3337356___redundant_placeholder15
1while_while_cond_3337356___redundant_placeholder25
1while_while_cond_3337356___redundant_placeholder3
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
?T
?
*sequential_138_lstm_414_while_body_3333575L
Hsequential_138_lstm_414_while_sequential_138_lstm_414_while_loop_counterR
Nsequential_138_lstm_414_while_sequential_138_lstm_414_while_maximum_iterations-
)sequential_138_lstm_414_while_placeholder/
+sequential_138_lstm_414_while_placeholder_1/
+sequential_138_lstm_414_while_placeholder_2/
+sequential_138_lstm_414_while_placeholder_3K
Gsequential_138_lstm_414_while_sequential_138_lstm_414_strided_slice_1_0?
?sequential_138_lstm_414_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_414_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_138_lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0:	?a
Nsequential_138_lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?\
Msequential_138_lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0:	?*
&sequential_138_lstm_414_while_identity,
(sequential_138_lstm_414_while_identity_1,
(sequential_138_lstm_414_while_identity_2,
(sequential_138_lstm_414_while_identity_3,
(sequential_138_lstm_414_while_identity_4,
(sequential_138_lstm_414_while_identity_5I
Esequential_138_lstm_414_while_sequential_138_lstm_414_strided_slice_1?
?sequential_138_lstm_414_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_414_tensorarrayunstack_tensorlistfromtensor]
Jsequential_138_lstm_414_while_lstm_cell_549_matmul_readvariableop_resource:	?_
Lsequential_138_lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource:	d?Z
Ksequential_138_lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource:	???Bsequential_138/lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp?Asequential_138/lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp?Csequential_138/lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp?
Osequential_138/lstm_414/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_138/lstm_414/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_138_lstm_414_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_414_tensorarrayunstack_tensorlistfromtensor_0)sequential_138_lstm_414_while_placeholderXsequential_138/lstm_414/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_138/lstm_414/while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOpLsequential_138_lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_138/lstm_414/while/lstm_cell_549/MatMulMatMulHsequential_138/lstm_414/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_138/lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_138/lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOpNsequential_138_lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_138/lstm_414/while/lstm_cell_549/MatMul_1MatMul+sequential_138_lstm_414_while_placeholder_2Ksequential_138/lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_138/lstm_414/while/lstm_cell_549/addAddV2<sequential_138/lstm_414/while/lstm_cell_549/MatMul:product:0>sequential_138/lstm_414/while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_138/lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOpMsequential_138_lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_138/lstm_414/while/lstm_cell_549/BiasAddBiasAdd3sequential_138/lstm_414/while/lstm_cell_549/add:z:0Jsequential_138/lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_138/lstm_414/while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_138/lstm_414/while/lstm_cell_549/splitSplitDsequential_138/lstm_414/while/lstm_cell_549/split/split_dim:output:0<sequential_138/lstm_414/while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_138/lstm_414/while/lstm_cell_549/SigmoidSigmoid:sequential_138/lstm_414/while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_138/lstm_414/while/lstm_cell_549/Sigmoid_1Sigmoid:sequential_138/lstm_414/while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_138/lstm_414/while/lstm_cell_549/mulMul9sequential_138/lstm_414/while/lstm_cell_549/Sigmoid_1:y:0+sequential_138_lstm_414_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_138/lstm_414/while/lstm_cell_549/ReluRelu:sequential_138/lstm_414/while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_138/lstm_414/while/lstm_cell_549/mul_1Mul7sequential_138/lstm_414/while/lstm_cell_549/Sigmoid:y:0>sequential_138/lstm_414/while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_138/lstm_414/while/lstm_cell_549/add_1AddV23sequential_138/lstm_414/while/lstm_cell_549/mul:z:05sequential_138/lstm_414/while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_138/lstm_414/while/lstm_cell_549/Sigmoid_2Sigmoid:sequential_138/lstm_414/while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_138/lstm_414/while/lstm_cell_549/Relu_1Relu5sequential_138/lstm_414/while/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_138/lstm_414/while/lstm_cell_549/mul_2Mul9sequential_138/lstm_414/while/lstm_cell_549/Sigmoid_2:y:0@sequential_138/lstm_414/while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_138/lstm_414/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_138_lstm_414_while_placeholder_1)sequential_138_lstm_414_while_placeholder5sequential_138/lstm_414/while/lstm_cell_549/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_138/lstm_414/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_138/lstm_414/while/addAddV2)sequential_138_lstm_414_while_placeholder,sequential_138/lstm_414/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_138/lstm_414/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_138/lstm_414/while/add_1AddV2Hsequential_138_lstm_414_while_sequential_138_lstm_414_while_loop_counter.sequential_138/lstm_414/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_138/lstm_414/while/IdentityIdentity'sequential_138/lstm_414/while/add_1:z:0#^sequential_138/lstm_414/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_414/while/Identity_1IdentityNsequential_138_lstm_414_while_sequential_138_lstm_414_while_maximum_iterations#^sequential_138/lstm_414/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_414/while/Identity_2Identity%sequential_138/lstm_414/while/add:z:0#^sequential_138/lstm_414/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_414/while/Identity_3IdentityRsequential_138/lstm_414/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_138/lstm_414/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_414/while/Identity_4Identity5sequential_138/lstm_414/while/lstm_cell_549/mul_2:z:0#^sequential_138/lstm_414/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_138/lstm_414/while/Identity_5Identity5sequential_138/lstm_414/while/lstm_cell_549/add_1:z:0#^sequential_138/lstm_414/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_138/lstm_414/while/NoOpNoOpC^sequential_138/lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOpB^sequential_138/lstm_414/while/lstm_cell_549/MatMul/ReadVariableOpD^sequential_138/lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_138_lstm_414_while_identity/sequential_138/lstm_414/while/Identity:output:0"]
(sequential_138_lstm_414_while_identity_11sequential_138/lstm_414/while/Identity_1:output:0"]
(sequential_138_lstm_414_while_identity_21sequential_138/lstm_414/while/Identity_2:output:0"]
(sequential_138_lstm_414_while_identity_31sequential_138/lstm_414/while/Identity_3:output:0"]
(sequential_138_lstm_414_while_identity_41sequential_138/lstm_414/while/Identity_4:output:0"]
(sequential_138_lstm_414_while_identity_51sequential_138/lstm_414/while/Identity_5:output:0"?
Ksequential_138_lstm_414_while_lstm_cell_549_biasadd_readvariableop_resourceMsequential_138_lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0"?
Lsequential_138_lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resourceNsequential_138_lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0"?
Jsequential_138_lstm_414_while_lstm_cell_549_matmul_readvariableop_resourceLsequential_138_lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0"?
Esequential_138_lstm_414_while_sequential_138_lstm_414_strided_slice_1Gsequential_138_lstm_414_while_sequential_138_lstm_414_strided_slice_1_0"?
?sequential_138_lstm_414_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_414_tensorarrayunstack_tensorlistfromtensor?sequential_138_lstm_414_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_414_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_138/lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOpBsequential_138/lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp2?
Asequential_138/lstm_414/while/lstm_cell_549/MatMul/ReadVariableOpAsequential_138/lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp2?
Csequential_138/lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOpCsequential_138/lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3338874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3338874___redundant_placeholder05
1while_while_cond_3338874___redundant_placeholder15
1while_while_cond_3338874___redundant_placeholder25
1while_while_cond_3338874___redundant_placeholder3
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
/__inference_lstm_cell_551_layer_call_fn_3339208

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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334856o
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337441
inputs_0?
,lstm_cell_549_matmul_readvariableop_resource:	?A
.lstm_cell_549_matmul_1_readvariableop_resource:	d?<
-lstm_cell_549_biasadd_readvariableop_resource:	?
identity??$lstm_cell_549/BiasAdd/ReadVariableOp?#lstm_cell_549/MatMul/ReadVariableOp?%lstm_cell_549/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_549/MatMul/ReadVariableOpReadVariableOp,lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_549/MatMulMatMulstrided_slice_2:output:0+lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_549/MatMul_1MatMulzeros:output:0-lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_549/addAddV2lstm_cell_549/MatMul:product:0 lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_549/BiasAddBiasAddlstm_cell_549/add:z:0,lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_549/splitSplit&lstm_cell_549/split/split_dim:output:0lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_549/SigmoidSigmoidlstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_1Sigmoidlstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_549/mulMullstm_cell_549/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_549/ReluRelulstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_1Mullstm_cell_549/Sigmoid:y:0 lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_549/add_1AddV2lstm_cell_549/mul:z:0lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_2Sigmoidlstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_549/Relu_1Relulstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_2Mullstm_cell_549/Sigmoid_2:y:0"lstm_cell_549/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_549_matmul_readvariableop_resource.lstm_cell_549_matmul_1_readvariableop_resource-lstm_cell_549_biasadd_readvariableop_resource*
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
while_body_3337357*
condR
while_cond_3337356*K
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
NoOpNoOp%^lstm_cell_549/BiasAdd/ReadVariableOp$^lstm_cell_549/MatMul/ReadVariableOp&^lstm_cell_549/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_549/BiasAdd/ReadVariableOp$lstm_cell_549/BiasAdd/ReadVariableOp2J
#lstm_cell_549/MatMul/ReadVariableOp#lstm_cell_549/MatMul/ReadVariableOp2N
%lstm_cell_549/MatMul_1/ReadVariableOp%lstm_cell_549/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_416_layer_call_and_return_conditional_losses_3334984

inputs'
lstm_cell_551_3334902:2('
lstm_cell_551_3334904:
(#
lstm_cell_551_3334906:(
identity??%lstm_cell_551/StatefulPartitionedCall?while;
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
%lstm_cell_551/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_551_3334902lstm_cell_551_3334904lstm_cell_551_3334906*
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334856n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_551_3334902lstm_cell_551_3334904lstm_cell_551_3334906*
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
while_body_3334915*
condR
while_cond_3334914*K
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
NoOpNoOp&^lstm_cell_551/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_551/StatefulPartitionedCall%lstm_cell_551/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3339240

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
?8
?
while_body_3337214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_549_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_549_matmul_readvariableop_resource:	?G
4while_lstm_cell_549_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_549_biasadd_readvariableop_resource:	???*while/lstm_cell_549/BiasAdd/ReadVariableOp?)while/lstm_cell_549/MatMul/ReadVariableOp?+while/lstm_cell_549/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_549/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_549/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_549/addAddV2$while/lstm_cell_549/MatMul:product:0&while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_549/BiasAddBiasAddwhile/lstm_cell_549/add:z:02while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_549/splitSplit,while/lstm_cell_549/split/split_dim:output:0$while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_549/SigmoidSigmoid"while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_1Sigmoid"while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mulMul!while/lstm_cell_549/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_549/ReluRelu"while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_1Mulwhile/lstm_cell_549/Sigmoid:y:0&while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/add_1AddV2while/lstm_cell_549/mul:z:0while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_2Sigmoid"while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_549/Relu_1Reluwhile/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_2Mul!while/lstm_cell_549/Sigmoid_2:y:0(while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_549/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_549/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_549/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_549/BiasAdd/ReadVariableOp*^while/lstm_cell_549/MatMul/ReadVariableOp,^while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_549_biasadd_readvariableop_resource5while_lstm_cell_549_biasadd_readvariableop_resource_0"n
4while_lstm_cell_549_matmul_1_readvariableop_resource6while_lstm_cell_549_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_549_matmul_readvariableop_resource4while_lstm_cell_549_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_549/BiasAdd/ReadVariableOp*while/lstm_cell_549/BiasAdd/ReadVariableOp2V
)while/lstm_cell_549/MatMul/ReadVariableOp)while/lstm_cell_549/MatMul/ReadVariableOp2Z
+while/lstm_cell_549/MatMul_1/ReadVariableOp+while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
+__inference_dense_138_layer_call_fn_3338968

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
F__inference_dense_138_layer_call_and_return_conditional_losses_3335460o
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
/__inference_lstm_cell_550_layer_call_fn_3339110

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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334506o
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
?
*__inference_lstm_415_layer_call_fn_3337749
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3334634|
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
while_cond_3338115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3338115___redundant_placeholder05
1while_while_cond_3338115___redundant_placeholder15
1while_while_cond_3338115___redundant_placeholder25
1while_while_cond_3338115___redundant_placeholder3
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
while_cond_3334564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3334564___redundant_placeholder05
1while_while_cond_3334564___redundant_placeholder15
1while_while_cond_3334564___redundant_placeholder25
1while_while_cond_3334564___redundant_placeholder3
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
/__inference_lstm_cell_549_layer_call_fn_3338995

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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334010o
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
?

?
0__inference_sequential_138_layer_call_fn_3336257

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
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336056o
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
?K
?
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338673
inputs_0>
,lstm_cell_551_matmul_readvariableop_resource:2(@
.lstm_cell_551_matmul_1_readvariableop_resource:
(;
-lstm_cell_551_biasadd_readvariableop_resource:(
identity??$lstm_cell_551/BiasAdd/ReadVariableOp?#lstm_cell_551/MatMul/ReadVariableOp?%lstm_cell_551/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_551/MatMul/ReadVariableOpReadVariableOp,lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_551/MatMulMatMulstrided_slice_2:output:0+lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_551/MatMul_1MatMulzeros:output:0-lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_551/addAddV2lstm_cell_551/MatMul:product:0 lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_551/BiasAddBiasAddlstm_cell_551/add:z:0,lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_551/splitSplit&lstm_cell_551/split/split_dim:output:0lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_551/SigmoidSigmoidlstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_1Sigmoidlstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_551/mulMullstm_cell_551/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_551/ReluRelulstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_1Mullstm_cell_551/Sigmoid:y:0 lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_551/add_1AddV2lstm_cell_551/mul:z:0lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_2Sigmoidlstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_551/Relu_1Relulstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_2Mullstm_cell_551/Sigmoid_2:y:0"lstm_cell_551/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_551_matmul_readvariableop_resource.lstm_cell_551_matmul_1_readvariableop_resource-lstm_cell_551_biasadd_readvariableop_resource*
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
while_body_3338589*
condR
while_cond_3338588*K
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
NoOpNoOp%^lstm_cell_551/BiasAdd/ReadVariableOp$^lstm_cell_551/MatMul/ReadVariableOp&^lstm_cell_551/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_551/BiasAdd/ReadVariableOp$lstm_cell_551/BiasAdd/ReadVariableOp2J
#lstm_cell_551/MatMul/ReadVariableOp#lstm_cell_551/MatMul/ReadVariableOp2N
%lstm_cell_551/MatMul_1/ReadVariableOp%lstm_cell_551/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_3338731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3338731___redundant_placeholder05
1while_while_cond_3338731___redundant_placeholder15
1while_while_cond_3338731___redundant_placeholder25
1while_while_cond_3338731___redundant_placeholder3
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
F__inference_dense_138_layer_call_and_return_conditional_losses_3338978

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
while_body_3335574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_551_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_551_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_551_matmul_readvariableop_resource:2(F
4while_lstm_cell_551_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_551_biasadd_readvariableop_resource:(??*while/lstm_cell_551/BiasAdd/ReadVariableOp?)while/lstm_cell_551/MatMul/ReadVariableOp?+while/lstm_cell_551/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_551/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_551/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_551/addAddV2$while/lstm_cell_551/MatMul:product:0&while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_551/BiasAddBiasAddwhile/lstm_cell_551/add:z:02while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_551/splitSplit,while/lstm_cell_551/split/split_dim:output:0$while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_551/SigmoidSigmoid"while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_1Sigmoid"while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mulMul!while/lstm_cell_551/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_551/ReluRelu"while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_1Mulwhile/lstm_cell_551/Sigmoid:y:0&while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/add_1AddV2while/lstm_cell_551/mul:z:0while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_2Sigmoid"while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_551/Relu_1Reluwhile/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_2Mul!while/lstm_cell_551/Sigmoid_2:y:0(while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_551/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_551/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_551/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_551/BiasAdd/ReadVariableOp*^while/lstm_cell_551/MatMul/ReadVariableOp,^while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_551_biasadd_readvariableop_resource5while_lstm_cell_551_biasadd_readvariableop_resource_0"n
4while_lstm_cell_551_matmul_1_readvariableop_resource6while_lstm_cell_551_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_551_matmul_readvariableop_resource4while_lstm_cell_551_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_551/BiasAdd/ReadVariableOp*while/lstm_cell_551/BiasAdd/ReadVariableOp2V
)while/lstm_cell_551/MatMul/ReadVariableOp)while/lstm_cell_551/MatMul/ReadVariableOp2Z
+while/lstm_cell_551/MatMul_1/ReadVariableOp+while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_551_layer_call_fn_3339191

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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334710o
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
while_body_3335058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_549_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_549_matmul_readvariableop_resource:	?G
4while_lstm_cell_549_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_549_biasadd_readvariableop_resource:	???*while/lstm_cell_549/BiasAdd/ReadVariableOp?)while/lstm_cell_549/MatMul/ReadVariableOp?+while/lstm_cell_549/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_549/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_549/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_549/addAddV2$while/lstm_cell_549/MatMul:product:0&while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_549/BiasAddBiasAddwhile/lstm_cell_549/add:z:02while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_549/splitSplit,while/lstm_cell_549/split/split_dim:output:0$while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_549/SigmoidSigmoid"while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_1Sigmoid"while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mulMul!while/lstm_cell_549/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_549/ReluRelu"while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_1Mulwhile/lstm_cell_549/Sigmoid:y:0&while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/add_1AddV2while/lstm_cell_549/mul:z:0while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_2Sigmoid"while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_549/Relu_1Reluwhile/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_2Mul!while/lstm_cell_549/Sigmoid_2:y:0(while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_549/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_549/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_549/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_549/BiasAdd/ReadVariableOp*^while/lstm_cell_549/MatMul/ReadVariableOp,^while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_549_biasadd_readvariableop_resource5while_lstm_cell_549_biasadd_readvariableop_resource_0"n
4while_lstm_cell_549_matmul_1_readvariableop_resource6while_lstm_cell_549_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_549_matmul_readvariableop_resource4while_lstm_cell_549_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_549/BiasAdd/ReadVariableOp*while/lstm_cell_549/BiasAdd/ReadVariableOp2V
)while/lstm_cell_549/MatMul/ReadVariableOp)while/lstm_cell_549/MatMul/ReadVariableOp2Z
+while/lstm_cell_549/MatMul_1/ReadVariableOp+while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3334214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3334214___redundant_placeholder05
1while_while_cond_3334214___redundant_placeholder15
1while_while_cond_3334214___redundant_placeholder25
1while_while_cond_3334214___redundant_placeholder3
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335292

inputs?
,lstm_cell_550_matmul_readvariableop_resource:	d?A
.lstm_cell_550_matmul_1_readvariableop_resource:	2?<
-lstm_cell_550_biasadd_readvariableop_resource:	?
identity??$lstm_cell_550/BiasAdd/ReadVariableOp?#lstm_cell_550/MatMul/ReadVariableOp?%lstm_cell_550/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_550/MatMul/ReadVariableOpReadVariableOp,lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_550/MatMulMatMulstrided_slice_2:output:0+lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_550/MatMul_1MatMulzeros:output:0-lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_550/addAddV2lstm_cell_550/MatMul:product:0 lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_550/BiasAddBiasAddlstm_cell_550/add:z:0,lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_550/splitSplit&lstm_cell_550/split/split_dim:output:0lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_550/SigmoidSigmoidlstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_1Sigmoidlstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_550/mulMullstm_cell_550/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_550/ReluRelulstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_1Mullstm_cell_550/Sigmoid:y:0 lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_550/add_1AddV2lstm_cell_550/mul:z:0lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_2Sigmoidlstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_550/Relu_1Relulstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_2Mullstm_cell_550/Sigmoid_2:y:0"lstm_cell_550/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_550_matmul_readvariableop_resource.lstm_cell_550_matmul_1_readvariableop_resource-lstm_cell_550_biasadd_readvariableop_resource*
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
while_body_3335208*
condR
while_cond_3335207*K
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
NoOpNoOp%^lstm_cell_550/BiasAdd/ReadVariableOp$^lstm_cell_550/MatMul/ReadVariableOp&^lstm_cell_550/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_550/BiasAdd/ReadVariableOp$lstm_cell_550/BiasAdd/ReadVariableOp2J
#lstm_cell_550/MatMul/ReadVariableOp#lstm_cell_550/MatMul/ReadVariableOp2N
%lstm_cell_550/MatMul_1/ReadVariableOp%lstm_cell_550/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_416_while_cond_3337020.
*lstm_416_while_lstm_416_while_loop_counter4
0lstm_416_while_lstm_416_while_maximum_iterations
lstm_416_while_placeholder 
lstm_416_while_placeholder_1 
lstm_416_while_placeholder_2 
lstm_416_while_placeholder_30
,lstm_416_while_less_lstm_416_strided_slice_1G
Clstm_416_while_lstm_416_while_cond_3337020___redundant_placeholder0G
Clstm_416_while_lstm_416_while_cond_3337020___redundant_placeholder1G
Clstm_416_while_lstm_416_while_cond_3337020___redundant_placeholder2G
Clstm_416_while_lstm_416_while_cond_3337020___redundant_placeholder3
lstm_416_while_identity
?
lstm_416/while/LessLesslstm_416_while_placeholder,lstm_416_while_less_lstm_416_strided_slice_1*
T0*
_output_shapes
: ]
lstm_416/while/IdentityIdentitylstm_416/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_416_while_identity lstm_416/while/Identity:output:0*(
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
while_cond_3337642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3337642___redundant_placeholder05
1while_while_cond_3337642___redundant_placeholder15
1while_while_cond_3337642___redundant_placeholder25
1while_while_cond_3337642___redundant_placeholder3
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
?
E__inference_lstm_415_layer_call_and_return_conditional_losses_3334443

inputs(
lstm_cell_550_3334361:	d?(
lstm_cell_550_3334363:	2?$
lstm_cell_550_3334365:	?
identity??%lstm_cell_550/StatefulPartitionedCall?while;
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
%lstm_cell_550/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_550_3334361lstm_cell_550_3334363lstm_cell_550_3334365*
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334360n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_550_3334361lstm_cell_550_3334363lstm_cell_550_3334365*
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
while_body_3334374*
condR
while_cond_3334373*K
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
NoOpNoOp&^lstm_cell_550/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_550/StatefulPartitionedCall%lstm_cell_550/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338200

inputs?
,lstm_cell_550_matmul_readvariableop_resource:	d?A
.lstm_cell_550_matmul_1_readvariableop_resource:	2?<
-lstm_cell_550_biasadd_readvariableop_resource:	?
identity??$lstm_cell_550/BiasAdd/ReadVariableOp?#lstm_cell_550/MatMul/ReadVariableOp?%lstm_cell_550/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_550/MatMul/ReadVariableOpReadVariableOp,lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_550/MatMulMatMulstrided_slice_2:output:0+lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_550/MatMul_1MatMulzeros:output:0-lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_550/addAddV2lstm_cell_550/MatMul:product:0 lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_550/BiasAddBiasAddlstm_cell_550/add:z:0,lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_550/splitSplit&lstm_cell_550/split/split_dim:output:0lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_550/SigmoidSigmoidlstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_1Sigmoidlstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_550/mulMullstm_cell_550/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_550/ReluRelulstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_1Mullstm_cell_550/Sigmoid:y:0 lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_550/add_1AddV2lstm_cell_550/mul:z:0lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_2Sigmoidlstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_550/Relu_1Relulstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_2Mullstm_cell_550/Sigmoid_2:y:0"lstm_cell_550/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_550_matmul_readvariableop_resource.lstm_cell_550_matmul_1_readvariableop_resource-lstm_cell_550_biasadd_readvariableop_resource*
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
while_body_3338116*
condR
while_cond_3338115*K
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
NoOpNoOp%^lstm_cell_550/BiasAdd/ReadVariableOp$^lstm_cell_550/MatMul/ReadVariableOp&^lstm_cell_550/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_550/BiasAdd/ReadVariableOp$lstm_cell_550/BiasAdd/ReadVariableOp2J
#lstm_cell_550/MatMul/ReadVariableOp#lstm_cell_550/MatMul/ReadVariableOp2N
%lstm_cell_550/MatMul_1/ReadVariableOp%lstm_cell_550/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?T
?
*sequential_138_lstm_416_while_body_3333853L
Hsequential_138_lstm_416_while_sequential_138_lstm_416_while_loop_counterR
Nsequential_138_lstm_416_while_sequential_138_lstm_416_while_maximum_iterations-
)sequential_138_lstm_416_while_placeholder/
+sequential_138_lstm_416_while_placeholder_1/
+sequential_138_lstm_416_while_placeholder_2/
+sequential_138_lstm_416_while_placeholder_3K
Gsequential_138_lstm_416_while_sequential_138_lstm_416_strided_slice_1_0?
?sequential_138_lstm_416_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_416_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_138_lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0:2(`
Nsequential_138_lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0:
([
Msequential_138_lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0:(*
&sequential_138_lstm_416_while_identity,
(sequential_138_lstm_416_while_identity_1,
(sequential_138_lstm_416_while_identity_2,
(sequential_138_lstm_416_while_identity_3,
(sequential_138_lstm_416_while_identity_4,
(sequential_138_lstm_416_while_identity_5I
Esequential_138_lstm_416_while_sequential_138_lstm_416_strided_slice_1?
?sequential_138_lstm_416_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_416_tensorarrayunstack_tensorlistfromtensor\
Jsequential_138_lstm_416_while_lstm_cell_551_matmul_readvariableop_resource:2(^
Lsequential_138_lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource:
(Y
Ksequential_138_lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource:(??Bsequential_138/lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp?Asequential_138/lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp?Csequential_138/lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp?
Osequential_138/lstm_416/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_138/lstm_416/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_138_lstm_416_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_416_tensorarrayunstack_tensorlistfromtensor_0)sequential_138_lstm_416_while_placeholderXsequential_138/lstm_416/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_138/lstm_416/while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOpLsequential_138_lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_138/lstm_416/while/lstm_cell_551/MatMulMatMulHsequential_138/lstm_416/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_138/lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_138/lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOpNsequential_138_lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_138/lstm_416/while/lstm_cell_551/MatMul_1MatMul+sequential_138_lstm_416_while_placeholder_2Ksequential_138/lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_138/lstm_416/while/lstm_cell_551/addAddV2<sequential_138/lstm_416/while/lstm_cell_551/MatMul:product:0>sequential_138/lstm_416/while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_138/lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOpMsequential_138_lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_138/lstm_416/while/lstm_cell_551/BiasAddBiasAdd3sequential_138/lstm_416/while/lstm_cell_551/add:z:0Jsequential_138/lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_138/lstm_416/while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_138/lstm_416/while/lstm_cell_551/splitSplitDsequential_138/lstm_416/while/lstm_cell_551/split/split_dim:output:0<sequential_138/lstm_416/while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_138/lstm_416/while/lstm_cell_551/SigmoidSigmoid:sequential_138/lstm_416/while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_138/lstm_416/while/lstm_cell_551/Sigmoid_1Sigmoid:sequential_138/lstm_416/while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_138/lstm_416/while/lstm_cell_551/mulMul9sequential_138/lstm_416/while/lstm_cell_551/Sigmoid_1:y:0+sequential_138_lstm_416_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_138/lstm_416/while/lstm_cell_551/ReluRelu:sequential_138/lstm_416/while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_138/lstm_416/while/lstm_cell_551/mul_1Mul7sequential_138/lstm_416/while/lstm_cell_551/Sigmoid:y:0>sequential_138/lstm_416/while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_138/lstm_416/while/lstm_cell_551/add_1AddV23sequential_138/lstm_416/while/lstm_cell_551/mul:z:05sequential_138/lstm_416/while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_138/lstm_416/while/lstm_cell_551/Sigmoid_2Sigmoid:sequential_138/lstm_416/while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_138/lstm_416/while/lstm_cell_551/Relu_1Relu5sequential_138/lstm_416/while/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_138/lstm_416/while/lstm_cell_551/mul_2Mul9sequential_138/lstm_416/while/lstm_cell_551/Sigmoid_2:y:0@sequential_138/lstm_416/while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_138/lstm_416/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_138_lstm_416_while_placeholder_1)sequential_138_lstm_416_while_placeholder5sequential_138/lstm_416/while/lstm_cell_551/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_138/lstm_416/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_138/lstm_416/while/addAddV2)sequential_138_lstm_416_while_placeholder,sequential_138/lstm_416/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_138/lstm_416/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_138/lstm_416/while/add_1AddV2Hsequential_138_lstm_416_while_sequential_138_lstm_416_while_loop_counter.sequential_138/lstm_416/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_138/lstm_416/while/IdentityIdentity'sequential_138/lstm_416/while/add_1:z:0#^sequential_138/lstm_416/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_416/while/Identity_1IdentityNsequential_138_lstm_416_while_sequential_138_lstm_416_while_maximum_iterations#^sequential_138/lstm_416/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_416/while/Identity_2Identity%sequential_138/lstm_416/while/add:z:0#^sequential_138/lstm_416/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_416/while/Identity_3IdentityRsequential_138/lstm_416/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_138/lstm_416/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_416/while/Identity_4Identity5sequential_138/lstm_416/while/lstm_cell_551/mul_2:z:0#^sequential_138/lstm_416/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_138/lstm_416/while/Identity_5Identity5sequential_138/lstm_416/while/lstm_cell_551/add_1:z:0#^sequential_138/lstm_416/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_138/lstm_416/while/NoOpNoOpC^sequential_138/lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOpB^sequential_138/lstm_416/while/lstm_cell_551/MatMul/ReadVariableOpD^sequential_138/lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_138_lstm_416_while_identity/sequential_138/lstm_416/while/Identity:output:0"]
(sequential_138_lstm_416_while_identity_11sequential_138/lstm_416/while/Identity_1:output:0"]
(sequential_138_lstm_416_while_identity_21sequential_138/lstm_416/while/Identity_2:output:0"]
(sequential_138_lstm_416_while_identity_31sequential_138/lstm_416/while/Identity_3:output:0"]
(sequential_138_lstm_416_while_identity_41sequential_138/lstm_416/while/Identity_4:output:0"]
(sequential_138_lstm_416_while_identity_51sequential_138/lstm_416/while/Identity_5:output:0"?
Ksequential_138_lstm_416_while_lstm_cell_551_biasadd_readvariableop_resourceMsequential_138_lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0"?
Lsequential_138_lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resourceNsequential_138_lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0"?
Jsequential_138_lstm_416_while_lstm_cell_551_matmul_readvariableop_resourceLsequential_138_lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0"?
Esequential_138_lstm_416_while_sequential_138_lstm_416_strided_slice_1Gsequential_138_lstm_416_while_sequential_138_lstm_416_strided_slice_1_0"?
?sequential_138_lstm_416_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_416_tensorarrayunstack_tensorlistfromtensor?sequential_138_lstm_416_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_416_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_138/lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOpBsequential_138/lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp2?
Asequential_138/lstm_416/while/lstm_cell_551/MatMul/ReadVariableOpAsequential_138/lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp2?
Csequential_138/lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOpCsequential_138/lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_138_lstm_416_while_cond_3333852L
Hsequential_138_lstm_416_while_sequential_138_lstm_416_while_loop_counterR
Nsequential_138_lstm_416_while_sequential_138_lstm_416_while_maximum_iterations-
)sequential_138_lstm_416_while_placeholder/
+sequential_138_lstm_416_while_placeholder_1/
+sequential_138_lstm_416_while_placeholder_2/
+sequential_138_lstm_416_while_placeholder_3N
Jsequential_138_lstm_416_while_less_sequential_138_lstm_416_strided_slice_1e
asequential_138_lstm_416_while_sequential_138_lstm_416_while_cond_3333852___redundant_placeholder0e
asequential_138_lstm_416_while_sequential_138_lstm_416_while_cond_3333852___redundant_placeholder1e
asequential_138_lstm_416_while_sequential_138_lstm_416_while_cond_3333852___redundant_placeholder2e
asequential_138_lstm_416_while_sequential_138_lstm_416_while_cond_3333852___redundant_placeholder3*
&sequential_138_lstm_416_while_identity
?
"sequential_138/lstm_416/while/LessLess)sequential_138_lstm_416_while_placeholderJsequential_138_lstm_416_while_less_sequential_138_lstm_416_strided_slice_1*
T0*
_output_shapes
: {
&sequential_138/lstm_416/while/IdentityIdentity&sequential_138/lstm_416/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_138_lstm_416_while_identity/sequential_138/lstm_416/while/Identity:output:0*(
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
while_cond_3335207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3335207___redundant_placeholder05
1while_while_cond_3335207___redundant_placeholder15
1while_while_cond_3335207___redundant_placeholder25
1while_while_cond_3335207___redundant_placeholder3
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338343

inputs?
,lstm_cell_550_matmul_readvariableop_resource:	d?A
.lstm_cell_550_matmul_1_readvariableop_resource:	2?<
-lstm_cell_550_biasadd_readvariableop_resource:	?
identity??$lstm_cell_550/BiasAdd/ReadVariableOp?#lstm_cell_550/MatMul/ReadVariableOp?%lstm_cell_550/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_550/MatMul/ReadVariableOpReadVariableOp,lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_550/MatMulMatMulstrided_slice_2:output:0+lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_550/MatMul_1MatMulzeros:output:0-lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_550/addAddV2lstm_cell_550/MatMul:product:0 lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_550/BiasAddBiasAddlstm_cell_550/add:z:0,lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_550/splitSplit&lstm_cell_550/split/split_dim:output:0lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_550/SigmoidSigmoidlstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_1Sigmoidlstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_550/mulMullstm_cell_550/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_550/ReluRelulstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_1Mullstm_cell_550/Sigmoid:y:0 lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_550/add_1AddV2lstm_cell_550/mul:z:0lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_2Sigmoidlstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_550/Relu_1Relulstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_2Mullstm_cell_550/Sigmoid_2:y:0"lstm_cell_550/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_550_matmul_readvariableop_resource.lstm_cell_550_matmul_1_readvariableop_resource-lstm_cell_550_biasadd_readvariableop_resource*
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
while_body_3338259*
condR
while_cond_3338258*K
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
NoOpNoOp%^lstm_cell_550/BiasAdd/ReadVariableOp$^lstm_cell_550/MatMul/ReadVariableOp&^lstm_cell_550/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_550/BiasAdd/ReadVariableOp$lstm_cell_550/BiasAdd/ReadVariableOp2J
#lstm_cell_550/MatMul/ReadVariableOp#lstm_cell_550/MatMul/ReadVariableOp2N
%lstm_cell_550/MatMul_1/ReadVariableOp%lstm_cell_550/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3339044

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
while_body_3335904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_549_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_549_matmul_readvariableop_resource:	?G
4while_lstm_cell_549_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_549_biasadd_readvariableop_resource:	???*while/lstm_cell_549/BiasAdd/ReadVariableOp?)while/lstm_cell_549/MatMul/ReadVariableOp?+while/lstm_cell_549/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_549/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_549/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_549/addAddV2$while/lstm_cell_549/MatMul:product:0&while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_549/BiasAddBiasAddwhile/lstm_cell_549/add:z:02while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_549/splitSplit,while/lstm_cell_549/split/split_dim:output:0$while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_549/SigmoidSigmoid"while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_1Sigmoid"while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mulMul!while/lstm_cell_549/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_549/ReluRelu"while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_1Mulwhile/lstm_cell_549/Sigmoid:y:0&while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/add_1AddV2while/lstm_cell_549/mul:z:0while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_2Sigmoid"while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_549/Relu_1Reluwhile/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_2Mul!while/lstm_cell_549/Sigmoid_2:y:0(while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_549/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_549/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_549/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_549/BiasAdd/ReadVariableOp*^while/lstm_cell_549/MatMul/ReadVariableOp,^while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_549_biasadd_readvariableop_resource5while_lstm_cell_549_biasadd_readvariableop_resource_0"n
4while_lstm_cell_549_matmul_1_readvariableop_resource6while_lstm_cell_549_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_549_matmul_readvariableop_resource4while_lstm_cell_549_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_549/BiasAdd/ReadVariableOp*while/lstm_cell_549/BiasAdd/ReadVariableOp2V
)while/lstm_cell_549/MatMul/ReadVariableOp)while/lstm_cell_549/MatMul/ReadVariableOp2Z
+while/lstm_cell_549/MatMul_1/ReadVariableOp+while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338530
inputs_0>
,lstm_cell_551_matmul_readvariableop_resource:2(@
.lstm_cell_551_matmul_1_readvariableop_resource:
(;
-lstm_cell_551_biasadd_readvariableop_resource:(
identity??$lstm_cell_551/BiasAdd/ReadVariableOp?#lstm_cell_551/MatMul/ReadVariableOp?%lstm_cell_551/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_551/MatMul/ReadVariableOpReadVariableOp,lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_551/MatMulMatMulstrided_slice_2:output:0+lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_551/MatMul_1MatMulzeros:output:0-lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_551/addAddV2lstm_cell_551/MatMul:product:0 lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_551/BiasAddBiasAddlstm_cell_551/add:z:0,lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_551/splitSplit&lstm_cell_551/split/split_dim:output:0lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_551/SigmoidSigmoidlstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_1Sigmoidlstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_551/mulMullstm_cell_551/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_551/ReluRelulstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_1Mullstm_cell_551/Sigmoid:y:0 lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_551/add_1AddV2lstm_cell_551/mul:z:0lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_2Sigmoidlstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_551/Relu_1Relulstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_2Mullstm_cell_551/Sigmoid_2:y:0"lstm_cell_551/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_551_matmul_readvariableop_resource.lstm_cell_551_matmul_1_readvariableop_resource-lstm_cell_551_biasadd_readvariableop_resource*
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
while_body_3338446*
condR
while_cond_3338445*K
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
NoOpNoOp%^lstm_cell_551/BiasAdd/ReadVariableOp$^lstm_cell_551/MatMul/ReadVariableOp&^lstm_cell_551/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_551/BiasAdd/ReadVariableOp$lstm_cell_551/BiasAdd/ReadVariableOp2J
#lstm_cell_551/MatMul/ReadVariableOp#lstm_cell_551/MatMul/ReadVariableOp2N
%lstm_cell_551/MatMul_1/ReadVariableOp%lstm_cell_551/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337298
inputs_0?
,lstm_cell_549_matmul_readvariableop_resource:	?A
.lstm_cell_549_matmul_1_readvariableop_resource:	d?<
-lstm_cell_549_biasadd_readvariableop_resource:	?
identity??$lstm_cell_549/BiasAdd/ReadVariableOp?#lstm_cell_549/MatMul/ReadVariableOp?%lstm_cell_549/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_549/MatMul/ReadVariableOpReadVariableOp,lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_549/MatMulMatMulstrided_slice_2:output:0+lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_549/MatMul_1MatMulzeros:output:0-lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_549/addAddV2lstm_cell_549/MatMul:product:0 lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_549/BiasAddBiasAddlstm_cell_549/add:z:0,lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_549/splitSplit&lstm_cell_549/split/split_dim:output:0lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_549/SigmoidSigmoidlstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_1Sigmoidlstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_549/mulMullstm_cell_549/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_549/ReluRelulstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_1Mullstm_cell_549/Sigmoid:y:0 lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_549/add_1AddV2lstm_cell_549/mul:z:0lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_2Sigmoidlstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_549/Relu_1Relulstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_2Mullstm_cell_549/Sigmoid_2:y:0"lstm_cell_549/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_549_matmul_readvariableop_resource.lstm_cell_549_matmul_1_readvariableop_resource-lstm_cell_549_biasadd_readvariableop_resource*
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
while_body_3337214*
condR
while_cond_3337213*K
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
NoOpNoOp%^lstm_cell_549/BiasAdd/ReadVariableOp$^lstm_cell_549/MatMul/ReadVariableOp&^lstm_cell_549/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_549/BiasAdd/ReadVariableOp$lstm_cell_549/BiasAdd/ReadVariableOp2J
#lstm_cell_549/MatMul/ReadVariableOp#lstm_cell_549/MatMul/ReadVariableOp2N
%lstm_cell_549/MatMul_1/ReadVariableOp%lstm_cell_549/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_416_while_cond_3336593.
*lstm_416_while_lstm_416_while_loop_counter4
0lstm_416_while_lstm_416_while_maximum_iterations
lstm_416_while_placeholder 
lstm_416_while_placeholder_1 
lstm_416_while_placeholder_2 
lstm_416_while_placeholder_30
,lstm_416_while_less_lstm_416_strided_slice_1G
Clstm_416_while_lstm_416_while_cond_3336593___redundant_placeholder0G
Clstm_416_while_lstm_416_while_cond_3336593___redundant_placeholder1G
Clstm_416_while_lstm_416_while_cond_3336593___redundant_placeholder2G
Clstm_416_while_lstm_416_while_cond_3336593___redundant_placeholder3
lstm_416_while_identity
?
lstm_416/while/LessLesslstm_416_while_placeholder,lstm_416_while_less_lstm_416_strided_slice_1*
T0*
_output_shapes
: ]
lstm_416/while/IdentityIdentitylstm_416/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_416_while_identity lstm_416/while/Identity:output:0*(
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
while_cond_3334914
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3334914___redundant_placeholder05
1while_while_cond_3334914___redundant_placeholder15
1while_while_cond_3334914___redundant_placeholder25
1while_while_cond_3334914___redundant_placeholder3
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
*sequential_138_lstm_415_while_body_3333714L
Hsequential_138_lstm_415_while_sequential_138_lstm_415_while_loop_counterR
Nsequential_138_lstm_415_while_sequential_138_lstm_415_while_maximum_iterations-
)sequential_138_lstm_415_while_placeholder/
+sequential_138_lstm_415_while_placeholder_1/
+sequential_138_lstm_415_while_placeholder_2/
+sequential_138_lstm_415_while_placeholder_3K
Gsequential_138_lstm_415_while_sequential_138_lstm_415_strided_slice_1_0?
?sequential_138_lstm_415_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_415_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_138_lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0:	d?a
Nsequential_138_lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?\
Msequential_138_lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0:	?*
&sequential_138_lstm_415_while_identity,
(sequential_138_lstm_415_while_identity_1,
(sequential_138_lstm_415_while_identity_2,
(sequential_138_lstm_415_while_identity_3,
(sequential_138_lstm_415_while_identity_4,
(sequential_138_lstm_415_while_identity_5I
Esequential_138_lstm_415_while_sequential_138_lstm_415_strided_slice_1?
?sequential_138_lstm_415_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_415_tensorarrayunstack_tensorlistfromtensor]
Jsequential_138_lstm_415_while_lstm_cell_550_matmul_readvariableop_resource:	d?_
Lsequential_138_lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource:	2?Z
Ksequential_138_lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource:	???Bsequential_138/lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp?Asequential_138/lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp?Csequential_138/lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp?
Osequential_138/lstm_415/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_138/lstm_415/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_138_lstm_415_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_415_tensorarrayunstack_tensorlistfromtensor_0)sequential_138_lstm_415_while_placeholderXsequential_138/lstm_415/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_138/lstm_415/while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOpLsequential_138_lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_138/lstm_415/while/lstm_cell_550/MatMulMatMulHsequential_138/lstm_415/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_138/lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_138/lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOpNsequential_138_lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_138/lstm_415/while/lstm_cell_550/MatMul_1MatMul+sequential_138_lstm_415_while_placeholder_2Ksequential_138/lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_138/lstm_415/while/lstm_cell_550/addAddV2<sequential_138/lstm_415/while/lstm_cell_550/MatMul:product:0>sequential_138/lstm_415/while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_138/lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOpMsequential_138_lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_138/lstm_415/while/lstm_cell_550/BiasAddBiasAdd3sequential_138/lstm_415/while/lstm_cell_550/add:z:0Jsequential_138/lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_138/lstm_415/while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_138/lstm_415/while/lstm_cell_550/splitSplitDsequential_138/lstm_415/while/lstm_cell_550/split/split_dim:output:0<sequential_138/lstm_415/while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_138/lstm_415/while/lstm_cell_550/SigmoidSigmoid:sequential_138/lstm_415/while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_138/lstm_415/while/lstm_cell_550/Sigmoid_1Sigmoid:sequential_138/lstm_415/while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_138/lstm_415/while/lstm_cell_550/mulMul9sequential_138/lstm_415/while/lstm_cell_550/Sigmoid_1:y:0+sequential_138_lstm_415_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_138/lstm_415/while/lstm_cell_550/ReluRelu:sequential_138/lstm_415/while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_138/lstm_415/while/lstm_cell_550/mul_1Mul7sequential_138/lstm_415/while/lstm_cell_550/Sigmoid:y:0>sequential_138/lstm_415/while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_138/lstm_415/while/lstm_cell_550/add_1AddV23sequential_138/lstm_415/while/lstm_cell_550/mul:z:05sequential_138/lstm_415/while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_138/lstm_415/while/lstm_cell_550/Sigmoid_2Sigmoid:sequential_138/lstm_415/while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_138/lstm_415/while/lstm_cell_550/Relu_1Relu5sequential_138/lstm_415/while/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_138/lstm_415/while/lstm_cell_550/mul_2Mul9sequential_138/lstm_415/while/lstm_cell_550/Sigmoid_2:y:0@sequential_138/lstm_415/while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_138/lstm_415/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_138_lstm_415_while_placeholder_1)sequential_138_lstm_415_while_placeholder5sequential_138/lstm_415/while/lstm_cell_550/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_138/lstm_415/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_138/lstm_415/while/addAddV2)sequential_138_lstm_415_while_placeholder,sequential_138/lstm_415/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_138/lstm_415/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_138/lstm_415/while/add_1AddV2Hsequential_138_lstm_415_while_sequential_138_lstm_415_while_loop_counter.sequential_138/lstm_415/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_138/lstm_415/while/IdentityIdentity'sequential_138/lstm_415/while/add_1:z:0#^sequential_138/lstm_415/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_415/while/Identity_1IdentityNsequential_138_lstm_415_while_sequential_138_lstm_415_while_maximum_iterations#^sequential_138/lstm_415/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_415/while/Identity_2Identity%sequential_138/lstm_415/while/add:z:0#^sequential_138/lstm_415/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_415/while/Identity_3IdentityRsequential_138/lstm_415/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_138/lstm_415/while/NoOp*
T0*
_output_shapes
: ?
(sequential_138/lstm_415/while/Identity_4Identity5sequential_138/lstm_415/while/lstm_cell_550/mul_2:z:0#^sequential_138/lstm_415/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_138/lstm_415/while/Identity_5Identity5sequential_138/lstm_415/while/lstm_cell_550/add_1:z:0#^sequential_138/lstm_415/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_138/lstm_415/while/NoOpNoOpC^sequential_138/lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOpB^sequential_138/lstm_415/while/lstm_cell_550/MatMul/ReadVariableOpD^sequential_138/lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_138_lstm_415_while_identity/sequential_138/lstm_415/while/Identity:output:0"]
(sequential_138_lstm_415_while_identity_11sequential_138/lstm_415/while/Identity_1:output:0"]
(sequential_138_lstm_415_while_identity_21sequential_138/lstm_415/while/Identity_2:output:0"]
(sequential_138_lstm_415_while_identity_31sequential_138/lstm_415/while/Identity_3:output:0"]
(sequential_138_lstm_415_while_identity_41sequential_138/lstm_415/while/Identity_4:output:0"]
(sequential_138_lstm_415_while_identity_51sequential_138/lstm_415/while/Identity_5:output:0"?
Ksequential_138_lstm_415_while_lstm_cell_550_biasadd_readvariableop_resourceMsequential_138_lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0"?
Lsequential_138_lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resourceNsequential_138_lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0"?
Jsequential_138_lstm_415_while_lstm_cell_550_matmul_readvariableop_resourceLsequential_138_lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0"?
Esequential_138_lstm_415_while_sequential_138_lstm_415_strided_slice_1Gsequential_138_lstm_415_while_sequential_138_lstm_415_strided_slice_1_0"?
?sequential_138_lstm_415_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_415_tensorarrayunstack_tensorlistfromtensor?sequential_138_lstm_415_while_tensorarrayv2read_tensorlistgetitem_sequential_138_lstm_415_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_138/lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOpBsequential_138/lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp2?
Asequential_138/lstm_415/while/lstm_cell_550/MatMul/ReadVariableOpAsequential_138/lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp2?
Csequential_138/lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOpCsequential_138/lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
*sequential_138_lstm_414_while_cond_3333574L
Hsequential_138_lstm_414_while_sequential_138_lstm_414_while_loop_counterR
Nsequential_138_lstm_414_while_sequential_138_lstm_414_while_maximum_iterations-
)sequential_138_lstm_414_while_placeholder/
+sequential_138_lstm_414_while_placeholder_1/
+sequential_138_lstm_414_while_placeholder_2/
+sequential_138_lstm_414_while_placeholder_3N
Jsequential_138_lstm_414_while_less_sequential_138_lstm_414_strided_slice_1e
asequential_138_lstm_414_while_sequential_138_lstm_414_while_cond_3333574___redundant_placeholder0e
asequential_138_lstm_414_while_sequential_138_lstm_414_while_cond_3333574___redundant_placeholder1e
asequential_138_lstm_414_while_sequential_138_lstm_414_while_cond_3333574___redundant_placeholder2e
asequential_138_lstm_414_while_sequential_138_lstm_414_while_cond_3333574___redundant_placeholder3*
&sequential_138_lstm_414_while_identity
?
"sequential_138/lstm_414/while/LessLess)sequential_138_lstm_414_while_placeholderJsequential_138_lstm_414_while_less_sequential_138_lstm_414_strided_slice_1*
T0*
_output_shapes
: {
&sequential_138/lstm_414/while/IdentityIdentity&sequential_138/lstm_414/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_138_lstm_414_while_identity/sequential_138/lstm_414/while/Identity:output:0*(
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
while_cond_3334023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3334023___redundant_placeholder05
1while_while_cond_3334023___redundant_placeholder15
1while_while_cond_3334023___redundant_placeholder25
1while_while_cond_3334023___redundant_placeholder3
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
*__inference_lstm_414_layer_call_fn_3337133
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3334284|
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3335988

inputs?
,lstm_cell_549_matmul_readvariableop_resource:	?A
.lstm_cell_549_matmul_1_readvariableop_resource:	d?<
-lstm_cell_549_biasadd_readvariableop_resource:	?
identity??$lstm_cell_549/BiasAdd/ReadVariableOp?#lstm_cell_549/MatMul/ReadVariableOp?%lstm_cell_549/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_549/MatMul/ReadVariableOpReadVariableOp,lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_549/MatMulMatMulstrided_slice_2:output:0+lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_549/MatMul_1MatMulzeros:output:0-lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_549/addAddV2lstm_cell_549/MatMul:product:0 lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_549/BiasAddBiasAddlstm_cell_549/add:z:0,lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_549/splitSplit&lstm_cell_549/split/split_dim:output:0lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_549/SigmoidSigmoidlstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_1Sigmoidlstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_549/mulMullstm_cell_549/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_549/ReluRelulstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_1Mullstm_cell_549/Sigmoid:y:0 lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_549/add_1AddV2lstm_cell_549/mul:z:0lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_2Sigmoidlstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_549/Relu_1Relulstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_2Mullstm_cell_549/Sigmoid_2:y:0"lstm_cell_549/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_549_matmul_readvariableop_resource.lstm_cell_549_matmul_1_readvariableop_resource-lstm_cell_549_biasadd_readvariableop_resource*
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
while_body_3335904*
condR
while_cond_3335903*K
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
NoOpNoOp%^lstm_cell_549/BiasAdd/ReadVariableOp$^lstm_cell_549/MatMul/ReadVariableOp&^lstm_cell_549/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_549/BiasAdd/ReadVariableOp$lstm_cell_549/BiasAdd/ReadVariableOp2J
#lstm_cell_549/MatMul/ReadVariableOp#lstm_cell_549/MatMul/ReadVariableOp2N
%lstm_cell_549/MatMul_1/ReadVariableOp%lstm_cell_549/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3334373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3334373___redundant_placeholder05
1while_while_cond_3334373___redundant_placeholder15
1while_while_cond_3334373___redundant_placeholder25
1while_while_cond_3334373___redundant_placeholder3
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
/__inference_lstm_cell_549_layer_call_fn_3339012

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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334156o
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
?8
?
E__inference_lstm_415_layer_call_and_return_conditional_losses_3334634

inputs(
lstm_cell_550_3334552:	d?(
lstm_cell_550_3334554:	2?$
lstm_cell_550_3334556:	?
identity??%lstm_cell_550/StatefulPartitionedCall?while;
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
%lstm_cell_550/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_550_3334552lstm_cell_550_3334554lstm_cell_550_3334556*
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334506n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_550_3334552lstm_cell_550_3334554lstm_cell_550_3334556*
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
while_body_3334565*
condR
while_cond_3334564*K
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
NoOpNoOp&^lstm_cell_550/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_550/StatefulPartitionedCall%lstm_cell_550/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?	
?
F__inference_dense_138_layer_call_and_return_conditional_losses_3335460

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
?C
?

lstm_416_while_body_3336594.
*lstm_416_while_lstm_416_while_loop_counter4
0lstm_416_while_lstm_416_while_maximum_iterations
lstm_416_while_placeholder 
lstm_416_while_placeholder_1 
lstm_416_while_placeholder_2 
lstm_416_while_placeholder_3-
)lstm_416_while_lstm_416_strided_slice_1_0i
elstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0:2(Q
?lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(L
>lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0:(
lstm_416_while_identity
lstm_416_while_identity_1
lstm_416_while_identity_2
lstm_416_while_identity_3
lstm_416_while_identity_4
lstm_416_while_identity_5+
'lstm_416_while_lstm_416_strided_slice_1g
clstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensorM
;lstm_416_while_lstm_cell_551_matmul_readvariableop_resource:2(O
=lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource:
(J
<lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource:(??3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp?2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp?4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp?
@lstm_416/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_416/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensor_0lstm_416_while_placeholderIlstm_416/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp=lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_416/while/lstm_cell_551/MatMulMatMul9lstm_416/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp?lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_416/while/lstm_cell_551/MatMul_1MatMullstm_416_while_placeholder_2<lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_416/while/lstm_cell_551/addAddV2-lstm_416/while/lstm_cell_551/MatMul:product:0/lstm_416/while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp>lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_416/while/lstm_cell_551/BiasAddBiasAdd$lstm_416/while/lstm_cell_551/add:z:0;lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_416/while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_416/while/lstm_cell_551/splitSplit5lstm_416/while/lstm_cell_551/split/split_dim:output:0-lstm_416/while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_416/while/lstm_cell_551/SigmoidSigmoid+lstm_416/while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_416/while/lstm_cell_551/Sigmoid_1Sigmoid+lstm_416/while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_416/while/lstm_cell_551/mulMul*lstm_416/while/lstm_cell_551/Sigmoid_1:y:0lstm_416_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_416/while/lstm_cell_551/ReluRelu+lstm_416/while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_416/while/lstm_cell_551/mul_1Mul(lstm_416/while/lstm_cell_551/Sigmoid:y:0/lstm_416/while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_416/while/lstm_cell_551/add_1AddV2$lstm_416/while/lstm_cell_551/mul:z:0&lstm_416/while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_416/while/lstm_cell_551/Sigmoid_2Sigmoid+lstm_416/while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_416/while/lstm_cell_551/Relu_1Relu&lstm_416/while/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_416/while/lstm_cell_551/mul_2Mul*lstm_416/while/lstm_cell_551/Sigmoid_2:y:01lstm_416/while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_416/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_416_while_placeholder_1lstm_416_while_placeholder&lstm_416/while/lstm_cell_551/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_416/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_416/while/addAddV2lstm_416_while_placeholderlstm_416/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_416/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_416/while/add_1AddV2*lstm_416_while_lstm_416_while_loop_counterlstm_416/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_416/while/IdentityIdentitylstm_416/while/add_1:z:0^lstm_416/while/NoOp*
T0*
_output_shapes
: ?
lstm_416/while/Identity_1Identity0lstm_416_while_lstm_416_while_maximum_iterations^lstm_416/while/NoOp*
T0*
_output_shapes
: t
lstm_416/while/Identity_2Identitylstm_416/while/add:z:0^lstm_416/while/NoOp*
T0*
_output_shapes
: ?
lstm_416/while/Identity_3IdentityClstm_416/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_416/while/NoOp*
T0*
_output_shapes
: ?
lstm_416/while/Identity_4Identity&lstm_416/while/lstm_cell_551/mul_2:z:0^lstm_416/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_416/while/Identity_5Identity&lstm_416/while/lstm_cell_551/add_1:z:0^lstm_416/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_416/while/NoOpNoOp4^lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp3^lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp5^lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_416_while_identity lstm_416/while/Identity:output:0"?
lstm_416_while_identity_1"lstm_416/while/Identity_1:output:0"?
lstm_416_while_identity_2"lstm_416/while/Identity_2:output:0"?
lstm_416_while_identity_3"lstm_416/while/Identity_3:output:0"?
lstm_416_while_identity_4"lstm_416/while/Identity_4:output:0"?
lstm_416_while_identity_5"lstm_416/while/Identity_5:output:0"T
'lstm_416_while_lstm_416_strided_slice_1)lstm_416_while_lstm_416_strided_slice_1_0"~
<lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource>lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0"?
=lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource?lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0"|
;lstm_416_while_lstm_cell_551_matmul_readvariableop_resource=lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0"?
clstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensorelstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp2h
2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp2l
4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337584

inputs?
,lstm_cell_549_matmul_readvariableop_resource:	?A
.lstm_cell_549_matmul_1_readvariableop_resource:	d?<
-lstm_cell_549_biasadd_readvariableop_resource:	?
identity??$lstm_cell_549/BiasAdd/ReadVariableOp?#lstm_cell_549/MatMul/ReadVariableOp?%lstm_cell_549/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_549/MatMul/ReadVariableOpReadVariableOp,lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_549/MatMulMatMulstrided_slice_2:output:0+lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_549/MatMul_1MatMulzeros:output:0-lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_549/addAddV2lstm_cell_549/MatMul:product:0 lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_549/BiasAddBiasAddlstm_cell_549/add:z:0,lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_549/splitSplit&lstm_cell_549/split/split_dim:output:0lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_549/SigmoidSigmoidlstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_1Sigmoidlstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_549/mulMullstm_cell_549/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_549/ReluRelulstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_1Mullstm_cell_549/Sigmoid:y:0 lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_549/add_1AddV2lstm_cell_549/mul:z:0lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_549/Sigmoid_2Sigmoidlstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_549/Relu_1Relulstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_549/mul_2Mullstm_cell_549/Sigmoid_2:y:0"lstm_cell_549/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_549_matmul_readvariableop_resource.lstm_cell_549_matmul_1_readvariableop_resource-lstm_cell_549_biasadd_readvariableop_resource*
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
while_body_3337500*
condR
while_cond_3337499*K
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
NoOpNoOp%^lstm_cell_549/BiasAdd/ReadVariableOp$^lstm_cell_549/MatMul/ReadVariableOp&^lstm_cell_549/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_549/BiasAdd/ReadVariableOp$lstm_cell_549/BiasAdd/ReadVariableOp2J
#lstm_cell_549/MatMul/ReadVariableOp#lstm_cell_549/MatMul/ReadVariableOp2N
%lstm_cell_549/MatMul_1/ReadVariableOp%lstm_cell_549/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3337973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_550_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_550_matmul_readvariableop_resource:	d?G
4while_lstm_cell_550_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_550_biasadd_readvariableop_resource:	???*while/lstm_cell_550/BiasAdd/ReadVariableOp?)while/lstm_cell_550/MatMul/ReadVariableOp?+while/lstm_cell_550/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_550/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_550/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_550/addAddV2$while/lstm_cell_550/MatMul:product:0&while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_550/BiasAddBiasAddwhile/lstm_cell_550/add:z:02while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_550/splitSplit,while/lstm_cell_550/split/split_dim:output:0$while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_550/SigmoidSigmoid"while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_1Sigmoid"while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mulMul!while/lstm_cell_550/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_550/ReluRelu"while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_1Mulwhile/lstm_cell_550/Sigmoid:y:0&while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/add_1AddV2while/lstm_cell_550/mul:z:0while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_2Sigmoid"while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_550/Relu_1Reluwhile/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_2Mul!while/lstm_cell_550/Sigmoid_2:y:0(while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_550/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_550/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_550/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_550/BiasAdd/ReadVariableOp*^while/lstm_cell_550/MatMul/ReadVariableOp,^while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_550_biasadd_readvariableop_resource5while_lstm_cell_550_biasadd_readvariableop_resource_0"n
4while_lstm_cell_550_matmul_1_readvariableop_resource6while_lstm_cell_550_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_550_matmul_readvariableop_resource4while_lstm_cell_550_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_550/BiasAdd/ReadVariableOp*while/lstm_cell_550/BiasAdd/ReadVariableOp2V
)while/lstm_cell_550/MatMul/ReadVariableOp)while/lstm_cell_550/MatMul/ReadVariableOp2Z
+while/lstm_cell_550/MatMul_1/ReadVariableOp+while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3337499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3337499___redundant_placeholder05
1while_while_cond_3337499___redundant_placeholder15
1while_while_cond_3337499___redundant_placeholder25
1while_while_cond_3337499___redundant_placeholder3
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
while_body_3337643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_549_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_549_matmul_readvariableop_resource:	?G
4while_lstm_cell_549_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_549_biasadd_readvariableop_resource:	???*while/lstm_cell_549/BiasAdd/ReadVariableOp?)while/lstm_cell_549/MatMul/ReadVariableOp?+while/lstm_cell_549/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_549/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_549/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_549/addAddV2$while/lstm_cell_549/MatMul:product:0&while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_549/BiasAddBiasAddwhile/lstm_cell_549/add:z:02while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_549/splitSplit,while/lstm_cell_549/split/split_dim:output:0$while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_549/SigmoidSigmoid"while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_1Sigmoid"while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mulMul!while/lstm_cell_549/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_549/ReluRelu"while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_1Mulwhile/lstm_cell_549/Sigmoid:y:0&while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/add_1AddV2while/lstm_cell_549/mul:z:0while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_549/Sigmoid_2Sigmoid"while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_549/Relu_1Reluwhile/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_549/mul_2Mul!while/lstm_cell_549/Sigmoid_2:y:0(while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_549/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_549/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_549/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_549/BiasAdd/ReadVariableOp*^while/lstm_cell_549/MatMul/ReadVariableOp,^while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_549_biasadd_readvariableop_resource5while_lstm_cell_549_biasadd_readvariableop_resource_0"n
4while_lstm_cell_549_matmul_1_readvariableop_resource6while_lstm_cell_549_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_549_matmul_readvariableop_resource4while_lstm_cell_549_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_549/BiasAdd/ReadVariableOp*while/lstm_cell_549/BiasAdd/ReadVariableOp2V
)while/lstm_cell_549/MatMul/ReadVariableOp)while/lstm_cell_549/MatMul/ReadVariableOp2Z
+while/lstm_cell_549/MatMul_1/ReadVariableOp+while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
E__inference_lstm_414_layer_call_and_return_conditional_losses_3334284

inputs(
lstm_cell_549_3334202:	?(
lstm_cell_549_3334204:	d?$
lstm_cell_549_3334206:	?
identity??%lstm_cell_549/StatefulPartitionedCall?while;
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
%lstm_cell_549/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_549_3334202lstm_cell_549_3334204lstm_cell_549_3334206*
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334156n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_549_3334202lstm_cell_549_3334204lstm_cell_549_3334206*
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
while_body_3334215*
condR
while_cond_3334214*K
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
NoOpNoOp&^lstm_cell_549/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_549/StatefulPartitionedCall%lstm_cell_549/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3335738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3335738___redundant_placeholder05
1while_while_cond_3335738___redundant_placeholder15
1while_while_cond_3335738___redundant_placeholder25
1while_while_cond_3335738___redundant_placeholder3
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334156

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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335658

inputs>
,lstm_cell_551_matmul_readvariableop_resource:2(@
.lstm_cell_551_matmul_1_readvariableop_resource:
(;
-lstm_cell_551_biasadd_readvariableop_resource:(
identity??$lstm_cell_551/BiasAdd/ReadVariableOp?#lstm_cell_551/MatMul/ReadVariableOp?%lstm_cell_551/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_551/MatMul/ReadVariableOpReadVariableOp,lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_551/MatMulMatMulstrided_slice_2:output:0+lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_551/MatMul_1MatMulzeros:output:0-lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_551/addAddV2lstm_cell_551/MatMul:product:0 lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_551/BiasAddBiasAddlstm_cell_551/add:z:0,lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_551/splitSplit&lstm_cell_551/split/split_dim:output:0lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_551/SigmoidSigmoidlstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_1Sigmoidlstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_551/mulMullstm_cell_551/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_551/ReluRelulstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_1Mullstm_cell_551/Sigmoid:y:0 lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_551/add_1AddV2lstm_cell_551/mul:z:0lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_2Sigmoidlstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_551/Relu_1Relulstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_2Mullstm_cell_551/Sigmoid_2:y:0"lstm_cell_551/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_551_matmul_readvariableop_resource.lstm_cell_551_matmul_1_readvariableop_resource-lstm_cell_551_biasadd_readvariableop_resource*
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
while_body_3335574*
condR
while_cond_3335573*K
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
NoOpNoOp%^lstm_cell_551/BiasAdd/ReadVariableOp$^lstm_cell_551/MatMul/ReadVariableOp&^lstm_cell_551/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_551/BiasAdd/ReadVariableOp$lstm_cell_551/BiasAdd/ReadVariableOp2J
#lstm_cell_551/MatMul/ReadVariableOp#lstm_cell_551/MatMul/ReadVariableOp2N
%lstm_cell_551/MatMul_1/ReadVariableOp%lstm_cell_551/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3337972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3337972___redundant_placeholder05
1while_while_cond_3337972___redundant_placeholder15
1while_while_cond_3337972___redundant_placeholder25
1while_while_cond_3337972___redundant_placeholder3
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
while_body_3335739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_550_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_550_matmul_readvariableop_resource:	d?G
4while_lstm_cell_550_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_550_biasadd_readvariableop_resource:	???*while/lstm_cell_550/BiasAdd/ReadVariableOp?)while/lstm_cell_550/MatMul/ReadVariableOp?+while/lstm_cell_550/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_550/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_550/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_550/addAddV2$while/lstm_cell_550/MatMul:product:0&while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_550/BiasAddBiasAddwhile/lstm_cell_550/add:z:02while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_550/splitSplit,while/lstm_cell_550/split/split_dim:output:0$while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_550/SigmoidSigmoid"while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_1Sigmoid"while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mulMul!while/lstm_cell_550/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_550/ReluRelu"while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_1Mulwhile/lstm_cell_550/Sigmoid:y:0&while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/add_1AddV2while/lstm_cell_550/mul:z:0while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_2Sigmoid"while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_550/Relu_1Reluwhile/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_2Mul!while/lstm_cell_550/Sigmoid_2:y:0(while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_550/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_550/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_550/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_550/BiasAdd/ReadVariableOp*^while/lstm_cell_550/MatMul/ReadVariableOp,^while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_550_biasadd_readvariableop_resource5while_lstm_cell_550_biasadd_readvariableop_resource_0"n
4while_lstm_cell_550_matmul_1_readvariableop_resource6while_lstm_cell_550_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_550_matmul_readvariableop_resource4while_lstm_cell_550_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_550/BiasAdd/ReadVariableOp*while/lstm_cell_550/BiasAdd/ReadVariableOp2V
)while/lstm_cell_550/MatMul/ReadVariableOp)while/lstm_cell_550/MatMul/ReadVariableOp2Z
+while/lstm_cell_550/MatMul_1/ReadVariableOp+while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_416_layer_call_fn_3338376

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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335442o
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
?
?
*__inference_lstm_415_layer_call_fn_3337771

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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335823s
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
while_body_3338259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_550_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_550_matmul_readvariableop_resource:	d?G
4while_lstm_cell_550_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_550_biasadd_readvariableop_resource:	???*while/lstm_cell_550/BiasAdd/ReadVariableOp?)while/lstm_cell_550/MatMul/ReadVariableOp?+while/lstm_cell_550/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_550/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_550/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_550/addAddV2$while/lstm_cell_550/MatMul:product:0&while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_550/BiasAddBiasAddwhile/lstm_cell_550/add:z:02while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_550/splitSplit,while/lstm_cell_550/split/split_dim:output:0$while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_550/SigmoidSigmoid"while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_1Sigmoid"while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mulMul!while/lstm_cell_550/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_550/ReluRelu"while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_1Mulwhile/lstm_cell_550/Sigmoid:y:0&while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/add_1AddV2while/lstm_cell_550/mul:z:0while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_2Sigmoid"while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_550/Relu_1Reluwhile/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_2Mul!while/lstm_cell_550/Sigmoid_2:y:0(while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_550/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_550/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_550/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_550/BiasAdd/ReadVariableOp*^while/lstm_cell_550/MatMul/ReadVariableOp,^while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_550_biasadd_readvariableop_resource5while_lstm_cell_550_biasadd_readvariableop_resource_0"n
4while_lstm_cell_550_matmul_1_readvariableop_resource6while_lstm_cell_550_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_550_matmul_readvariableop_resource4while_lstm_cell_550_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_550/BiasAdd/ReadVariableOp*while/lstm_cell_550/BiasAdd/ReadVariableOp2V
)while/lstm_cell_550/MatMul/ReadVariableOp)while/lstm_cell_550/MatMul/ReadVariableOp2Z
+while/lstm_cell_550/MatMul_1/ReadVariableOp+while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338959

inputs>
,lstm_cell_551_matmul_readvariableop_resource:2(@
.lstm_cell_551_matmul_1_readvariableop_resource:
(;
-lstm_cell_551_biasadd_readvariableop_resource:(
identity??$lstm_cell_551/BiasAdd/ReadVariableOp?#lstm_cell_551/MatMul/ReadVariableOp?%lstm_cell_551/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_551/MatMul/ReadVariableOpReadVariableOp,lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_551/MatMulMatMulstrided_slice_2:output:0+lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_551/MatMul_1MatMulzeros:output:0-lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_551/addAddV2lstm_cell_551/MatMul:product:0 lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_551/BiasAddBiasAddlstm_cell_551/add:z:0,lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_551/splitSplit&lstm_cell_551/split/split_dim:output:0lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_551/SigmoidSigmoidlstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_1Sigmoidlstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_551/mulMullstm_cell_551/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_551/ReluRelulstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_1Mullstm_cell_551/Sigmoid:y:0 lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_551/add_1AddV2lstm_cell_551/mul:z:0lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_2Sigmoidlstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_551/Relu_1Relulstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_2Mullstm_cell_551/Sigmoid_2:y:0"lstm_cell_551/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_551_matmul_readvariableop_resource.lstm_cell_551_matmul_1_readvariableop_resource-lstm_cell_551_biasadd_readvariableop_resource*
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
while_body_3338875*
condR
while_cond_3338874*K
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
NoOpNoOp%^lstm_cell_551/BiasAdd/ReadVariableOp$^lstm_cell_551/MatMul/ReadVariableOp&^lstm_cell_551/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_551/BiasAdd/ReadVariableOp$lstm_cell_551/BiasAdd/ReadVariableOp2J
#lstm_cell_551/MatMul/ReadVariableOp#lstm_cell_551/MatMul/ReadVariableOp2N
%lstm_cell_551/MatMul_1/ReadVariableOp%lstm_cell_551/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3339174

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
?
while_cond_3335057
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3335057___redundant_placeholder05
1while_while_cond_3335057___redundant_placeholder15
1while_while_cond_3335057___redundant_placeholder25
1while_while_cond_3335057___redundant_placeholder3
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334506

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
while_cond_3335573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3335573___redundant_placeholder05
1while_while_cond_3335573___redundant_placeholder15
1while_while_cond_3335573___redundant_placeholder25
1while_while_cond_3335573___redundant_placeholder3
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

?
lstm_415_while_cond_3336881.
*lstm_415_while_lstm_415_while_loop_counter4
0lstm_415_while_lstm_415_while_maximum_iterations
lstm_415_while_placeholder 
lstm_415_while_placeholder_1 
lstm_415_while_placeholder_2 
lstm_415_while_placeholder_30
,lstm_415_while_less_lstm_415_strided_slice_1G
Clstm_415_while_lstm_415_while_cond_3336881___redundant_placeholder0G
Clstm_415_while_lstm_415_while_cond_3336881___redundant_placeholder1G
Clstm_415_while_lstm_415_while_cond_3336881___redundant_placeholder2G
Clstm_415_while_lstm_415_while_cond_3336881___redundant_placeholder3
lstm_415_while_identity
?
lstm_415/while/LessLesslstm_415_while_placeholder,lstm_415_while_less_lstm_415_strided_slice_1*
T0*
_output_shapes
: ]
lstm_415/while/IdentityIdentitylstm_415/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_415_while_identity lstm_415/while/Identity:output:0*(
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
0__inference_sequential_138_layer_call_fn_3336108
lstm_414_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_414_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336056o
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
_user_specified_namelstm_414_input
?
?
*__inference_lstm_416_layer_call_fn_3338365
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3334984o
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
while_cond_3335357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3335357___redundant_placeholder05
1while_while_cond_3335357___redundant_placeholder15
1while_while_cond_3335357___redundant_placeholder25
1while_while_cond_3335357___redundant_placeholder3
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
?W
?
 __inference__traced_save_3339415
file_prefix/
+savev2_dense_138_kernel_read_readvariableop-
)savev2_dense_138_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_414_lstm_cell_414_kernel_read_readvariableopF
Bsavev2_lstm_414_lstm_cell_414_recurrent_kernel_read_readvariableop:
6savev2_lstm_414_lstm_cell_414_bias_read_readvariableop<
8savev2_lstm_415_lstm_cell_415_kernel_read_readvariableopF
Bsavev2_lstm_415_lstm_cell_415_recurrent_kernel_read_readvariableop:
6savev2_lstm_415_lstm_cell_415_bias_read_readvariableop<
8savev2_lstm_416_lstm_cell_416_kernel_read_readvariableopF
Bsavev2_lstm_416_lstm_cell_416_recurrent_kernel_read_readvariableop:
6savev2_lstm_416_lstm_cell_416_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_138_kernel_m_read_readvariableop4
0savev2_adam_dense_138_bias_m_read_readvariableopC
?savev2_adam_lstm_414_lstm_cell_414_kernel_m_read_readvariableopM
Isavev2_adam_lstm_414_lstm_cell_414_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_414_lstm_cell_414_bias_m_read_readvariableopC
?savev2_adam_lstm_415_lstm_cell_415_kernel_m_read_readvariableopM
Isavev2_adam_lstm_415_lstm_cell_415_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_415_lstm_cell_415_bias_m_read_readvariableopC
?savev2_adam_lstm_416_lstm_cell_416_kernel_m_read_readvariableopM
Isavev2_adam_lstm_416_lstm_cell_416_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_416_lstm_cell_416_bias_m_read_readvariableop6
2savev2_adam_dense_138_kernel_v_read_readvariableop4
0savev2_adam_dense_138_bias_v_read_readvariableopC
?savev2_adam_lstm_414_lstm_cell_414_kernel_v_read_readvariableopM
Isavev2_adam_lstm_414_lstm_cell_414_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_414_lstm_cell_414_bias_v_read_readvariableopC
?savev2_adam_lstm_415_lstm_cell_415_kernel_v_read_readvariableopM
Isavev2_adam_lstm_415_lstm_cell_415_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_415_lstm_cell_415_bias_v_read_readvariableopC
?savev2_adam_lstm_416_lstm_cell_416_kernel_v_read_readvariableopM
Isavev2_adam_lstm_416_lstm_cell_416_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_416_lstm_cell_416_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_138_kernel_read_readvariableop)savev2_dense_138_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_414_lstm_cell_414_kernel_read_readvariableopBsavev2_lstm_414_lstm_cell_414_recurrent_kernel_read_readvariableop6savev2_lstm_414_lstm_cell_414_bias_read_readvariableop8savev2_lstm_415_lstm_cell_415_kernel_read_readvariableopBsavev2_lstm_415_lstm_cell_415_recurrent_kernel_read_readvariableop6savev2_lstm_415_lstm_cell_415_bias_read_readvariableop8savev2_lstm_416_lstm_cell_416_kernel_read_readvariableopBsavev2_lstm_416_lstm_cell_416_recurrent_kernel_read_readvariableop6savev2_lstm_416_lstm_cell_416_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_138_kernel_m_read_readvariableop0savev2_adam_dense_138_bias_m_read_readvariableop?savev2_adam_lstm_414_lstm_cell_414_kernel_m_read_readvariableopIsavev2_adam_lstm_414_lstm_cell_414_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_414_lstm_cell_414_bias_m_read_readvariableop?savev2_adam_lstm_415_lstm_cell_415_kernel_m_read_readvariableopIsavev2_adam_lstm_415_lstm_cell_415_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_415_lstm_cell_415_bias_m_read_readvariableop?savev2_adam_lstm_416_lstm_cell_416_kernel_m_read_readvariableopIsavev2_adam_lstm_416_lstm_cell_416_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_416_lstm_cell_416_bias_m_read_readvariableop2savev2_adam_dense_138_kernel_v_read_readvariableop0savev2_adam_dense_138_bias_v_read_readvariableop?savev2_adam_lstm_414_lstm_cell_414_kernel_v_read_readvariableopIsavev2_adam_lstm_414_lstm_cell_414_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_414_lstm_cell_414_bias_v_read_readvariableop?savev2_adam_lstm_415_lstm_cell_415_kernel_v_read_readvariableopIsavev2_adam_lstm_415_lstm_cell_415_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_415_lstm_cell_415_bias_v_read_readvariableop?savev2_adam_lstm_416_lstm_cell_416_kernel_v_read_readvariableopIsavev2_adam_lstm_416_lstm_cell_416_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_416_lstm_cell_416_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?J
?
E__inference_lstm_416_layer_call_and_return_conditional_losses_3335442

inputs>
,lstm_cell_551_matmul_readvariableop_resource:2(@
.lstm_cell_551_matmul_1_readvariableop_resource:
(;
-lstm_cell_551_biasadd_readvariableop_resource:(
identity??$lstm_cell_551/BiasAdd/ReadVariableOp?#lstm_cell_551/MatMul/ReadVariableOp?%lstm_cell_551/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_551/MatMul/ReadVariableOpReadVariableOp,lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_551/MatMulMatMulstrided_slice_2:output:0+lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_551/MatMul_1MatMulzeros:output:0-lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_551/addAddV2lstm_cell_551/MatMul:product:0 lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_551/BiasAddBiasAddlstm_cell_551/add:z:0,lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_551/splitSplit&lstm_cell_551/split/split_dim:output:0lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_551/SigmoidSigmoidlstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_1Sigmoidlstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_551/mulMullstm_cell_551/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_551/ReluRelulstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_1Mullstm_cell_551/Sigmoid:y:0 lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_551/add_1AddV2lstm_cell_551/mul:z:0lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_551/Sigmoid_2Sigmoidlstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_551/Relu_1Relulstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_551/mul_2Mullstm_cell_551/Sigmoid_2:y:0"lstm_cell_551/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_551_matmul_readvariableop_resource.lstm_cell_551_matmul_1_readvariableop_resource-lstm_cell_551_biasadd_readvariableop_resource*
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
while_body_3335358*
condR
while_cond_3335357*K
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
NoOpNoOp%^lstm_cell_551/BiasAdd/ReadVariableOp$^lstm_cell_551/MatMul/ReadVariableOp&^lstm_cell_551/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_551/BiasAdd/ReadVariableOp$lstm_cell_551/BiasAdd/ReadVariableOp2J
#lstm_cell_551/MatMul/ReadVariableOp#lstm_cell_551/MatMul/ReadVariableOp2N
%lstm_cell_551/MatMul_1/ReadVariableOp%lstm_cell_551/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_414_while_body_3336743.
*lstm_414_while_lstm_414_while_loop_counter4
0lstm_414_while_lstm_414_while_maximum_iterations
lstm_414_while_placeholder 
lstm_414_while_placeholder_1 
lstm_414_while_placeholder_2 
lstm_414_while_placeholder_3-
)lstm_414_while_lstm_414_strided_slice_1_0i
elstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0:	?R
?lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0:	d?M
>lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0:	?
lstm_414_while_identity
lstm_414_while_identity_1
lstm_414_while_identity_2
lstm_414_while_identity_3
lstm_414_while_identity_4
lstm_414_while_identity_5+
'lstm_414_while_lstm_414_strided_slice_1g
clstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensorN
;lstm_414_while_lstm_cell_549_matmul_readvariableop_resource:	?P
=lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource:	d?K
<lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource:	???3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp?2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp?4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp?
@lstm_414/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_414/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensor_0lstm_414_while_placeholderIlstm_414/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp=lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_414/while/lstm_cell_549/MatMulMatMul9lstm_414/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp?lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_414/while/lstm_cell_549/MatMul_1MatMullstm_414_while_placeholder_2<lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_414/while/lstm_cell_549/addAddV2-lstm_414/while/lstm_cell_549/MatMul:product:0/lstm_414/while/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp>lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_414/while/lstm_cell_549/BiasAddBiasAdd$lstm_414/while/lstm_cell_549/add:z:0;lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_414/while/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_414/while/lstm_cell_549/splitSplit5lstm_414/while/lstm_cell_549/split/split_dim:output:0-lstm_414/while/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_414/while/lstm_cell_549/SigmoidSigmoid+lstm_414/while/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_414/while/lstm_cell_549/Sigmoid_1Sigmoid+lstm_414/while/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_414/while/lstm_cell_549/mulMul*lstm_414/while/lstm_cell_549/Sigmoid_1:y:0lstm_414_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_414/while/lstm_cell_549/ReluRelu+lstm_414/while/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_414/while/lstm_cell_549/mul_1Mul(lstm_414/while/lstm_cell_549/Sigmoid:y:0/lstm_414/while/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_414/while/lstm_cell_549/add_1AddV2$lstm_414/while/lstm_cell_549/mul:z:0&lstm_414/while/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_414/while/lstm_cell_549/Sigmoid_2Sigmoid+lstm_414/while/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_414/while/lstm_cell_549/Relu_1Relu&lstm_414/while/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_414/while/lstm_cell_549/mul_2Mul*lstm_414/while/lstm_cell_549/Sigmoid_2:y:01lstm_414/while/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_414/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_414_while_placeholder_1lstm_414_while_placeholder&lstm_414/while/lstm_cell_549/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_414/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_414/while/addAddV2lstm_414_while_placeholderlstm_414/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_414/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_414/while/add_1AddV2*lstm_414_while_lstm_414_while_loop_counterlstm_414/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_414/while/IdentityIdentitylstm_414/while/add_1:z:0^lstm_414/while/NoOp*
T0*
_output_shapes
: ?
lstm_414/while/Identity_1Identity0lstm_414_while_lstm_414_while_maximum_iterations^lstm_414/while/NoOp*
T0*
_output_shapes
: t
lstm_414/while/Identity_2Identitylstm_414/while/add:z:0^lstm_414/while/NoOp*
T0*
_output_shapes
: ?
lstm_414/while/Identity_3IdentityClstm_414/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_414/while/NoOp*
T0*
_output_shapes
: ?
lstm_414/while/Identity_4Identity&lstm_414/while/lstm_cell_549/mul_2:z:0^lstm_414/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_414/while/Identity_5Identity&lstm_414/while/lstm_cell_549/add_1:z:0^lstm_414/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_414/while/NoOpNoOp4^lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp3^lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp5^lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_414_while_identity lstm_414/while/Identity:output:0"?
lstm_414_while_identity_1"lstm_414/while/Identity_1:output:0"?
lstm_414_while_identity_2"lstm_414/while/Identity_2:output:0"?
lstm_414_while_identity_3"lstm_414/while/Identity_3:output:0"?
lstm_414_while_identity_4"lstm_414/while/Identity_4:output:0"?
lstm_414_while_identity_5"lstm_414/while/Identity_5:output:0"T
'lstm_414_while_lstm_414_strided_slice_1)lstm_414_while_lstm_414_strided_slice_1_0"~
<lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource>lstm_414_while_lstm_cell_549_biasadd_readvariableop_resource_0"?
=lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource?lstm_414_while_lstm_cell_549_matmul_1_readvariableop_resource_0"|
;lstm_414_while_lstm_cell_549_matmul_readvariableop_resource=lstm_414_while_lstm_cell_549_matmul_readvariableop_resource_0"?
clstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensorelstm_414_while_tensorarrayv2read_tensorlistgetitem_lstm_414_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp3lstm_414/while/lstm_cell_549/BiasAdd/ReadVariableOp2h
2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp2lstm_414/while/lstm_cell_549/MatMul/ReadVariableOp2l
4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp4lstm_414/while/lstm_cell_549/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_138_layer_call_fn_3335492
lstm_414_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_414_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_138_layer_call_and_return_conditional_losses_3335467o
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
_user_specified_namelstm_414_input
?
?
*__inference_lstm_414_layer_call_fn_3337122
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3334093|
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
?
?
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3339142

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
?
while_cond_3337213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3337213___redundant_placeholder05
1while_while_cond_3337213___redundant_placeholder15
1while_while_cond_3337213___redundant_placeholder25
1while_while_cond_3337213___redundant_placeholder3
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
%__inference_signature_wrapper_3336203
lstm_414_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_414_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3333943o
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
_user_specified_namelstm_414_input
?8
?
E__inference_lstm_414_layer_call_and_return_conditional_losses_3334093

inputs(
lstm_cell_549_3334011:	?(
lstm_cell_549_3334013:	d?$
lstm_cell_549_3334015:	?
identity??%lstm_cell_549/StatefulPartitionedCall?while;
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
%lstm_cell_549/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_549_3334011lstm_cell_549_3334013lstm_cell_549_3334015*
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334010n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_549_3334011lstm_cell_549_3334013lstm_cell_549_3334015*
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
while_body_3334024*
condR
while_cond_3334023*K
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
NoOpNoOp&^lstm_cell_549/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_549/StatefulPartitionedCall%lstm_cell_549/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3339272

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
??
?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3337111

inputsH
5lstm_414_lstm_cell_549_matmul_readvariableop_resource:	?J
7lstm_414_lstm_cell_549_matmul_1_readvariableop_resource:	d?E
6lstm_414_lstm_cell_549_biasadd_readvariableop_resource:	?H
5lstm_415_lstm_cell_550_matmul_readvariableop_resource:	d?J
7lstm_415_lstm_cell_550_matmul_1_readvariableop_resource:	2?E
6lstm_415_lstm_cell_550_biasadd_readvariableop_resource:	?G
5lstm_416_lstm_cell_551_matmul_readvariableop_resource:2(I
7lstm_416_lstm_cell_551_matmul_1_readvariableop_resource:
(D
6lstm_416_lstm_cell_551_biasadd_readvariableop_resource:(:
(dense_138_matmul_readvariableop_resource:
7
)dense_138_biasadd_readvariableop_resource:
identity?? dense_138/BiasAdd/ReadVariableOp?dense_138/MatMul/ReadVariableOp?-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp?,lstm_414/lstm_cell_549/MatMul/ReadVariableOp?.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp?lstm_414/while?-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp?,lstm_415/lstm_cell_550/MatMul/ReadVariableOp?.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp?lstm_415/while?-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp?,lstm_416/lstm_cell_551/MatMul/ReadVariableOp?.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp?lstm_416/whileD
lstm_414/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_414/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_414/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_414/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_sliceStridedSlicelstm_414/Shape:output:0%lstm_414/strided_slice/stack:output:0'lstm_414/strided_slice/stack_1:output:0'lstm_414/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_414/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_414/zeros/packedPacklstm_414/strided_slice:output:0 lstm_414/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_414/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_414/zerosFilllstm_414/zeros/packed:output:0lstm_414/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_414/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_414/zeros_1/packedPacklstm_414/strided_slice:output:0"lstm_414/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_414/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_414/zeros_1Fill lstm_414/zeros_1/packed:output:0lstm_414/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_414/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_414/transpose	Transposeinputs lstm_414/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_414/Shape_1Shapelstm_414/transpose:y:0*
T0*
_output_shapes
:h
lstm_414/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_414/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_414/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_slice_1StridedSlicelstm_414/Shape_1:output:0'lstm_414/strided_slice_1/stack:output:0)lstm_414/strided_slice_1/stack_1:output:0)lstm_414/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_414/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_414/TensorArrayV2TensorListReserve-lstm_414/TensorArrayV2/element_shape:output:0!lstm_414/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_414/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_414/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_414/transpose:y:0Glstm_414/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_414/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_414/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_414/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_slice_2StridedSlicelstm_414/transpose:y:0'lstm_414/strided_slice_2/stack:output:0)lstm_414/strided_slice_2/stack_1:output:0)lstm_414/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_414/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp5lstm_414_lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_414/lstm_cell_549/MatMulMatMul!lstm_414/strided_slice_2:output:04lstm_414/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp7lstm_414_lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_414/lstm_cell_549/MatMul_1MatMullstm_414/zeros:output:06lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_414/lstm_cell_549/addAddV2'lstm_414/lstm_cell_549/MatMul:product:0)lstm_414/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp6lstm_414_lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_414/lstm_cell_549/BiasAddBiasAddlstm_414/lstm_cell_549/add:z:05lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_414/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_414/lstm_cell_549/splitSplit/lstm_414/lstm_cell_549/split/split_dim:output:0'lstm_414/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_414/lstm_cell_549/SigmoidSigmoid%lstm_414/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_414/lstm_cell_549/Sigmoid_1Sigmoid%lstm_414/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/mulMul$lstm_414/lstm_cell_549/Sigmoid_1:y:0lstm_414/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_414/lstm_cell_549/ReluRelu%lstm_414/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/mul_1Mul"lstm_414/lstm_cell_549/Sigmoid:y:0)lstm_414/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/add_1AddV2lstm_414/lstm_cell_549/mul:z:0 lstm_414/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_414/lstm_cell_549/Sigmoid_2Sigmoid%lstm_414/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_414/lstm_cell_549/Relu_1Relu lstm_414/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/mul_2Mul$lstm_414/lstm_cell_549/Sigmoid_2:y:0+lstm_414/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_414/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_414/TensorArrayV2_1TensorListReserve/lstm_414/TensorArrayV2_1/element_shape:output:0!lstm_414/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_414/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_414/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_414/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_414/whileWhile$lstm_414/while/loop_counter:output:0*lstm_414/while/maximum_iterations:output:0lstm_414/time:output:0!lstm_414/TensorArrayV2_1:handle:0lstm_414/zeros:output:0lstm_414/zeros_1:output:0!lstm_414/strided_slice_1:output:0@lstm_414/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_414_lstm_cell_549_matmul_readvariableop_resource7lstm_414_lstm_cell_549_matmul_1_readvariableop_resource6lstm_414_lstm_cell_549_biasadd_readvariableop_resource*
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
lstm_414_while_body_3336743*'
condR
lstm_414_while_cond_3336742*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_414/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_414/TensorArrayV2Stack/TensorListStackTensorListStacklstm_414/while:output:3Blstm_414/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_414/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_414/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_414/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_slice_3StridedSlice4lstm_414/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_414/strided_slice_3/stack:output:0)lstm_414/strided_slice_3/stack_1:output:0)lstm_414/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_414/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_414/transpose_1	Transpose4lstm_414/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_414/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_414/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_415/ShapeShapelstm_414/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_415/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_415/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_415/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_sliceStridedSlicelstm_415/Shape:output:0%lstm_415/strided_slice/stack:output:0'lstm_415/strided_slice/stack_1:output:0'lstm_415/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_415/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_415/zeros/packedPacklstm_415/strided_slice:output:0 lstm_415/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_415/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_415/zerosFilllstm_415/zeros/packed:output:0lstm_415/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_415/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_415/zeros_1/packedPacklstm_415/strided_slice:output:0"lstm_415/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_415/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_415/zeros_1Fill lstm_415/zeros_1/packed:output:0lstm_415/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_415/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_415/transpose	Transposelstm_414/transpose_1:y:0 lstm_415/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_415/Shape_1Shapelstm_415/transpose:y:0*
T0*
_output_shapes
:h
lstm_415/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_415/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_415/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_slice_1StridedSlicelstm_415/Shape_1:output:0'lstm_415/strided_slice_1/stack:output:0)lstm_415/strided_slice_1/stack_1:output:0)lstm_415/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_415/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_415/TensorArrayV2TensorListReserve-lstm_415/TensorArrayV2/element_shape:output:0!lstm_415/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_415/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_415/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_415/transpose:y:0Glstm_415/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_415/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_415/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_415/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_slice_2StridedSlicelstm_415/transpose:y:0'lstm_415/strided_slice_2/stack:output:0)lstm_415/strided_slice_2/stack_1:output:0)lstm_415/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_415/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp5lstm_415_lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_415/lstm_cell_550/MatMulMatMul!lstm_415/strided_slice_2:output:04lstm_415/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp7lstm_415_lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_415/lstm_cell_550/MatMul_1MatMullstm_415/zeros:output:06lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_415/lstm_cell_550/addAddV2'lstm_415/lstm_cell_550/MatMul:product:0)lstm_415/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp6lstm_415_lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_415/lstm_cell_550/BiasAddBiasAddlstm_415/lstm_cell_550/add:z:05lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_415/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_415/lstm_cell_550/splitSplit/lstm_415/lstm_cell_550/split/split_dim:output:0'lstm_415/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_415/lstm_cell_550/SigmoidSigmoid%lstm_415/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_415/lstm_cell_550/Sigmoid_1Sigmoid%lstm_415/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/mulMul$lstm_415/lstm_cell_550/Sigmoid_1:y:0lstm_415/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_415/lstm_cell_550/ReluRelu%lstm_415/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/mul_1Mul"lstm_415/lstm_cell_550/Sigmoid:y:0)lstm_415/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/add_1AddV2lstm_415/lstm_cell_550/mul:z:0 lstm_415/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_415/lstm_cell_550/Sigmoid_2Sigmoid%lstm_415/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_415/lstm_cell_550/Relu_1Relu lstm_415/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/mul_2Mul$lstm_415/lstm_cell_550/Sigmoid_2:y:0+lstm_415/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_415/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_415/TensorArrayV2_1TensorListReserve/lstm_415/TensorArrayV2_1/element_shape:output:0!lstm_415/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_415/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_415/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_415/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_415/whileWhile$lstm_415/while/loop_counter:output:0*lstm_415/while/maximum_iterations:output:0lstm_415/time:output:0!lstm_415/TensorArrayV2_1:handle:0lstm_415/zeros:output:0lstm_415/zeros_1:output:0!lstm_415/strided_slice_1:output:0@lstm_415/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_415_lstm_cell_550_matmul_readvariableop_resource7lstm_415_lstm_cell_550_matmul_1_readvariableop_resource6lstm_415_lstm_cell_550_biasadd_readvariableop_resource*
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
lstm_415_while_body_3336882*'
condR
lstm_415_while_cond_3336881*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_415/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_415/TensorArrayV2Stack/TensorListStackTensorListStacklstm_415/while:output:3Blstm_415/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_415/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_415/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_415/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_slice_3StridedSlice4lstm_415/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_415/strided_slice_3/stack:output:0)lstm_415/strided_slice_3/stack_1:output:0)lstm_415/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_415/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_415/transpose_1	Transpose4lstm_415/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_415/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_415/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_416/ShapeShapelstm_415/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_sliceStridedSlicelstm_416/Shape:output:0%lstm_416/strided_slice/stack:output:0'lstm_416/strided_slice/stack_1:output:0'lstm_416/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_416/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_416/zeros/packedPacklstm_416/strided_slice:output:0 lstm_416/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_416/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_416/zerosFilllstm_416/zeros/packed:output:0lstm_416/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_416/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_416/zeros_1/packedPacklstm_416/strided_slice:output:0"lstm_416/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_416/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_416/zeros_1Fill lstm_416/zeros_1/packed:output:0lstm_416/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_416/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_416/transpose	Transposelstm_415/transpose_1:y:0 lstm_416/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_416/Shape_1Shapelstm_416/transpose:y:0*
T0*
_output_shapes
:h
lstm_416/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_416/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_416/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_slice_1StridedSlicelstm_416/Shape_1:output:0'lstm_416/strided_slice_1/stack:output:0)lstm_416/strided_slice_1/stack_1:output:0)lstm_416/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_416/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_416/TensorArrayV2TensorListReserve-lstm_416/TensorArrayV2/element_shape:output:0!lstm_416/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_416/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_416/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_416/transpose:y:0Glstm_416/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_416/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_416/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_416/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_slice_2StridedSlicelstm_416/transpose:y:0'lstm_416/strided_slice_2/stack:output:0)lstm_416/strided_slice_2/stack_1:output:0)lstm_416/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_416/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp5lstm_416_lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_416/lstm_cell_551/MatMulMatMul!lstm_416/strided_slice_2:output:04lstm_416/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp7lstm_416_lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_416/lstm_cell_551/MatMul_1MatMullstm_416/zeros:output:06lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_416/lstm_cell_551/addAddV2'lstm_416/lstm_cell_551/MatMul:product:0)lstm_416/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp6lstm_416_lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_416/lstm_cell_551/BiasAddBiasAddlstm_416/lstm_cell_551/add:z:05lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_416/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_416/lstm_cell_551/splitSplit/lstm_416/lstm_cell_551/split/split_dim:output:0'lstm_416/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_416/lstm_cell_551/SigmoidSigmoid%lstm_416/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_416/lstm_cell_551/Sigmoid_1Sigmoid%lstm_416/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/mulMul$lstm_416/lstm_cell_551/Sigmoid_1:y:0lstm_416/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_416/lstm_cell_551/ReluRelu%lstm_416/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/mul_1Mul"lstm_416/lstm_cell_551/Sigmoid:y:0)lstm_416/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/add_1AddV2lstm_416/lstm_cell_551/mul:z:0 lstm_416/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_416/lstm_cell_551/Sigmoid_2Sigmoid%lstm_416/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_416/lstm_cell_551/Relu_1Relu lstm_416/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/mul_2Mul$lstm_416/lstm_cell_551/Sigmoid_2:y:0+lstm_416/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_416/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_416/TensorArrayV2_1TensorListReserve/lstm_416/TensorArrayV2_1/element_shape:output:0!lstm_416/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_416/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_416/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_416/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_416/whileWhile$lstm_416/while/loop_counter:output:0*lstm_416/while/maximum_iterations:output:0lstm_416/time:output:0!lstm_416/TensorArrayV2_1:handle:0lstm_416/zeros:output:0lstm_416/zeros_1:output:0!lstm_416/strided_slice_1:output:0@lstm_416/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_416_lstm_cell_551_matmul_readvariableop_resource7lstm_416_lstm_cell_551_matmul_1_readvariableop_resource6lstm_416_lstm_cell_551_biasadd_readvariableop_resource*
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
lstm_416_while_body_3337021*'
condR
lstm_416_while_cond_3337020*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_416/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_416/TensorArrayV2Stack/TensorListStackTensorListStacklstm_416/while:output:3Blstm_416/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_416/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_416/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_416/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_slice_3StridedSlice4lstm_416/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_416/strided_slice_3/stack:output:0)lstm_416/strided_slice_3/stack_1:output:0)lstm_416/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_416/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_416/transpose_1	Transpose4lstm_416/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_416/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_416/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_138/MatMul/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_138/MatMulMatMul!lstm_416/strided_slice_3:output:0'dense_138/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_138/BiasAdd/ReadVariableOpReadVariableOp)dense_138_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_138/BiasAddBiasAdddense_138/MatMul:product:0(dense_138/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_138/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_138/BiasAdd/ReadVariableOp ^dense_138/MatMul/ReadVariableOp.^lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp-^lstm_414/lstm_cell_549/MatMul/ReadVariableOp/^lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp^lstm_414/while.^lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp-^lstm_415/lstm_cell_550/MatMul/ReadVariableOp/^lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp^lstm_415/while.^lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp-^lstm_416/lstm_cell_551/MatMul/ReadVariableOp/^lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp^lstm_416/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_138/BiasAdd/ReadVariableOp dense_138/BiasAdd/ReadVariableOp2B
dense_138/MatMul/ReadVariableOpdense_138/MatMul/ReadVariableOp2^
-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp2\
,lstm_414/lstm_cell_549/MatMul/ReadVariableOp,lstm_414/lstm_cell_549/MatMul/ReadVariableOp2`
.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp2 
lstm_414/whilelstm_414/while2^
-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp2\
,lstm_415/lstm_cell_550/MatMul/ReadVariableOp,lstm_415/lstm_cell_550/MatMul/ReadVariableOp2`
.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp2 
lstm_415/whilelstm_415/while2^
-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp2\
,lstm_416/lstm_cell_551/MatMul/ReadVariableOp,lstm_416/lstm_cell_551/MatMul/ReadVariableOp2`
.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp2 
lstm_416/whilelstm_416/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3338589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_551_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_551_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_551_matmul_readvariableop_resource:2(F
4while_lstm_cell_551_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_551_biasadd_readvariableop_resource:(??*while/lstm_cell_551/BiasAdd/ReadVariableOp?)while/lstm_cell_551/MatMul/ReadVariableOp?+while/lstm_cell_551/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_551/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_551/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_551/addAddV2$while/lstm_cell_551/MatMul:product:0&while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_551/BiasAddBiasAddwhile/lstm_cell_551/add:z:02while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_551/splitSplit,while/lstm_cell_551/split/split_dim:output:0$while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_551/SigmoidSigmoid"while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_1Sigmoid"while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mulMul!while/lstm_cell_551/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_551/ReluRelu"while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_1Mulwhile/lstm_cell_551/Sigmoid:y:0&while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/add_1AddV2while/lstm_cell_551/mul:z:0while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_2Sigmoid"while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_551/Relu_1Reluwhile/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_2Mul!while/lstm_cell_551/Sigmoid_2:y:0(while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_551/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_551/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_551/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_551/BiasAdd/ReadVariableOp*^while/lstm_cell_551/MatMul/ReadVariableOp,^while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_551_biasadd_readvariableop_resource5while_lstm_cell_551_biasadd_readvariableop_resource_0"n
4while_lstm_cell_551_matmul_1_readvariableop_resource6while_lstm_cell_551_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_551_matmul_readvariableop_resource4while_lstm_cell_551_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_551/BiasAdd/ReadVariableOp*while/lstm_cell_551/BiasAdd/ReadVariableOp2V
)while/lstm_cell_551/MatMul/ReadVariableOp)while/lstm_cell_551/MatMul/ReadVariableOp2Z
+while/lstm_cell_551/MatMul_1/ReadVariableOp+while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_414_while_cond_3336742.
*lstm_414_while_lstm_414_while_loop_counter4
0lstm_414_while_lstm_414_while_maximum_iterations
lstm_414_while_placeholder 
lstm_414_while_placeholder_1 
lstm_414_while_placeholder_2 
lstm_414_while_placeholder_30
,lstm_414_while_less_lstm_414_strided_slice_1G
Clstm_414_while_lstm_414_while_cond_3336742___redundant_placeholder0G
Clstm_414_while_lstm_414_while_cond_3336742___redundant_placeholder1G
Clstm_414_while_lstm_414_while_cond_3336742___redundant_placeholder2G
Clstm_414_while_lstm_414_while_cond_3336742___redundant_placeholder3
lstm_414_while_identity
?
lstm_414/while/LessLesslstm_414_while_placeholder,lstm_414_while_less_lstm_414_strided_slice_1*
T0*
_output_shapes
: ]
lstm_414/while/IdentityIdentitylstm_414/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_414_while_identity lstm_414/while/Identity:output:0*(
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3334010

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
?
E__inference_lstm_416_layer_call_and_return_conditional_losses_3334793

inputs'
lstm_cell_551_3334711:2('
lstm_cell_551_3334713:
(#
lstm_cell_551_3334715:(
identity??%lstm_cell_551/StatefulPartitionedCall?while;
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
%lstm_cell_551/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_551_3334711lstm_cell_551_3334713lstm_cell_551_3334715*
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334710n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_551_3334711lstm_cell_551_3334713lstm_cell_551_3334715*
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
while_body_3334724*
condR
while_cond_3334723*K
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
NoOpNoOp&^lstm_cell_551/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_551/StatefulPartitionedCall%lstm_cell_551/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
??
?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336684

inputsH
5lstm_414_lstm_cell_549_matmul_readvariableop_resource:	?J
7lstm_414_lstm_cell_549_matmul_1_readvariableop_resource:	d?E
6lstm_414_lstm_cell_549_biasadd_readvariableop_resource:	?H
5lstm_415_lstm_cell_550_matmul_readvariableop_resource:	d?J
7lstm_415_lstm_cell_550_matmul_1_readvariableop_resource:	2?E
6lstm_415_lstm_cell_550_biasadd_readvariableop_resource:	?G
5lstm_416_lstm_cell_551_matmul_readvariableop_resource:2(I
7lstm_416_lstm_cell_551_matmul_1_readvariableop_resource:
(D
6lstm_416_lstm_cell_551_biasadd_readvariableop_resource:(:
(dense_138_matmul_readvariableop_resource:
7
)dense_138_biasadd_readvariableop_resource:
identity?? dense_138/BiasAdd/ReadVariableOp?dense_138/MatMul/ReadVariableOp?-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp?,lstm_414/lstm_cell_549/MatMul/ReadVariableOp?.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp?lstm_414/while?-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp?,lstm_415/lstm_cell_550/MatMul/ReadVariableOp?.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp?lstm_415/while?-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp?,lstm_416/lstm_cell_551/MatMul/ReadVariableOp?.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp?lstm_416/whileD
lstm_414/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_414/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_414/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_414/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_sliceStridedSlicelstm_414/Shape:output:0%lstm_414/strided_slice/stack:output:0'lstm_414/strided_slice/stack_1:output:0'lstm_414/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_414/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_414/zeros/packedPacklstm_414/strided_slice:output:0 lstm_414/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_414/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_414/zerosFilllstm_414/zeros/packed:output:0lstm_414/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_414/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_414/zeros_1/packedPacklstm_414/strided_slice:output:0"lstm_414/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_414/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_414/zeros_1Fill lstm_414/zeros_1/packed:output:0lstm_414/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_414/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_414/transpose	Transposeinputs lstm_414/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_414/Shape_1Shapelstm_414/transpose:y:0*
T0*
_output_shapes
:h
lstm_414/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_414/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_414/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_slice_1StridedSlicelstm_414/Shape_1:output:0'lstm_414/strided_slice_1/stack:output:0)lstm_414/strided_slice_1/stack_1:output:0)lstm_414/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_414/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_414/TensorArrayV2TensorListReserve-lstm_414/TensorArrayV2/element_shape:output:0!lstm_414/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_414/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_414/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_414/transpose:y:0Glstm_414/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_414/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_414/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_414/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_slice_2StridedSlicelstm_414/transpose:y:0'lstm_414/strided_slice_2/stack:output:0)lstm_414/strided_slice_2/stack_1:output:0)lstm_414/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_414/lstm_cell_549/MatMul/ReadVariableOpReadVariableOp5lstm_414_lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_414/lstm_cell_549/MatMulMatMul!lstm_414/strided_slice_2:output:04lstm_414/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOp7lstm_414_lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_414/lstm_cell_549/MatMul_1MatMullstm_414/zeros:output:06lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_414/lstm_cell_549/addAddV2'lstm_414/lstm_cell_549/MatMul:product:0)lstm_414/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOp6lstm_414_lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_414/lstm_cell_549/BiasAddBiasAddlstm_414/lstm_cell_549/add:z:05lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_414/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_414/lstm_cell_549/splitSplit/lstm_414/lstm_cell_549/split/split_dim:output:0'lstm_414/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_414/lstm_cell_549/SigmoidSigmoid%lstm_414/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_414/lstm_cell_549/Sigmoid_1Sigmoid%lstm_414/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/mulMul$lstm_414/lstm_cell_549/Sigmoid_1:y:0lstm_414/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_414/lstm_cell_549/ReluRelu%lstm_414/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/mul_1Mul"lstm_414/lstm_cell_549/Sigmoid:y:0)lstm_414/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/add_1AddV2lstm_414/lstm_cell_549/mul:z:0 lstm_414/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_414/lstm_cell_549/Sigmoid_2Sigmoid%lstm_414/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_414/lstm_cell_549/Relu_1Relu lstm_414/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_414/lstm_cell_549/mul_2Mul$lstm_414/lstm_cell_549/Sigmoid_2:y:0+lstm_414/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_414/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_414/TensorArrayV2_1TensorListReserve/lstm_414/TensorArrayV2_1/element_shape:output:0!lstm_414/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_414/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_414/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_414/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_414/whileWhile$lstm_414/while/loop_counter:output:0*lstm_414/while/maximum_iterations:output:0lstm_414/time:output:0!lstm_414/TensorArrayV2_1:handle:0lstm_414/zeros:output:0lstm_414/zeros_1:output:0!lstm_414/strided_slice_1:output:0@lstm_414/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_414_lstm_cell_549_matmul_readvariableop_resource7lstm_414_lstm_cell_549_matmul_1_readvariableop_resource6lstm_414_lstm_cell_549_biasadd_readvariableop_resource*
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
lstm_414_while_body_3336316*'
condR
lstm_414_while_cond_3336315*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_414/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_414/TensorArrayV2Stack/TensorListStackTensorListStacklstm_414/while:output:3Blstm_414/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_414/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_414/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_414/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_414/strided_slice_3StridedSlice4lstm_414/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_414/strided_slice_3/stack:output:0)lstm_414/strided_slice_3/stack_1:output:0)lstm_414/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_414/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_414/transpose_1	Transpose4lstm_414/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_414/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_414/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_415/ShapeShapelstm_414/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_415/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_415/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_415/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_sliceStridedSlicelstm_415/Shape:output:0%lstm_415/strided_slice/stack:output:0'lstm_415/strided_slice/stack_1:output:0'lstm_415/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_415/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_415/zeros/packedPacklstm_415/strided_slice:output:0 lstm_415/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_415/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_415/zerosFilllstm_415/zeros/packed:output:0lstm_415/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_415/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_415/zeros_1/packedPacklstm_415/strided_slice:output:0"lstm_415/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_415/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_415/zeros_1Fill lstm_415/zeros_1/packed:output:0lstm_415/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_415/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_415/transpose	Transposelstm_414/transpose_1:y:0 lstm_415/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_415/Shape_1Shapelstm_415/transpose:y:0*
T0*
_output_shapes
:h
lstm_415/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_415/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_415/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_slice_1StridedSlicelstm_415/Shape_1:output:0'lstm_415/strided_slice_1/stack:output:0)lstm_415/strided_slice_1/stack_1:output:0)lstm_415/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_415/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_415/TensorArrayV2TensorListReserve-lstm_415/TensorArrayV2/element_shape:output:0!lstm_415/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_415/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_415/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_415/transpose:y:0Glstm_415/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_415/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_415/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_415/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_slice_2StridedSlicelstm_415/transpose:y:0'lstm_415/strided_slice_2/stack:output:0)lstm_415/strided_slice_2/stack_1:output:0)lstm_415/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_415/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp5lstm_415_lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_415/lstm_cell_550/MatMulMatMul!lstm_415/strided_slice_2:output:04lstm_415/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp7lstm_415_lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_415/lstm_cell_550/MatMul_1MatMullstm_415/zeros:output:06lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_415/lstm_cell_550/addAddV2'lstm_415/lstm_cell_550/MatMul:product:0)lstm_415/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp6lstm_415_lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_415/lstm_cell_550/BiasAddBiasAddlstm_415/lstm_cell_550/add:z:05lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_415/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_415/lstm_cell_550/splitSplit/lstm_415/lstm_cell_550/split/split_dim:output:0'lstm_415/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_415/lstm_cell_550/SigmoidSigmoid%lstm_415/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_415/lstm_cell_550/Sigmoid_1Sigmoid%lstm_415/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/mulMul$lstm_415/lstm_cell_550/Sigmoid_1:y:0lstm_415/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_415/lstm_cell_550/ReluRelu%lstm_415/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/mul_1Mul"lstm_415/lstm_cell_550/Sigmoid:y:0)lstm_415/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/add_1AddV2lstm_415/lstm_cell_550/mul:z:0 lstm_415/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_415/lstm_cell_550/Sigmoid_2Sigmoid%lstm_415/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_415/lstm_cell_550/Relu_1Relu lstm_415/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_415/lstm_cell_550/mul_2Mul$lstm_415/lstm_cell_550/Sigmoid_2:y:0+lstm_415/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_415/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_415/TensorArrayV2_1TensorListReserve/lstm_415/TensorArrayV2_1/element_shape:output:0!lstm_415/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_415/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_415/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_415/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_415/whileWhile$lstm_415/while/loop_counter:output:0*lstm_415/while/maximum_iterations:output:0lstm_415/time:output:0!lstm_415/TensorArrayV2_1:handle:0lstm_415/zeros:output:0lstm_415/zeros_1:output:0!lstm_415/strided_slice_1:output:0@lstm_415/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_415_lstm_cell_550_matmul_readvariableop_resource7lstm_415_lstm_cell_550_matmul_1_readvariableop_resource6lstm_415_lstm_cell_550_biasadd_readvariableop_resource*
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
lstm_415_while_body_3336455*'
condR
lstm_415_while_cond_3336454*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_415/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_415/TensorArrayV2Stack/TensorListStackTensorListStacklstm_415/while:output:3Blstm_415/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_415/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_415/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_415/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_415/strided_slice_3StridedSlice4lstm_415/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_415/strided_slice_3/stack:output:0)lstm_415/strided_slice_3/stack_1:output:0)lstm_415/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_415/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_415/transpose_1	Transpose4lstm_415/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_415/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_415/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_416/ShapeShapelstm_415/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_sliceStridedSlicelstm_416/Shape:output:0%lstm_416/strided_slice/stack:output:0'lstm_416/strided_slice/stack_1:output:0'lstm_416/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_416/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_416/zeros/packedPacklstm_416/strided_slice:output:0 lstm_416/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_416/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_416/zerosFilllstm_416/zeros/packed:output:0lstm_416/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_416/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_416/zeros_1/packedPacklstm_416/strided_slice:output:0"lstm_416/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_416/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_416/zeros_1Fill lstm_416/zeros_1/packed:output:0lstm_416/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_416/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_416/transpose	Transposelstm_415/transpose_1:y:0 lstm_416/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_416/Shape_1Shapelstm_416/transpose:y:0*
T0*
_output_shapes
:h
lstm_416/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_416/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_416/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_slice_1StridedSlicelstm_416/Shape_1:output:0'lstm_416/strided_slice_1/stack:output:0)lstm_416/strided_slice_1/stack_1:output:0)lstm_416/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_416/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_416/TensorArrayV2TensorListReserve-lstm_416/TensorArrayV2/element_shape:output:0!lstm_416/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_416/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_416/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_416/transpose:y:0Glstm_416/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_416/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_416/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_416/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_slice_2StridedSlicelstm_416/transpose:y:0'lstm_416/strided_slice_2/stack:output:0)lstm_416/strided_slice_2/stack_1:output:0)lstm_416/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_416/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp5lstm_416_lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_416/lstm_cell_551/MatMulMatMul!lstm_416/strided_slice_2:output:04lstm_416/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp7lstm_416_lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_416/lstm_cell_551/MatMul_1MatMullstm_416/zeros:output:06lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_416/lstm_cell_551/addAddV2'lstm_416/lstm_cell_551/MatMul:product:0)lstm_416/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp6lstm_416_lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_416/lstm_cell_551/BiasAddBiasAddlstm_416/lstm_cell_551/add:z:05lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_416/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_416/lstm_cell_551/splitSplit/lstm_416/lstm_cell_551/split/split_dim:output:0'lstm_416/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_416/lstm_cell_551/SigmoidSigmoid%lstm_416/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_416/lstm_cell_551/Sigmoid_1Sigmoid%lstm_416/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/mulMul$lstm_416/lstm_cell_551/Sigmoid_1:y:0lstm_416/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_416/lstm_cell_551/ReluRelu%lstm_416/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/mul_1Mul"lstm_416/lstm_cell_551/Sigmoid:y:0)lstm_416/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/add_1AddV2lstm_416/lstm_cell_551/mul:z:0 lstm_416/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_416/lstm_cell_551/Sigmoid_2Sigmoid%lstm_416/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_416/lstm_cell_551/Relu_1Relu lstm_416/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_416/lstm_cell_551/mul_2Mul$lstm_416/lstm_cell_551/Sigmoid_2:y:0+lstm_416/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_416/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_416/TensorArrayV2_1TensorListReserve/lstm_416/TensorArrayV2_1/element_shape:output:0!lstm_416/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_416/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_416/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_416/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_416/whileWhile$lstm_416/while/loop_counter:output:0*lstm_416/while/maximum_iterations:output:0lstm_416/time:output:0!lstm_416/TensorArrayV2_1:handle:0lstm_416/zeros:output:0lstm_416/zeros_1:output:0!lstm_416/strided_slice_1:output:0@lstm_416/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_416_lstm_cell_551_matmul_readvariableop_resource7lstm_416_lstm_cell_551_matmul_1_readvariableop_resource6lstm_416_lstm_cell_551_biasadd_readvariableop_resource*
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
lstm_416_while_body_3336594*'
condR
lstm_416_while_cond_3336593*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_416/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_416/TensorArrayV2Stack/TensorListStackTensorListStacklstm_416/while:output:3Blstm_416/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_416/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_416/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_416/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_416/strided_slice_3StridedSlice4lstm_416/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_416/strided_slice_3/stack:output:0)lstm_416/strided_slice_3/stack_1:output:0)lstm_416/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_416/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_416/transpose_1	Transpose4lstm_416/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_416/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_416/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_138/MatMul/ReadVariableOpReadVariableOp(dense_138_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_138/MatMulMatMul!lstm_416/strided_slice_3:output:0'dense_138/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_138/BiasAdd/ReadVariableOpReadVariableOp)dense_138_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_138/BiasAddBiasAdddense_138/MatMul:product:0(dense_138/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_138/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_138/BiasAdd/ReadVariableOp ^dense_138/MatMul/ReadVariableOp.^lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp-^lstm_414/lstm_cell_549/MatMul/ReadVariableOp/^lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp^lstm_414/while.^lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp-^lstm_415/lstm_cell_550/MatMul/ReadVariableOp/^lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp^lstm_415/while.^lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp-^lstm_416/lstm_cell_551/MatMul/ReadVariableOp/^lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp^lstm_416/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_138/BiasAdd/ReadVariableOp dense_138/BiasAdd/ReadVariableOp2B
dense_138/MatMul/ReadVariableOpdense_138/MatMul/ReadVariableOp2^
-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp-lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp2\
,lstm_414/lstm_cell_549/MatMul/ReadVariableOp,lstm_414/lstm_cell_549/MatMul/ReadVariableOp2`
.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp.lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp2 
lstm_414/whilelstm_414/while2^
-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp-lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp2\
,lstm_415/lstm_cell_550/MatMul/ReadVariableOp,lstm_415/lstm_cell_550/MatMul/ReadVariableOp2`
.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp.lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp2 
lstm_415/whilelstm_415/while2^
-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp-lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp2\
,lstm_416/lstm_cell_551/MatMul/ReadVariableOp,lstm_416/lstm_cell_551/MatMul/ReadVariableOp2`
.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp.lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp2 
lstm_416/whilelstm_416/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_415_layer_call_fn_3337760

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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335292s
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
?#
?
while_body_3334374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_550_3334398_0:	d?0
while_lstm_cell_550_3334400_0:	2?,
while_lstm_cell_550_3334402_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_550_3334398:	d?.
while_lstm_cell_550_3334400:	2?*
while_lstm_cell_550_3334402:	???+while/lstm_cell_550/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_550/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_550_3334398_0while_lstm_cell_550_3334400_0while_lstm_cell_550_3334402_0*
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334360?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_550/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_550/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_550/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_550/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_550_3334398while_lstm_cell_550_3334398_0"<
while_lstm_cell_550_3334400while_lstm_cell_550_3334400_0"<
while_lstm_cell_550_3334402while_lstm_cell_550_3334402_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_550/StatefulPartitionedCall+while/lstm_cell_550/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334360

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
?C
?

lstm_415_while_body_3336455.
*lstm_415_while_lstm_415_while_loop_counter4
0lstm_415_while_lstm_415_while_maximum_iterations
lstm_415_while_placeholder 
lstm_415_while_placeholder_1 
lstm_415_while_placeholder_2 
lstm_415_while_placeholder_3-
)lstm_415_while_lstm_415_strided_slice_1_0i
elstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0:	d?R
?lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?M
>lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
lstm_415_while_identity
lstm_415_while_identity_1
lstm_415_while_identity_2
lstm_415_while_identity_3
lstm_415_while_identity_4
lstm_415_while_identity_5+
'lstm_415_while_lstm_415_strided_slice_1g
clstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensorN
;lstm_415_while_lstm_cell_550_matmul_readvariableop_resource:	d?P
=lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource:	2?K
<lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource:	???3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp?2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp?4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp?
@lstm_415/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_415/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensor_0lstm_415_while_placeholderIlstm_415/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp=lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_415/while/lstm_cell_550/MatMulMatMul9lstm_415/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp?lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_415/while/lstm_cell_550/MatMul_1MatMullstm_415_while_placeholder_2<lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_415/while/lstm_cell_550/addAddV2-lstm_415/while/lstm_cell_550/MatMul:product:0/lstm_415/while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp>lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_415/while/lstm_cell_550/BiasAddBiasAdd$lstm_415/while/lstm_cell_550/add:z:0;lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_415/while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_415/while/lstm_cell_550/splitSplit5lstm_415/while/lstm_cell_550/split/split_dim:output:0-lstm_415/while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_415/while/lstm_cell_550/SigmoidSigmoid+lstm_415/while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_415/while/lstm_cell_550/Sigmoid_1Sigmoid+lstm_415/while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_415/while/lstm_cell_550/mulMul*lstm_415/while/lstm_cell_550/Sigmoid_1:y:0lstm_415_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_415/while/lstm_cell_550/ReluRelu+lstm_415/while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_415/while/lstm_cell_550/mul_1Mul(lstm_415/while/lstm_cell_550/Sigmoid:y:0/lstm_415/while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_415/while/lstm_cell_550/add_1AddV2$lstm_415/while/lstm_cell_550/mul:z:0&lstm_415/while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_415/while/lstm_cell_550/Sigmoid_2Sigmoid+lstm_415/while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_415/while/lstm_cell_550/Relu_1Relu&lstm_415/while/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_415/while/lstm_cell_550/mul_2Mul*lstm_415/while/lstm_cell_550/Sigmoid_2:y:01lstm_415/while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_415/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_415_while_placeholder_1lstm_415_while_placeholder&lstm_415/while/lstm_cell_550/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_415/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_415/while/addAddV2lstm_415_while_placeholderlstm_415/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_415/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_415/while/add_1AddV2*lstm_415_while_lstm_415_while_loop_counterlstm_415/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_415/while/IdentityIdentitylstm_415/while/add_1:z:0^lstm_415/while/NoOp*
T0*
_output_shapes
: ?
lstm_415/while/Identity_1Identity0lstm_415_while_lstm_415_while_maximum_iterations^lstm_415/while/NoOp*
T0*
_output_shapes
: t
lstm_415/while/Identity_2Identitylstm_415/while/add:z:0^lstm_415/while/NoOp*
T0*
_output_shapes
: ?
lstm_415/while/Identity_3IdentityClstm_415/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_415/while/NoOp*
T0*
_output_shapes
: ?
lstm_415/while/Identity_4Identity&lstm_415/while/lstm_cell_550/mul_2:z:0^lstm_415/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_415/while/Identity_5Identity&lstm_415/while/lstm_cell_550/add_1:z:0^lstm_415/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_415/while/NoOpNoOp4^lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp3^lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp5^lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_415_while_identity lstm_415/while/Identity:output:0"?
lstm_415_while_identity_1"lstm_415/while/Identity_1:output:0"?
lstm_415_while_identity_2"lstm_415/while/Identity_2:output:0"?
lstm_415_while_identity_3"lstm_415/while/Identity_3:output:0"?
lstm_415_while_identity_4"lstm_415/while/Identity_4:output:0"?
lstm_415_while_identity_5"lstm_415/while/Identity_5:output:0"T
'lstm_415_while_lstm_415_strided_slice_1)lstm_415_while_lstm_415_strided_slice_1_0"~
<lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource>lstm_415_while_lstm_cell_550_biasadd_readvariableop_resource_0"?
=lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource?lstm_415_while_lstm_cell_550_matmul_1_readvariableop_resource_0"|
;lstm_415_while_lstm_cell_550_matmul_readvariableop_resource=lstm_415_while_lstm_cell_550_matmul_readvariableop_resource_0"?
clstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensorelstm_415_while_tensorarrayv2read_tensorlistgetitem_lstm_415_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp3lstm_415/while/lstm_cell_550/BiasAdd/ReadVariableOp2h
2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp2lstm_415/while/lstm_cell_550/MatMul/ReadVariableOp2l
4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp4lstm_415/while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3334915
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_551_3334939_0:2(/
while_lstm_cell_551_3334941_0:
(+
while_lstm_cell_551_3334943_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_551_3334939:2(-
while_lstm_cell_551_3334941:
()
while_lstm_cell_551_3334943:(??+while/lstm_cell_551/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_551/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_551_3334939_0while_lstm_cell_551_3334941_0while_lstm_cell_551_3334943_0*
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3334856?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_551/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_551/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_551/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_551/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_551_3334939while_lstm_cell_551_3334939_0"<
while_lstm_cell_551_3334941while_lstm_cell_551_3334941_0"<
while_lstm_cell_551_3334943while_lstm_cell_551_3334943_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_551/StatefulPartitionedCall+while/lstm_cell_551/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3338588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3338588___redundant_placeholder05
1while_while_cond_3338588___redundant_placeholder15
1while_while_cond_3338588___redundant_placeholder25
1while_while_cond_3338588___redundant_placeholder3
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
"__inference__wrapped_model_3333943
lstm_414_inputW
Dsequential_138_lstm_414_lstm_cell_549_matmul_readvariableop_resource:	?Y
Fsequential_138_lstm_414_lstm_cell_549_matmul_1_readvariableop_resource:	d?T
Esequential_138_lstm_414_lstm_cell_549_biasadd_readvariableop_resource:	?W
Dsequential_138_lstm_415_lstm_cell_550_matmul_readvariableop_resource:	d?Y
Fsequential_138_lstm_415_lstm_cell_550_matmul_1_readvariableop_resource:	2?T
Esequential_138_lstm_415_lstm_cell_550_biasadd_readvariableop_resource:	?V
Dsequential_138_lstm_416_lstm_cell_551_matmul_readvariableop_resource:2(X
Fsequential_138_lstm_416_lstm_cell_551_matmul_1_readvariableop_resource:
(S
Esequential_138_lstm_416_lstm_cell_551_biasadd_readvariableop_resource:(I
7sequential_138_dense_138_matmul_readvariableop_resource:
F
8sequential_138_dense_138_biasadd_readvariableop_resource:
identity??/sequential_138/dense_138/BiasAdd/ReadVariableOp?.sequential_138/dense_138/MatMul/ReadVariableOp?<sequential_138/lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp?;sequential_138/lstm_414/lstm_cell_549/MatMul/ReadVariableOp?=sequential_138/lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp?sequential_138/lstm_414/while?<sequential_138/lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp?;sequential_138/lstm_415/lstm_cell_550/MatMul/ReadVariableOp?=sequential_138/lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp?sequential_138/lstm_415/while?<sequential_138/lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp?;sequential_138/lstm_416/lstm_cell_551/MatMul/ReadVariableOp?=sequential_138/lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp?sequential_138/lstm_416/while[
sequential_138/lstm_414/ShapeShapelstm_414_input*
T0*
_output_shapes
:u
+sequential_138/lstm_414/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_138/lstm_414/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_138/lstm_414/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_138/lstm_414/strided_sliceStridedSlice&sequential_138/lstm_414/Shape:output:04sequential_138/lstm_414/strided_slice/stack:output:06sequential_138/lstm_414/strided_slice/stack_1:output:06sequential_138/lstm_414/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_138/lstm_414/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_138/lstm_414/zeros/packedPack.sequential_138/lstm_414/strided_slice:output:0/sequential_138/lstm_414/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_138/lstm_414/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_138/lstm_414/zerosFill-sequential_138/lstm_414/zeros/packed:output:0,sequential_138/lstm_414/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_138/lstm_414/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_138/lstm_414/zeros_1/packedPack.sequential_138/lstm_414/strided_slice:output:01sequential_138/lstm_414/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_138/lstm_414/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_138/lstm_414/zeros_1Fill/sequential_138/lstm_414/zeros_1/packed:output:0.sequential_138/lstm_414/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_138/lstm_414/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_138/lstm_414/transpose	Transposelstm_414_input/sequential_138/lstm_414/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_138/lstm_414/Shape_1Shape%sequential_138/lstm_414/transpose:y:0*
T0*
_output_shapes
:w
-sequential_138/lstm_414/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_414/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_138/lstm_414/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_414/strided_slice_1StridedSlice(sequential_138/lstm_414/Shape_1:output:06sequential_138/lstm_414/strided_slice_1/stack:output:08sequential_138/lstm_414/strided_slice_1/stack_1:output:08sequential_138/lstm_414/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_138/lstm_414/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_138/lstm_414/TensorArrayV2TensorListReserve<sequential_138/lstm_414/TensorArrayV2/element_shape:output:00sequential_138/lstm_414/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_138/lstm_414/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_138/lstm_414/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_138/lstm_414/transpose:y:0Vsequential_138/lstm_414/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_138/lstm_414/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_414/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_138/lstm_414/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_414/strided_slice_2StridedSlice%sequential_138/lstm_414/transpose:y:06sequential_138/lstm_414/strided_slice_2/stack:output:08sequential_138/lstm_414/strided_slice_2/stack_1:output:08sequential_138/lstm_414/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_138/lstm_414/lstm_cell_549/MatMul/ReadVariableOpReadVariableOpDsequential_138_lstm_414_lstm_cell_549_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_138/lstm_414/lstm_cell_549/MatMulMatMul0sequential_138/lstm_414/strided_slice_2:output:0Csequential_138/lstm_414/lstm_cell_549/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_138/lstm_414/lstm_cell_549/MatMul_1/ReadVariableOpReadVariableOpFsequential_138_lstm_414_lstm_cell_549_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_138/lstm_414/lstm_cell_549/MatMul_1MatMul&sequential_138/lstm_414/zeros:output:0Esequential_138/lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_138/lstm_414/lstm_cell_549/addAddV26sequential_138/lstm_414/lstm_cell_549/MatMul:product:08sequential_138/lstm_414/lstm_cell_549/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_138/lstm_414/lstm_cell_549/BiasAdd/ReadVariableOpReadVariableOpEsequential_138_lstm_414_lstm_cell_549_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_138/lstm_414/lstm_cell_549/BiasAddBiasAdd-sequential_138/lstm_414/lstm_cell_549/add:z:0Dsequential_138/lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_138/lstm_414/lstm_cell_549/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_138/lstm_414/lstm_cell_549/splitSplit>sequential_138/lstm_414/lstm_cell_549/split/split_dim:output:06sequential_138/lstm_414/lstm_cell_549/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_138/lstm_414/lstm_cell_549/SigmoidSigmoid4sequential_138/lstm_414/lstm_cell_549/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_138/lstm_414/lstm_cell_549/Sigmoid_1Sigmoid4sequential_138/lstm_414/lstm_cell_549/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_138/lstm_414/lstm_cell_549/mulMul3sequential_138/lstm_414/lstm_cell_549/Sigmoid_1:y:0(sequential_138/lstm_414/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_138/lstm_414/lstm_cell_549/ReluRelu4sequential_138/lstm_414/lstm_cell_549/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_138/lstm_414/lstm_cell_549/mul_1Mul1sequential_138/lstm_414/lstm_cell_549/Sigmoid:y:08sequential_138/lstm_414/lstm_cell_549/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_138/lstm_414/lstm_cell_549/add_1AddV2-sequential_138/lstm_414/lstm_cell_549/mul:z:0/sequential_138/lstm_414/lstm_cell_549/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_138/lstm_414/lstm_cell_549/Sigmoid_2Sigmoid4sequential_138/lstm_414/lstm_cell_549/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_138/lstm_414/lstm_cell_549/Relu_1Relu/sequential_138/lstm_414/lstm_cell_549/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_138/lstm_414/lstm_cell_549/mul_2Mul3sequential_138/lstm_414/lstm_cell_549/Sigmoid_2:y:0:sequential_138/lstm_414/lstm_cell_549/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_138/lstm_414/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_138/lstm_414/TensorArrayV2_1TensorListReserve>sequential_138/lstm_414/TensorArrayV2_1/element_shape:output:00sequential_138/lstm_414/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_138/lstm_414/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_138/lstm_414/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_138/lstm_414/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_138/lstm_414/whileWhile3sequential_138/lstm_414/while/loop_counter:output:09sequential_138/lstm_414/while/maximum_iterations:output:0%sequential_138/lstm_414/time:output:00sequential_138/lstm_414/TensorArrayV2_1:handle:0&sequential_138/lstm_414/zeros:output:0(sequential_138/lstm_414/zeros_1:output:00sequential_138/lstm_414/strided_slice_1:output:0Osequential_138/lstm_414/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_138_lstm_414_lstm_cell_549_matmul_readvariableop_resourceFsequential_138_lstm_414_lstm_cell_549_matmul_1_readvariableop_resourceEsequential_138_lstm_414_lstm_cell_549_biasadd_readvariableop_resource*
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
*sequential_138_lstm_414_while_body_3333575*6
cond.R,
*sequential_138_lstm_414_while_cond_3333574*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_138/lstm_414/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_138/lstm_414/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_138/lstm_414/while:output:3Qsequential_138/lstm_414/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_138/lstm_414/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_138/lstm_414/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_414/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_414/strided_slice_3StridedSliceCsequential_138/lstm_414/TensorArrayV2Stack/TensorListStack:tensor:06sequential_138/lstm_414/strided_slice_3/stack:output:08sequential_138/lstm_414/strided_slice_3/stack_1:output:08sequential_138/lstm_414/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_138/lstm_414/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_138/lstm_414/transpose_1	TransposeCsequential_138/lstm_414/TensorArrayV2Stack/TensorListStack:tensor:01sequential_138/lstm_414/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_138/lstm_414/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_138/lstm_415/ShapeShape'sequential_138/lstm_414/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_138/lstm_415/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_138/lstm_415/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_138/lstm_415/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_138/lstm_415/strided_sliceStridedSlice&sequential_138/lstm_415/Shape:output:04sequential_138/lstm_415/strided_slice/stack:output:06sequential_138/lstm_415/strided_slice/stack_1:output:06sequential_138/lstm_415/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_138/lstm_415/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_138/lstm_415/zeros/packedPack.sequential_138/lstm_415/strided_slice:output:0/sequential_138/lstm_415/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_138/lstm_415/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_138/lstm_415/zerosFill-sequential_138/lstm_415/zeros/packed:output:0,sequential_138/lstm_415/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_138/lstm_415/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_138/lstm_415/zeros_1/packedPack.sequential_138/lstm_415/strided_slice:output:01sequential_138/lstm_415/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_138/lstm_415/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_138/lstm_415/zeros_1Fill/sequential_138/lstm_415/zeros_1/packed:output:0.sequential_138/lstm_415/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_138/lstm_415/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_138/lstm_415/transpose	Transpose'sequential_138/lstm_414/transpose_1:y:0/sequential_138/lstm_415/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_138/lstm_415/Shape_1Shape%sequential_138/lstm_415/transpose:y:0*
T0*
_output_shapes
:w
-sequential_138/lstm_415/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_415/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_138/lstm_415/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_415/strided_slice_1StridedSlice(sequential_138/lstm_415/Shape_1:output:06sequential_138/lstm_415/strided_slice_1/stack:output:08sequential_138/lstm_415/strided_slice_1/stack_1:output:08sequential_138/lstm_415/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_138/lstm_415/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_138/lstm_415/TensorArrayV2TensorListReserve<sequential_138/lstm_415/TensorArrayV2/element_shape:output:00sequential_138/lstm_415/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_138/lstm_415/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_138/lstm_415/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_138/lstm_415/transpose:y:0Vsequential_138/lstm_415/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_138/lstm_415/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_415/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_138/lstm_415/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_415/strided_slice_2StridedSlice%sequential_138/lstm_415/transpose:y:06sequential_138/lstm_415/strided_slice_2/stack:output:08sequential_138/lstm_415/strided_slice_2/stack_1:output:08sequential_138/lstm_415/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_138/lstm_415/lstm_cell_550/MatMul/ReadVariableOpReadVariableOpDsequential_138_lstm_415_lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_138/lstm_415/lstm_cell_550/MatMulMatMul0sequential_138/lstm_415/strided_slice_2:output:0Csequential_138/lstm_415/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_138/lstm_415/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOpFsequential_138_lstm_415_lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_138/lstm_415/lstm_cell_550/MatMul_1MatMul&sequential_138/lstm_415/zeros:output:0Esequential_138/lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_138/lstm_415/lstm_cell_550/addAddV26sequential_138/lstm_415/lstm_cell_550/MatMul:product:08sequential_138/lstm_415/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_138/lstm_415/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOpEsequential_138_lstm_415_lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_138/lstm_415/lstm_cell_550/BiasAddBiasAdd-sequential_138/lstm_415/lstm_cell_550/add:z:0Dsequential_138/lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_138/lstm_415/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_138/lstm_415/lstm_cell_550/splitSplit>sequential_138/lstm_415/lstm_cell_550/split/split_dim:output:06sequential_138/lstm_415/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_138/lstm_415/lstm_cell_550/SigmoidSigmoid4sequential_138/lstm_415/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_138/lstm_415/lstm_cell_550/Sigmoid_1Sigmoid4sequential_138/lstm_415/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_138/lstm_415/lstm_cell_550/mulMul3sequential_138/lstm_415/lstm_cell_550/Sigmoid_1:y:0(sequential_138/lstm_415/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_138/lstm_415/lstm_cell_550/ReluRelu4sequential_138/lstm_415/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_138/lstm_415/lstm_cell_550/mul_1Mul1sequential_138/lstm_415/lstm_cell_550/Sigmoid:y:08sequential_138/lstm_415/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_138/lstm_415/lstm_cell_550/add_1AddV2-sequential_138/lstm_415/lstm_cell_550/mul:z:0/sequential_138/lstm_415/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_138/lstm_415/lstm_cell_550/Sigmoid_2Sigmoid4sequential_138/lstm_415/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_138/lstm_415/lstm_cell_550/Relu_1Relu/sequential_138/lstm_415/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_138/lstm_415/lstm_cell_550/mul_2Mul3sequential_138/lstm_415/lstm_cell_550/Sigmoid_2:y:0:sequential_138/lstm_415/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_138/lstm_415/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_138/lstm_415/TensorArrayV2_1TensorListReserve>sequential_138/lstm_415/TensorArrayV2_1/element_shape:output:00sequential_138/lstm_415/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_138/lstm_415/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_138/lstm_415/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_138/lstm_415/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_138/lstm_415/whileWhile3sequential_138/lstm_415/while/loop_counter:output:09sequential_138/lstm_415/while/maximum_iterations:output:0%sequential_138/lstm_415/time:output:00sequential_138/lstm_415/TensorArrayV2_1:handle:0&sequential_138/lstm_415/zeros:output:0(sequential_138/lstm_415/zeros_1:output:00sequential_138/lstm_415/strided_slice_1:output:0Osequential_138/lstm_415/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_138_lstm_415_lstm_cell_550_matmul_readvariableop_resourceFsequential_138_lstm_415_lstm_cell_550_matmul_1_readvariableop_resourceEsequential_138_lstm_415_lstm_cell_550_biasadd_readvariableop_resource*
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
*sequential_138_lstm_415_while_body_3333714*6
cond.R,
*sequential_138_lstm_415_while_cond_3333713*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_138/lstm_415/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_138/lstm_415/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_138/lstm_415/while:output:3Qsequential_138/lstm_415/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_138/lstm_415/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_138/lstm_415/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_415/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_415/strided_slice_3StridedSliceCsequential_138/lstm_415/TensorArrayV2Stack/TensorListStack:tensor:06sequential_138/lstm_415/strided_slice_3/stack:output:08sequential_138/lstm_415/strided_slice_3/stack_1:output:08sequential_138/lstm_415/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_138/lstm_415/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_138/lstm_415/transpose_1	TransposeCsequential_138/lstm_415/TensorArrayV2Stack/TensorListStack:tensor:01sequential_138/lstm_415/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_138/lstm_415/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_138/lstm_416/ShapeShape'sequential_138/lstm_415/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_138/lstm_416/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_138/lstm_416/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_138/lstm_416/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_138/lstm_416/strided_sliceStridedSlice&sequential_138/lstm_416/Shape:output:04sequential_138/lstm_416/strided_slice/stack:output:06sequential_138/lstm_416/strided_slice/stack_1:output:06sequential_138/lstm_416/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_138/lstm_416/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_138/lstm_416/zeros/packedPack.sequential_138/lstm_416/strided_slice:output:0/sequential_138/lstm_416/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_138/lstm_416/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_138/lstm_416/zerosFill-sequential_138/lstm_416/zeros/packed:output:0,sequential_138/lstm_416/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_138/lstm_416/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_138/lstm_416/zeros_1/packedPack.sequential_138/lstm_416/strided_slice:output:01sequential_138/lstm_416/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_138/lstm_416/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_138/lstm_416/zeros_1Fill/sequential_138/lstm_416/zeros_1/packed:output:0.sequential_138/lstm_416/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_138/lstm_416/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_138/lstm_416/transpose	Transpose'sequential_138/lstm_415/transpose_1:y:0/sequential_138/lstm_416/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_138/lstm_416/Shape_1Shape%sequential_138/lstm_416/transpose:y:0*
T0*
_output_shapes
:w
-sequential_138/lstm_416/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_416/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_138/lstm_416/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_416/strided_slice_1StridedSlice(sequential_138/lstm_416/Shape_1:output:06sequential_138/lstm_416/strided_slice_1/stack:output:08sequential_138/lstm_416/strided_slice_1/stack_1:output:08sequential_138/lstm_416/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_138/lstm_416/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_138/lstm_416/TensorArrayV2TensorListReserve<sequential_138/lstm_416/TensorArrayV2/element_shape:output:00sequential_138/lstm_416/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_138/lstm_416/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_138/lstm_416/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_138/lstm_416/transpose:y:0Vsequential_138/lstm_416/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_138/lstm_416/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_416/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_138/lstm_416/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_416/strided_slice_2StridedSlice%sequential_138/lstm_416/transpose:y:06sequential_138/lstm_416/strided_slice_2/stack:output:08sequential_138/lstm_416/strided_slice_2/stack_1:output:08sequential_138/lstm_416/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_138/lstm_416/lstm_cell_551/MatMul/ReadVariableOpReadVariableOpDsequential_138_lstm_416_lstm_cell_551_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_138/lstm_416/lstm_cell_551/MatMulMatMul0sequential_138/lstm_416/strided_slice_2:output:0Csequential_138/lstm_416/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_138/lstm_416/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOpFsequential_138_lstm_416_lstm_cell_551_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_138/lstm_416/lstm_cell_551/MatMul_1MatMul&sequential_138/lstm_416/zeros:output:0Esequential_138/lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_138/lstm_416/lstm_cell_551/addAddV26sequential_138/lstm_416/lstm_cell_551/MatMul:product:08sequential_138/lstm_416/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_138/lstm_416/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOpEsequential_138_lstm_416_lstm_cell_551_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_138/lstm_416/lstm_cell_551/BiasAddBiasAdd-sequential_138/lstm_416/lstm_cell_551/add:z:0Dsequential_138/lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_138/lstm_416/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_138/lstm_416/lstm_cell_551/splitSplit>sequential_138/lstm_416/lstm_cell_551/split/split_dim:output:06sequential_138/lstm_416/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_138/lstm_416/lstm_cell_551/SigmoidSigmoid4sequential_138/lstm_416/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_138/lstm_416/lstm_cell_551/Sigmoid_1Sigmoid4sequential_138/lstm_416/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_138/lstm_416/lstm_cell_551/mulMul3sequential_138/lstm_416/lstm_cell_551/Sigmoid_1:y:0(sequential_138/lstm_416/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_138/lstm_416/lstm_cell_551/ReluRelu4sequential_138/lstm_416/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_138/lstm_416/lstm_cell_551/mul_1Mul1sequential_138/lstm_416/lstm_cell_551/Sigmoid:y:08sequential_138/lstm_416/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_138/lstm_416/lstm_cell_551/add_1AddV2-sequential_138/lstm_416/lstm_cell_551/mul:z:0/sequential_138/lstm_416/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_138/lstm_416/lstm_cell_551/Sigmoid_2Sigmoid4sequential_138/lstm_416/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_138/lstm_416/lstm_cell_551/Relu_1Relu/sequential_138/lstm_416/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_138/lstm_416/lstm_cell_551/mul_2Mul3sequential_138/lstm_416/lstm_cell_551/Sigmoid_2:y:0:sequential_138/lstm_416/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_138/lstm_416/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_138/lstm_416/TensorArrayV2_1TensorListReserve>sequential_138/lstm_416/TensorArrayV2_1/element_shape:output:00sequential_138/lstm_416/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_138/lstm_416/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_138/lstm_416/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_138/lstm_416/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_138/lstm_416/whileWhile3sequential_138/lstm_416/while/loop_counter:output:09sequential_138/lstm_416/while/maximum_iterations:output:0%sequential_138/lstm_416/time:output:00sequential_138/lstm_416/TensorArrayV2_1:handle:0&sequential_138/lstm_416/zeros:output:0(sequential_138/lstm_416/zeros_1:output:00sequential_138/lstm_416/strided_slice_1:output:0Osequential_138/lstm_416/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_138_lstm_416_lstm_cell_551_matmul_readvariableop_resourceFsequential_138_lstm_416_lstm_cell_551_matmul_1_readvariableop_resourceEsequential_138_lstm_416_lstm_cell_551_biasadd_readvariableop_resource*
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
*sequential_138_lstm_416_while_body_3333853*6
cond.R,
*sequential_138_lstm_416_while_cond_3333852*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_138/lstm_416/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_138/lstm_416/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_138/lstm_416/while:output:3Qsequential_138/lstm_416/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_138/lstm_416/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_138/lstm_416/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_138/lstm_416/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_138/lstm_416/strided_slice_3StridedSliceCsequential_138/lstm_416/TensorArrayV2Stack/TensorListStack:tensor:06sequential_138/lstm_416/strided_slice_3/stack:output:08sequential_138/lstm_416/strided_slice_3/stack_1:output:08sequential_138/lstm_416/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_138/lstm_416/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_138/lstm_416/transpose_1	TransposeCsequential_138/lstm_416/TensorArrayV2Stack/TensorListStack:tensor:01sequential_138/lstm_416/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_138/lstm_416/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_138/dense_138/MatMul/ReadVariableOpReadVariableOp7sequential_138_dense_138_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_138/dense_138/MatMulMatMul0sequential_138/lstm_416/strided_slice_3:output:06sequential_138/dense_138/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_138/dense_138/BiasAdd/ReadVariableOpReadVariableOp8sequential_138_dense_138_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_138/dense_138/BiasAddBiasAdd)sequential_138/dense_138/MatMul:product:07sequential_138/dense_138/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_138/dense_138/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_138/dense_138/BiasAdd/ReadVariableOp/^sequential_138/dense_138/MatMul/ReadVariableOp=^sequential_138/lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp<^sequential_138/lstm_414/lstm_cell_549/MatMul/ReadVariableOp>^sequential_138/lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp^sequential_138/lstm_414/while=^sequential_138/lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp<^sequential_138/lstm_415/lstm_cell_550/MatMul/ReadVariableOp>^sequential_138/lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp^sequential_138/lstm_415/while=^sequential_138/lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp<^sequential_138/lstm_416/lstm_cell_551/MatMul/ReadVariableOp>^sequential_138/lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp^sequential_138/lstm_416/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_138/dense_138/BiasAdd/ReadVariableOp/sequential_138/dense_138/BiasAdd/ReadVariableOp2`
.sequential_138/dense_138/MatMul/ReadVariableOp.sequential_138/dense_138/MatMul/ReadVariableOp2|
<sequential_138/lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp<sequential_138/lstm_414/lstm_cell_549/BiasAdd/ReadVariableOp2z
;sequential_138/lstm_414/lstm_cell_549/MatMul/ReadVariableOp;sequential_138/lstm_414/lstm_cell_549/MatMul/ReadVariableOp2~
=sequential_138/lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp=sequential_138/lstm_414/lstm_cell_549/MatMul_1/ReadVariableOp2>
sequential_138/lstm_414/whilesequential_138/lstm_414/while2|
<sequential_138/lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp<sequential_138/lstm_415/lstm_cell_550/BiasAdd/ReadVariableOp2z
;sequential_138/lstm_415/lstm_cell_550/MatMul/ReadVariableOp;sequential_138/lstm_415/lstm_cell_550/MatMul/ReadVariableOp2~
=sequential_138/lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp=sequential_138/lstm_415/lstm_cell_550/MatMul_1/ReadVariableOp2>
sequential_138/lstm_415/whilesequential_138/lstm_415/while2|
<sequential_138/lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp<sequential_138/lstm_416/lstm_cell_551/BiasAdd/ReadVariableOp2z
;sequential_138/lstm_416/lstm_cell_551/MatMul/ReadVariableOp;sequential_138/lstm_416/lstm_cell_551/MatMul/ReadVariableOp2~
=sequential_138/lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp=sequential_138/lstm_416/lstm_cell_551/MatMul_1/ReadVariableOp2>
sequential_138/lstm_416/whilesequential_138/lstm_416/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_414_input
?C
?

lstm_416_while_body_3337021.
*lstm_416_while_lstm_416_while_loop_counter4
0lstm_416_while_lstm_416_while_maximum_iterations
lstm_416_while_placeholder 
lstm_416_while_placeholder_1 
lstm_416_while_placeholder_2 
lstm_416_while_placeholder_3-
)lstm_416_while_lstm_416_strided_slice_1_0i
elstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0:2(Q
?lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(L
>lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0:(
lstm_416_while_identity
lstm_416_while_identity_1
lstm_416_while_identity_2
lstm_416_while_identity_3
lstm_416_while_identity_4
lstm_416_while_identity_5+
'lstm_416_while_lstm_416_strided_slice_1g
clstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensorM
;lstm_416_while_lstm_cell_551_matmul_readvariableop_resource:2(O
=lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource:
(J
<lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource:(??3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp?2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp?4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp?
@lstm_416/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_416/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensor_0lstm_416_while_placeholderIlstm_416/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp=lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_416/while/lstm_cell_551/MatMulMatMul9lstm_416/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp?lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_416/while/lstm_cell_551/MatMul_1MatMullstm_416_while_placeholder_2<lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_416/while/lstm_cell_551/addAddV2-lstm_416/while/lstm_cell_551/MatMul:product:0/lstm_416/while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp>lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_416/while/lstm_cell_551/BiasAddBiasAdd$lstm_416/while/lstm_cell_551/add:z:0;lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_416/while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_416/while/lstm_cell_551/splitSplit5lstm_416/while/lstm_cell_551/split/split_dim:output:0-lstm_416/while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_416/while/lstm_cell_551/SigmoidSigmoid+lstm_416/while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_416/while/lstm_cell_551/Sigmoid_1Sigmoid+lstm_416/while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_416/while/lstm_cell_551/mulMul*lstm_416/while/lstm_cell_551/Sigmoid_1:y:0lstm_416_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_416/while/lstm_cell_551/ReluRelu+lstm_416/while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_416/while/lstm_cell_551/mul_1Mul(lstm_416/while/lstm_cell_551/Sigmoid:y:0/lstm_416/while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_416/while/lstm_cell_551/add_1AddV2$lstm_416/while/lstm_cell_551/mul:z:0&lstm_416/while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_416/while/lstm_cell_551/Sigmoid_2Sigmoid+lstm_416/while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_416/while/lstm_cell_551/Relu_1Relu&lstm_416/while/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_416/while/lstm_cell_551/mul_2Mul*lstm_416/while/lstm_cell_551/Sigmoid_2:y:01lstm_416/while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_416/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_416_while_placeholder_1lstm_416_while_placeholder&lstm_416/while/lstm_cell_551/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_416/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_416/while/addAddV2lstm_416_while_placeholderlstm_416/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_416/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_416/while/add_1AddV2*lstm_416_while_lstm_416_while_loop_counterlstm_416/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_416/while/IdentityIdentitylstm_416/while/add_1:z:0^lstm_416/while/NoOp*
T0*
_output_shapes
: ?
lstm_416/while/Identity_1Identity0lstm_416_while_lstm_416_while_maximum_iterations^lstm_416/while/NoOp*
T0*
_output_shapes
: t
lstm_416/while/Identity_2Identitylstm_416/while/add:z:0^lstm_416/while/NoOp*
T0*
_output_shapes
: ?
lstm_416/while/Identity_3IdentityClstm_416/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_416/while/NoOp*
T0*
_output_shapes
: ?
lstm_416/while/Identity_4Identity&lstm_416/while/lstm_cell_551/mul_2:z:0^lstm_416/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_416/while/Identity_5Identity&lstm_416/while/lstm_cell_551/add_1:z:0^lstm_416/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_416/while/NoOpNoOp4^lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp3^lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp5^lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_416_while_identity lstm_416/while/Identity:output:0"?
lstm_416_while_identity_1"lstm_416/while/Identity_1:output:0"?
lstm_416_while_identity_2"lstm_416/while/Identity_2:output:0"?
lstm_416_while_identity_3"lstm_416/while/Identity_3:output:0"?
lstm_416_while_identity_4"lstm_416/while/Identity_4:output:0"?
lstm_416_while_identity_5"lstm_416/while/Identity_5:output:0"T
'lstm_416_while_lstm_416_strided_slice_1)lstm_416_while_lstm_416_strided_slice_1_0"~
<lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource>lstm_416_while_lstm_cell_551_biasadd_readvariableop_resource_0"?
=lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource?lstm_416_while_lstm_cell_551_matmul_1_readvariableop_resource_0"|
;lstm_416_while_lstm_cell_551_matmul_readvariableop_resource=lstm_416_while_lstm_cell_551_matmul_readvariableop_resource_0"?
clstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensorelstm_416_while_tensorarrayv2read_tensorlistgetitem_lstm_416_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp3lstm_416/while/lstm_cell_551/BiasAdd/ReadVariableOp2h
2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp2lstm_416/while/lstm_cell_551/MatMul/ReadVariableOp2l
4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp4lstm_416/while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338057
inputs_0?
,lstm_cell_550_matmul_readvariableop_resource:	d?A
.lstm_cell_550_matmul_1_readvariableop_resource:	2?<
-lstm_cell_550_biasadd_readvariableop_resource:	?
identity??$lstm_cell_550/BiasAdd/ReadVariableOp?#lstm_cell_550/MatMul/ReadVariableOp?%lstm_cell_550/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_550/MatMul/ReadVariableOpReadVariableOp,lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_550/MatMulMatMulstrided_slice_2:output:0+lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_550/MatMul_1MatMulzeros:output:0-lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_550/addAddV2lstm_cell_550/MatMul:product:0 lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_550/BiasAddBiasAddlstm_cell_550/add:z:0,lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_550/splitSplit&lstm_cell_550/split/split_dim:output:0lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_550/SigmoidSigmoidlstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_1Sigmoidlstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_550/mulMullstm_cell_550/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_550/ReluRelulstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_1Mullstm_cell_550/Sigmoid:y:0 lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_550/add_1AddV2lstm_cell_550/mul:z:0lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_2Sigmoidlstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_550/Relu_1Relulstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_2Mullstm_cell_550/Sigmoid_2:y:0"lstm_cell_550/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_550_matmul_readvariableop_resource.lstm_cell_550_matmul_1_readvariableop_resource-lstm_cell_550_biasadd_readvariableop_resource*
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
while_body_3337973*
condR
while_cond_3337972*K
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
NoOpNoOp%^lstm_cell_550/BiasAdd/ReadVariableOp$^lstm_cell_550/MatMul/ReadVariableOp&^lstm_cell_550/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_550/BiasAdd/ReadVariableOp$lstm_cell_550/BiasAdd/ReadVariableOp2J
#lstm_cell_550/MatMul/ReadVariableOp#lstm_cell_550/MatMul/ReadVariableOp2N
%lstm_cell_550/MatMul_1/ReadVariableOp%lstm_cell_550/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_3337830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_550_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_550_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_550_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_550_matmul_readvariableop_resource:	d?G
4while_lstm_cell_550_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_550_biasadd_readvariableop_resource:	???*while/lstm_cell_550/BiasAdd/ReadVariableOp?)while/lstm_cell_550/MatMul/ReadVariableOp?+while/lstm_cell_550/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_550/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_550_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_550/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_550_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_550/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_550/addAddV2$while/lstm_cell_550/MatMul:product:0&while/lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_550_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_550/BiasAddBiasAddwhile/lstm_cell_550/add:z:02while/lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_550/splitSplit,while/lstm_cell_550/split/split_dim:output:0$while/lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_550/SigmoidSigmoid"while/lstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_1Sigmoid"while/lstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mulMul!while/lstm_cell_550/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_550/ReluRelu"while/lstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_1Mulwhile/lstm_cell_550/Sigmoid:y:0&while/lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/add_1AddV2while/lstm_cell_550/mul:z:0while/lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_550/Sigmoid_2Sigmoid"while/lstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_550/Relu_1Reluwhile/lstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_550/mul_2Mul!while/lstm_cell_550/Sigmoid_2:y:0(while/lstm_cell_550/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_550/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_550/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_550/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_550/BiasAdd/ReadVariableOp*^while/lstm_cell_550/MatMul/ReadVariableOp,^while/lstm_cell_550/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_550_biasadd_readvariableop_resource5while_lstm_cell_550_biasadd_readvariableop_resource_0"n
4while_lstm_cell_550_matmul_1_readvariableop_resource6while_lstm_cell_550_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_550_matmul_readvariableop_resource4while_lstm_cell_550_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_550/BiasAdd/ReadVariableOp*while/lstm_cell_550/BiasAdd/ReadVariableOp2V
)while/lstm_cell_550/MatMul/ReadVariableOp)while/lstm_cell_550/MatMul/ReadVariableOp2Z
+while/lstm_cell_550/MatMul_1/ReadVariableOp+while/lstm_cell_550/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3339076

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
while_body_3338875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_551_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_551_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_551_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_551_matmul_readvariableop_resource:2(F
4while_lstm_cell_551_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_551_biasadd_readvariableop_resource:(??*while/lstm_cell_551/BiasAdd/ReadVariableOp?)while/lstm_cell_551/MatMul/ReadVariableOp?+while/lstm_cell_551/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_551/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_551_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_551/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_551/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_551/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_551_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_551/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_551/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_551/addAddV2$while/lstm_cell_551/MatMul:product:0&while/lstm_cell_551/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_551/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_551_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_551/BiasAddBiasAddwhile/lstm_cell_551/add:z:02while/lstm_cell_551/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_551/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_551/splitSplit,while/lstm_cell_551/split/split_dim:output:0$while/lstm_cell_551/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_551/SigmoidSigmoid"while/lstm_cell_551/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_1Sigmoid"while/lstm_cell_551/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mulMul!while/lstm_cell_551/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_551/ReluRelu"while/lstm_cell_551/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_1Mulwhile/lstm_cell_551/Sigmoid:y:0&while/lstm_cell_551/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/add_1AddV2while/lstm_cell_551/mul:z:0while/lstm_cell_551/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_551/Sigmoid_2Sigmoid"while/lstm_cell_551/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_551/Relu_1Reluwhile/lstm_cell_551/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_551/mul_2Mul!while/lstm_cell_551/Sigmoid_2:y:0(while/lstm_cell_551/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_551/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_551/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_551/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_551/BiasAdd/ReadVariableOp*^while/lstm_cell_551/MatMul/ReadVariableOp,^while/lstm_cell_551/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_551_biasadd_readvariableop_resource5while_lstm_cell_551_biasadd_readvariableop_resource_0"n
4while_lstm_cell_551_matmul_1_readvariableop_resource6while_lstm_cell_551_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_551_matmul_readvariableop_resource4while_lstm_cell_551_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_551/BiasAdd/ReadVariableOp*while/lstm_cell_551/BiasAdd/ReadVariableOp2V
)while/lstm_cell_551/MatMul/ReadVariableOp)while/lstm_cell_551/MatMul/ReadVariableOp2Z
+while/lstm_cell_551/MatMul_1/ReadVariableOp+while/lstm_cell_551/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3334565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_550_3334589_0:	d?0
while_lstm_cell_550_3334591_0:	2?,
while_lstm_cell_550_3334593_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_550_3334589:	d?.
while_lstm_cell_550_3334591:	2?*
while_lstm_cell_550_3334593:	???+while/lstm_cell_550/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_550/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_550_3334589_0while_lstm_cell_550_3334591_0while_lstm_cell_550_3334593_0*
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3334506?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_550/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_550/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_550/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_550/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_550_3334589while_lstm_cell_550_3334589_0"<
while_lstm_cell_550_3334591while_lstm_cell_550_3334591_0"<
while_lstm_cell_550_3334593while_lstm_cell_550_3334593_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_550/StatefulPartitionedCall+while/lstm_cell_550/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_416_layer_call_fn_3338354
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3334793o
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
?J
?
E__inference_lstm_415_layer_call_and_return_conditional_losses_3335823

inputs?
,lstm_cell_550_matmul_readvariableop_resource:	d?A
.lstm_cell_550_matmul_1_readvariableop_resource:	2?<
-lstm_cell_550_biasadd_readvariableop_resource:	?
identity??$lstm_cell_550/BiasAdd/ReadVariableOp?#lstm_cell_550/MatMul/ReadVariableOp?%lstm_cell_550/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_550/MatMul/ReadVariableOpReadVariableOp,lstm_cell_550_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_550/MatMulMatMulstrided_slice_2:output:0+lstm_cell_550/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_550/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_550_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_550/MatMul_1MatMulzeros:output:0-lstm_cell_550/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_550/addAddV2lstm_cell_550/MatMul:product:0 lstm_cell_550/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_550/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_550_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_550/BiasAddBiasAddlstm_cell_550/add:z:0,lstm_cell_550/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_550/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_550/splitSplit&lstm_cell_550/split/split_dim:output:0lstm_cell_550/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_550/SigmoidSigmoidlstm_cell_550/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_1Sigmoidlstm_cell_550/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_550/mulMullstm_cell_550/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_550/ReluRelulstm_cell_550/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_1Mullstm_cell_550/Sigmoid:y:0 lstm_cell_550/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_550/add_1AddV2lstm_cell_550/mul:z:0lstm_cell_550/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_550/Sigmoid_2Sigmoidlstm_cell_550/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_550/Relu_1Relulstm_cell_550/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_550/mul_2Mullstm_cell_550/Sigmoid_2:y:0"lstm_cell_550/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_550_matmul_readvariableop_resource.lstm_cell_550_matmul_1_readvariableop_resource-lstm_cell_550_biasadd_readvariableop_resource*
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
while_body_3335739*
condR
while_cond_3335738*K
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
NoOpNoOp%^lstm_cell_550/BiasAdd/ReadVariableOp$^lstm_cell_550/MatMul/ReadVariableOp&^lstm_cell_550/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_550/BiasAdd/ReadVariableOp$lstm_cell_550/BiasAdd/ReadVariableOp2J
#lstm_cell_550/MatMul/ReadVariableOp#lstm_cell_550/MatMul/ReadVariableOp2N
%lstm_cell_550/MatMul_1/ReadVariableOp%lstm_cell_550/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
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
lstm_414_input;
 serving_default_lstm_414_input:0?????????=
	dense_1380
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
2dense_138/kernel
:2dense_138/bias
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
0:.	?2lstm_414/lstm_cell_414/kernel
::8	d?2'lstm_414/lstm_cell_414/recurrent_kernel
*:(?2lstm_414/lstm_cell_414/bias
0:.	d?2lstm_415/lstm_cell_415/kernel
::8	2?2'lstm_415/lstm_cell_415/recurrent_kernel
*:(?2lstm_415/lstm_cell_415/bias
/:-2(2lstm_416/lstm_cell_416/kernel
9:7
(2'lstm_416/lstm_cell_416/recurrent_kernel
):'(2lstm_416/lstm_cell_416/bias
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
2Adam/dense_138/kernel/m
!:2Adam/dense_138/bias/m
5:3	?2$Adam/lstm_414/lstm_cell_414/kernel/m
?:=	d?2.Adam/lstm_414/lstm_cell_414/recurrent_kernel/m
/:-?2"Adam/lstm_414/lstm_cell_414/bias/m
5:3	d?2$Adam/lstm_415/lstm_cell_415/kernel/m
?:=	2?2.Adam/lstm_415/lstm_cell_415/recurrent_kernel/m
/:-?2"Adam/lstm_415/lstm_cell_415/bias/m
4:22(2$Adam/lstm_416/lstm_cell_416/kernel/m
>:<
(2.Adam/lstm_416/lstm_cell_416/recurrent_kernel/m
.:,(2"Adam/lstm_416/lstm_cell_416/bias/m
':%
2Adam/dense_138/kernel/v
!:2Adam/dense_138/bias/v
5:3	?2$Adam/lstm_414/lstm_cell_414/kernel/v
?:=	d?2.Adam/lstm_414/lstm_cell_414/recurrent_kernel/v
/:-?2"Adam/lstm_414/lstm_cell_414/bias/v
5:3	d?2$Adam/lstm_415/lstm_cell_415/kernel/v
?:=	2?2.Adam/lstm_415/lstm_cell_415/recurrent_kernel/v
/:-?2"Adam/lstm_415/lstm_cell_415/bias/v
4:22(2$Adam/lstm_416/lstm_cell_416/kernel/v
>:<
(2.Adam/lstm_416/lstm_cell_416/recurrent_kernel/v
.:,(2"Adam/lstm_416/lstm_cell_416/bias/v
?2?
0__inference_sequential_138_layer_call_fn_3335492
0__inference_sequential_138_layer_call_fn_3336230
0__inference_sequential_138_layer_call_fn_3336257
0__inference_sequential_138_layer_call_fn_3336108?
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
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336684
K__inference_sequential_138_layer_call_and_return_conditional_losses_3337111
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336138
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336168?
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
"__inference__wrapped_model_3333943lstm_414_input"?
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
*__inference_lstm_414_layer_call_fn_3337122
*__inference_lstm_414_layer_call_fn_3337133
*__inference_lstm_414_layer_call_fn_3337144
*__inference_lstm_414_layer_call_fn_3337155?
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337298
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337441
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337584
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337727?
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
*__inference_lstm_415_layer_call_fn_3337738
*__inference_lstm_415_layer_call_fn_3337749
*__inference_lstm_415_layer_call_fn_3337760
*__inference_lstm_415_layer_call_fn_3337771?
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3337914
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338057
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338200
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338343?
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
*__inference_lstm_416_layer_call_fn_3338354
*__inference_lstm_416_layer_call_fn_3338365
*__inference_lstm_416_layer_call_fn_3338376
*__inference_lstm_416_layer_call_fn_3338387?
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338530
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338673
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338816
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338959?
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
+__inference_dense_138_layer_call_fn_3338968?
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
F__inference_dense_138_layer_call_and_return_conditional_losses_3338978?
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
%__inference_signature_wrapper_3336203lstm_414_input"?
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
/__inference_lstm_cell_549_layer_call_fn_3338995
/__inference_lstm_cell_549_layer_call_fn_3339012?
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3339044
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3339076?
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
/__inference_lstm_cell_550_layer_call_fn_3339093
/__inference_lstm_cell_550_layer_call_fn_3339110?
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3339142
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3339174?
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
/__inference_lstm_cell_551_layer_call_fn_3339191
/__inference_lstm_cell_551_layer_call_fn_3339208?
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3339240
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3339272?
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
"__inference__wrapped_model_3333943?-./012345!";?8
1?.
,?)
lstm_414_input?????????
? "5?2
0
	dense_138#? 
	dense_138??????????
F__inference_dense_138_layer_call_and_return_conditional_losses_3338978\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_138_layer_call_fn_3338968O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337298?-./O?L
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337441?-./O?L
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337584q-./??<
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
E__inference_lstm_414_layer_call_and_return_conditional_losses_3337727q-./??<
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
*__inference_lstm_414_layer_call_fn_3337122}-./O?L
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
*__inference_lstm_414_layer_call_fn_3337133}-./O?L
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
*__inference_lstm_414_layer_call_fn_3337144d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_414_layer_call_fn_3337155d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_415_layer_call_and_return_conditional_losses_3337914?012O?L
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338057?012O?L
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338200q012??<
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
E__inference_lstm_415_layer_call_and_return_conditional_losses_3338343q012??<
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
*__inference_lstm_415_layer_call_fn_3337738}012O?L
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
*__inference_lstm_415_layer_call_fn_3337749}012O?L
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
*__inference_lstm_415_layer_call_fn_3337760d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_415_layer_call_fn_3337771d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338530}345O?L
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338673}345O?L
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338816m345??<
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
E__inference_lstm_416_layer_call_and_return_conditional_losses_3338959m345??<
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
*__inference_lstm_416_layer_call_fn_3338354p345O?L
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
*__inference_lstm_416_layer_call_fn_3338365p345O?L
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
*__inference_lstm_416_layer_call_fn_3338376`345??<
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
*__inference_lstm_416_layer_call_fn_3338387`345??<
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3339044?-./??}
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
J__inference_lstm_cell_549_layer_call_and_return_conditional_losses_3339076?-./??}
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
/__inference_lstm_cell_549_layer_call_fn_3338995?-./??}
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
/__inference_lstm_cell_549_layer_call_fn_3339012?-./??}
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3339142?012??}
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
J__inference_lstm_cell_550_layer_call_and_return_conditional_losses_3339174?012??}
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
/__inference_lstm_cell_550_layer_call_fn_3339093?012??}
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
/__inference_lstm_cell_550_layer_call_fn_3339110?012??}
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3339240?345??}
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
J__inference_lstm_cell_551_layer_call_and_return_conditional_losses_3339272?345??}
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
/__inference_lstm_cell_551_layer_call_fn_3339191?345??}
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
/__inference_lstm_cell_551_layer_call_fn_3339208?345??}
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
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336138y-./012345!"C?@
9?6
,?)
lstm_414_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336168y-./012345!"C?@
9?6
,?)
lstm_414_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_138_layer_call_and_return_conditional_losses_3336684q-./012345!";?8
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
K__inference_sequential_138_layer_call_and_return_conditional_losses_3337111q-./012345!";?8
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
0__inference_sequential_138_layer_call_fn_3335492l-./012345!"C?@
9?6
,?)
lstm_414_input?????????
p 

 
? "???????????
0__inference_sequential_138_layer_call_fn_3336108l-./012345!"C?@
9?6
,?)
lstm_414_input?????????
p

 
? "???????????
0__inference_sequential_138_layer_call_fn_3336230d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_138_layer_call_fn_3336257d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3336203?-./012345!"M?J
? 
C?@
>
lstm_414_input,?)
lstm_414_input?????????"5?2
0
	dense_138#? 
	dense_138?????????