зе/
хє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
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
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28№┐-
|
dense_211/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_211/kernel
u
$dense_211/kernel/Read/ReadVariableOpReadVariableOpdense_211/kernel*
_output_shapes

:
*
dtype0
t
dense_211/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_211/bias
m
"dense_211/bias/Read/ReadVariableOpReadVariableOpdense_211/bias*
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
Ќ
lstm_633/lstm_cell_633/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_633/lstm_cell_633/kernel
љ
1lstm_633/lstm_cell_633/kernel/Read/ReadVariableOpReadVariableOplstm_633/lstm_cell_633/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_633/lstm_cell_633/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_633/lstm_cell_633/recurrent_kernel
ц
;lstm_633/lstm_cell_633/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_633/lstm_cell_633/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_633/lstm_cell_633/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_633/lstm_cell_633/bias
ѕ
/lstm_633/lstm_cell_633/bias/Read/ReadVariableOpReadVariableOplstm_633/lstm_cell_633/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_634/lstm_cell_634/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_634/lstm_cell_634/kernel
љ
1lstm_634/lstm_cell_634/kernel/Read/ReadVariableOpReadVariableOplstm_634/lstm_cell_634/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_634/lstm_cell_634/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_634/lstm_cell_634/recurrent_kernel
ц
;lstm_634/lstm_cell_634/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_634/lstm_cell_634/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_634/lstm_cell_634/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_634/lstm_cell_634/bias
ѕ
/lstm_634/lstm_cell_634/bias/Read/ReadVariableOpReadVariableOplstm_634/lstm_cell_634/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_635/lstm_cell_635/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_635/lstm_cell_635/kernel
Ј
1lstm_635/lstm_cell_635/kernel/Read/ReadVariableOpReadVariableOplstm_635/lstm_cell_635/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_635/lstm_cell_635/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_635/lstm_cell_635/recurrent_kernel
Б
;lstm_635/lstm_cell_635/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_635/lstm_cell_635/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_635/lstm_cell_635/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_635/lstm_cell_635/bias
Є
/lstm_635/lstm_cell_635/bias/Read/ReadVariableOpReadVariableOplstm_635/lstm_cell_635/bias*
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
і
Adam/dense_211/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_211/kernel/m
Ѓ
+Adam/dense_211/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_211/kernel/m*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_211/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_211/bias/m
{
)Adam/dense_211/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_211/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_633/lstm_cell_633/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_633/lstm_cell_633/kernel/m
ъ
8Adam/lstm_633/lstm_cell_633/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_633/lstm_cell_633/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_633/lstm_cell_633/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_633/lstm_cell_633/recurrent_kernel/m
▓
BAdam/lstm_633/lstm_cell_633/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_633/lstm_cell_633/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_633/lstm_cell_633/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_633/lstm_cell_633/bias/m
ќ
6Adam/lstm_633/lstm_cell_633/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_633/lstm_cell_633/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_634/lstm_cell_634/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_634/lstm_cell_634/kernel/m
ъ
8Adam/lstm_634/lstm_cell_634/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_634/lstm_cell_634/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_634/lstm_cell_634/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_634/lstm_cell_634/recurrent_kernel/m
▓
BAdam/lstm_634/lstm_cell_634/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_634/lstm_cell_634/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_634/lstm_cell_634/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_634/lstm_cell_634/bias/m
ќ
6Adam/lstm_634/lstm_cell_634/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_634/lstm_cell_634/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_635/lstm_cell_635/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_635/lstm_cell_635/kernel/m
Ю
8Adam/lstm_635/lstm_cell_635/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_635/lstm_cell_635/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_635/lstm_cell_635/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_635/lstm_cell_635/recurrent_kernel/m
▒
BAdam/lstm_635/lstm_cell_635/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_635/lstm_cell_635/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_635/lstm_cell_635/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_635/lstm_cell_635/bias/m
Ћ
6Adam/lstm_635/lstm_cell_635/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_635/lstm_cell_635/bias/m*
_output_shapes
:(*
dtype0
і
Adam/dense_211/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_211/kernel/v
Ѓ
+Adam/dense_211/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_211/kernel/v*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_211/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_211/bias/v
{
)Adam/dense_211/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_211/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_633/lstm_cell_633/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_633/lstm_cell_633/kernel/v
ъ
8Adam/lstm_633/lstm_cell_633/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_633/lstm_cell_633/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_633/lstm_cell_633/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_633/lstm_cell_633/recurrent_kernel/v
▓
BAdam/lstm_633/lstm_cell_633/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_633/lstm_cell_633/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_633/lstm_cell_633/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_633/lstm_cell_633/bias/v
ќ
6Adam/lstm_633/lstm_cell_633/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_633/lstm_cell_633/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_634/lstm_cell_634/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_634/lstm_cell_634/kernel/v
ъ
8Adam/lstm_634/lstm_cell_634/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_634/lstm_cell_634/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_634/lstm_cell_634/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_634/lstm_cell_634/recurrent_kernel/v
▓
BAdam/lstm_634/lstm_cell_634/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_634/lstm_cell_634/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_634/lstm_cell_634/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_634/lstm_cell_634/bias/v
ќ
6Adam/lstm_634/lstm_cell_634/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_634/lstm_cell_634/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_635/lstm_cell_635/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_635/lstm_cell_635/kernel/v
Ю
8Adam/lstm_635/lstm_cell_635/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_635/lstm_cell_635/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_635/lstm_cell_635/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_635/lstm_cell_635/recurrent_kernel/v
▒
BAdam/lstm_635/lstm_cell_635/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_635/lstm_cell_635/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_635/lstm_cell_635/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_635/lstm_cell_635/bias/v
Ћ
6Adam/lstm_635/lstm_cell_635/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_635/lstm_cell_635/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
А?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*▄>
valueм>B¤> B╚>
Ї
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
ї
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
 
Г
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
 
ј
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

(0
)1
*2

(0
)1
*2
 
╣

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
ј
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
 

+0
,1
-2

+0
,1
-2
 
╣

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
ј
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 

.0
/1
02

.0
/1
02
 
╣

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_211/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_211/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
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
VARIABLE_VALUElstm_633/lstm_cell_633/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_633/lstm_cell_633/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_633/lstm_cell_633/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_634/lstm_cell_634/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_634/lstm_cell_634/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_634/lstm_cell_634/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_635/lstm_cell_635/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_635/lstm_cell_635/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_635/lstm_cell_635/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

\0
 
 
 

(0
)1
*2

(0
)1
*2
 
Г
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
 
 
 
 

+0
,1
-2

+0
,1
-2
 
Г
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 

0
 
 
 
 

.0
/1
02

.0
/1
02
 
Г
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ltotal
	mcount
n	variables
o	keras_api
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
l0
m1

n	variables
}
VARIABLE_VALUEAdam/dense_211/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_211/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_633/lstm_cell_633/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_633/lstm_cell_633/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_633/lstm_cell_633/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_634/lstm_cell_634/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_634/lstm_cell_634/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_634/lstm_cell_634/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_635/lstm_cell_635/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_635/lstm_cell_635/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_635/lstm_cell_635/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_211/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_211/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_633/lstm_cell_633/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_633/lstm_cell_633/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_633/lstm_cell_633/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_634/lstm_cell_634/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_634/lstm_cell_634/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_634/lstm_cell_634/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_635/lstm_cell_635/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_635/lstm_cell_635/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_635/lstm_cell_635/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_633_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_633_inputlstm_633/lstm_cell_633/kernel'lstm_633/lstm_cell_633/recurrent_kernellstm_633/lstm_cell_633/biaslstm_634/lstm_cell_634/kernel'lstm_634/lstm_cell_634/recurrent_kernellstm_634/lstm_cell_634/biaslstm_635/lstm_cell_635/kernel'lstm_635/lstm_cell_635/recurrent_kernellstm_635/lstm_cell_635/biasdense_211/kerneldense_211/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_4074032
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_211/kernel/Read/ReadVariableOp"dense_211/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_633/lstm_cell_633/kernel/Read/ReadVariableOp;lstm_633/lstm_cell_633/recurrent_kernel/Read/ReadVariableOp/lstm_633/lstm_cell_633/bias/Read/ReadVariableOp1lstm_634/lstm_cell_634/kernel/Read/ReadVariableOp;lstm_634/lstm_cell_634/recurrent_kernel/Read/ReadVariableOp/lstm_634/lstm_cell_634/bias/Read/ReadVariableOp1lstm_635/lstm_cell_635/kernel/Read/ReadVariableOp;lstm_635/lstm_cell_635/recurrent_kernel/Read/ReadVariableOp/lstm_635/lstm_cell_635/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_211/kernel/m/Read/ReadVariableOp)Adam/dense_211/bias/m/Read/ReadVariableOp8Adam/lstm_633/lstm_cell_633/kernel/m/Read/ReadVariableOpBAdam/lstm_633/lstm_cell_633/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_633/lstm_cell_633/bias/m/Read/ReadVariableOp8Adam/lstm_634/lstm_cell_634/kernel/m/Read/ReadVariableOpBAdam/lstm_634/lstm_cell_634/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_634/lstm_cell_634/bias/m/Read/ReadVariableOp8Adam/lstm_635/lstm_cell_635/kernel/m/Read/ReadVariableOpBAdam/lstm_635/lstm_cell_635/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_635/lstm_cell_635/bias/m/Read/ReadVariableOp+Adam/dense_211/kernel/v/Read/ReadVariableOp)Adam/dense_211/bias/v/Read/ReadVariableOp8Adam/lstm_633/lstm_cell_633/kernel/v/Read/ReadVariableOpBAdam/lstm_633/lstm_cell_633/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_633/lstm_cell_633/bias/v/Read/ReadVariableOp8Adam/lstm_634/lstm_cell_634/kernel/v/Read/ReadVariableOpBAdam/lstm_634/lstm_cell_634/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_634/lstm_cell_634/bias/v/Read/ReadVariableOp8Adam/lstm_635/lstm_cell_635/kernel/v/Read/ReadVariableOpBAdam/lstm_635/lstm_cell_635/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_635/lstm_cell_635/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_4077244
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_211/kerneldense_211/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_633/lstm_cell_633/kernel'lstm_633/lstm_cell_633/recurrent_kernellstm_633/lstm_cell_633/biaslstm_634/lstm_cell_634/kernel'lstm_634/lstm_cell_634/recurrent_kernellstm_634/lstm_cell_634/biaslstm_635/lstm_cell_635/kernel'lstm_635/lstm_cell_635/recurrent_kernellstm_635/lstm_cell_635/biastotalcountAdam/dense_211/kernel/mAdam/dense_211/bias/m$Adam/lstm_633/lstm_cell_633/kernel/m.Adam/lstm_633/lstm_cell_633/recurrent_kernel/m"Adam/lstm_633/lstm_cell_633/bias/m$Adam/lstm_634/lstm_cell_634/kernel/m.Adam/lstm_634/lstm_cell_634/recurrent_kernel/m"Adam/lstm_634/lstm_cell_634/bias/m$Adam/lstm_635/lstm_cell_635/kernel/m.Adam/lstm_635/lstm_cell_635/recurrent_kernel/m"Adam/lstm_635/lstm_cell_635/bias/mAdam/dense_211/kernel/vAdam/dense_211/bias/v$Adam/lstm_633/lstm_cell_633/kernel/v.Adam/lstm_633/lstm_cell_633/recurrent_kernel/v"Adam/lstm_633/lstm_cell_633/bias/v$Adam/lstm_634/lstm_cell_634/kernel/v.Adam/lstm_634/lstm_cell_634/recurrent_kernel/v"Adam/lstm_634/lstm_cell_634/bias/v$Adam/lstm_635/lstm_cell_635/kernel/v.Adam/lstm_635/lstm_cell_635/recurrent_kernel/v"Adam/lstm_635/lstm_cell_635/bias/v*4
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_4077374░■+
њK
б
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076502
inputs_0>
,lstm_cell_635_matmul_readvariableop_resource:2(@
.lstm_cell_635_matmul_1_readvariableop_resource:
(;
-lstm_cell_635_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_635/BiasAdd/ReadVariableOpб#lstm_cell_635/MatMul/ReadVariableOpб%lstm_cell_635/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_635/MatMul/ReadVariableOpReadVariableOp,lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_635/MatMulMatMulstrided_slice_2:output:0+lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_635/MatMul_1MatMulzeros:output:0-lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_635/addAddV2lstm_cell_635/MatMul:product:0 lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_635/BiasAddBiasAddlstm_cell_635/add:z:0,lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_635/splitSplit&lstm_cell_635/split/split_dim:output:0lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_635/SigmoidSigmoidlstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_1Sigmoidlstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_635/mulMullstm_cell_635/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_635/ReluRelulstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_635/mul_1Mullstm_cell_635/Sigmoid:y:0 lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_635/add_1AddV2lstm_cell_635/mul:z:0lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_2Sigmoidlstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_635/Relu_1Relulstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_635/mul_2Mullstm_cell_635/Sigmoid_2:y:0"lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_635_matmul_readvariableop_resource.lstm_cell_635_matmul_1_readvariableop_resource-lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4076418*
condR
while_cond_4076417*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_635/BiasAdd/ReadVariableOp$^lstm_cell_635/MatMul/ReadVariableOp&^lstm_cell_635/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_635/BiasAdd/ReadVariableOp$lstm_cell_635/BiasAdd/ReadVariableOp2J
#lstm_cell_635/MatMul/ReadVariableOp#lstm_cell_635/MatMul/ReadVariableOp2N
%lstm_cell_635/MatMul_1/ReadVariableOp%lstm_cell_635/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
Ѓ
и
*__inference_lstm_634_layer_call_fn_4075600

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073652s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4077069

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
║
╚
while_cond_4072202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4072202___redundant_placeholder05
1while_while_cond_4072202___redundant_placeholder15
1while_while_cond_4072202___redundant_placeholder25
1while_while_cond_4072202___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
ЬW
Ц
 __inference__traced_save_4077244
file_prefix/
+savev2_dense_211_kernel_read_readvariableop-
)savev2_dense_211_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_633_lstm_cell_633_kernel_read_readvariableopF
Bsavev2_lstm_633_lstm_cell_633_recurrent_kernel_read_readvariableop:
6savev2_lstm_633_lstm_cell_633_bias_read_readvariableop<
8savev2_lstm_634_lstm_cell_634_kernel_read_readvariableopF
Bsavev2_lstm_634_lstm_cell_634_recurrent_kernel_read_readvariableop:
6savev2_lstm_634_lstm_cell_634_bias_read_readvariableop<
8savev2_lstm_635_lstm_cell_635_kernel_read_readvariableopF
Bsavev2_lstm_635_lstm_cell_635_recurrent_kernel_read_readvariableop:
6savev2_lstm_635_lstm_cell_635_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_211_kernel_m_read_readvariableop4
0savev2_adam_dense_211_bias_m_read_readvariableopC
?savev2_adam_lstm_633_lstm_cell_633_kernel_m_read_readvariableopM
Isavev2_adam_lstm_633_lstm_cell_633_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_633_lstm_cell_633_bias_m_read_readvariableopC
?savev2_adam_lstm_634_lstm_cell_634_kernel_m_read_readvariableopM
Isavev2_adam_lstm_634_lstm_cell_634_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_634_lstm_cell_634_bias_m_read_readvariableopC
?savev2_adam_lstm_635_lstm_cell_635_kernel_m_read_readvariableopM
Isavev2_adam_lstm_635_lstm_cell_635_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_635_lstm_cell_635_bias_m_read_readvariableop6
2savev2_adam_dense_211_kernel_v_read_readvariableop4
0savev2_adam_dense_211_bias_v_read_readvariableopC
?savev2_adam_lstm_633_lstm_cell_633_kernel_v_read_readvariableopM
Isavev2_adam_lstm_633_lstm_cell_633_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_633_lstm_cell_633_bias_v_read_readvariableopC
?savev2_adam_lstm_634_lstm_cell_634_kernel_v_read_readvariableopM
Isavev2_adam_lstm_634_lstm_cell_634_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_634_lstm_cell_634_bias_v_read_readvariableopC
?savev2_adam_lstm_635_lstm_cell_635_kernel_v_read_readvariableopM
Isavev2_adam_lstm_635_lstm_cell_635_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_635_lstm_cell_635_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ┼
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_211_kernel_read_readvariableop)savev2_dense_211_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_633_lstm_cell_633_kernel_read_readvariableopBsavev2_lstm_633_lstm_cell_633_recurrent_kernel_read_readvariableop6savev2_lstm_633_lstm_cell_633_bias_read_readvariableop8savev2_lstm_634_lstm_cell_634_kernel_read_readvariableopBsavev2_lstm_634_lstm_cell_634_recurrent_kernel_read_readvariableop6savev2_lstm_634_lstm_cell_634_bias_read_readvariableop8savev2_lstm_635_lstm_cell_635_kernel_read_readvariableopBsavev2_lstm_635_lstm_cell_635_recurrent_kernel_read_readvariableop6savev2_lstm_635_lstm_cell_635_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_211_kernel_m_read_readvariableop0savev2_adam_dense_211_bias_m_read_readvariableop?savev2_adam_lstm_633_lstm_cell_633_kernel_m_read_readvariableopIsavev2_adam_lstm_633_lstm_cell_633_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_633_lstm_cell_633_bias_m_read_readvariableop?savev2_adam_lstm_634_lstm_cell_634_kernel_m_read_readvariableopIsavev2_adam_lstm_634_lstm_cell_634_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_634_lstm_cell_634_bias_m_read_readvariableop?savev2_adam_lstm_635_lstm_cell_635_kernel_m_read_readvariableopIsavev2_adam_lstm_635_lstm_cell_635_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_635_lstm_cell_635_bias_m_read_readvariableop2savev2_adam_dense_211_kernel_v_read_readvariableop0savev2_adam_dense_211_bias_v_read_readvariableop?savev2_adam_lstm_633_lstm_cell_633_kernel_v_read_readvariableopIsavev2_adam_lstm_633_lstm_cell_633_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_633_lstm_cell_633_bias_v_read_readvariableop?savev2_adam_lstm_634_lstm_cell_634_kernel_v_read_readvariableopIsavev2_adam_lstm_634_lstm_cell_634_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_634_lstm_cell_634_bias_v_read_readvariableop?savev2_adam_lstm_635_lstm_cell_635_kernel_v_read_readvariableopIsavev2_adam_lstm_635_lstm_cell_635_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_635_lstm_cell_635_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*М
_input_shapes┴
Й: :
:: : : : : :	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(: : :
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(:
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
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
:	љ:%	!

_output_shapes
:	dљ:!


_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!

_output_shapes
:	dљ:!

_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!!

_output_shapes
:	dљ:!"

_output_shapes	
:љ:%#!

_output_shapes
:	d╚:%$!

_output_shapes
:	2╚:!%

_output_shapes	
:╚:$& 

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
ПJ
а
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073271

inputs>
,lstm_cell_635_matmul_readvariableop_resource:2(@
.lstm_cell_635_matmul_1_readvariableop_resource:
(;
-lstm_cell_635_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_635/BiasAdd/ReadVariableOpб#lstm_cell_635/MatMul/ReadVariableOpб%lstm_cell_635/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_635/MatMul/ReadVariableOpReadVariableOp,lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_635/MatMulMatMulstrided_slice_2:output:0+lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_635/MatMul_1MatMulzeros:output:0-lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_635/addAddV2lstm_cell_635/MatMul:product:0 lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_635/BiasAddBiasAddlstm_cell_635/add:z:0,lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_635/splitSplit&lstm_cell_635/split/split_dim:output:0lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_635/SigmoidSigmoidlstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_1Sigmoidlstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_635/mulMullstm_cell_635/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_635/ReluRelulstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_635/mul_1Mullstm_cell_635/Sigmoid:y:0 lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_635/add_1AddV2lstm_cell_635/mul:z:0lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_2Sigmoidlstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_635/Relu_1Relulstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_635/mul_2Mullstm_cell_635/Sigmoid_2:y:0"lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_635_matmul_readvariableop_resource.lstm_cell_635_matmul_1_readvariableop_resource-lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4073187*
condR
while_cond_4073186*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_635/BiasAdd/ReadVariableOp$^lstm_cell_635/MatMul/ReadVariableOp&^lstm_cell_635/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_635/BiasAdd/ReadVariableOp$lstm_cell_635/BiasAdd/ReadVariableOp2J
#lstm_cell_635/MatMul/ReadVariableOp#lstm_cell_635/MatMul/ReadVariableOp2N
%lstm_cell_635/MatMul_1/ReadVariableOp%lstm_cell_635/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
љ
Х
*__inference_lstm_635_layer_call_fn_4076194
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4072813o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
Л8
┌
while_body_4075043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_633_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_633_matmul_readvariableop_resource:	љG
4while_lstm_cell_633_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_633/BiasAdd/ReadVariableOpб)while/lstm_cell_633/MatMul/ReadVariableOpб+while/lstm_cell_633/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_633/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_633/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_633/addAddV2$while/lstm_cell_633/MatMul:product:0&while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_633/BiasAddBiasAddwhile/lstm_cell_633/add:z:02while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_633/splitSplit,while/lstm_cell_633/split/split_dim:output:0$while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_633/SigmoidSigmoid"while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_1Sigmoid"while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_633/mulMul!while/lstm_cell_633/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_633/ReluRelu"while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_633/mul_1Mulwhile/lstm_cell_633/Sigmoid:y:0&while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_633/add_1AddV2while/lstm_cell_633/mul:z:0while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_2Sigmoid"while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_633/Relu_1Reluwhile/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_633/mul_2Mul!while/lstm_cell_633/Sigmoid_2:y:0(while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_633/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_633/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_633/BiasAdd/ReadVariableOp*^while/lstm_cell_633/MatMul/ReadVariableOp,^while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_633_biasadd_readvariableop_resource5while_lstm_cell_633_biasadd_readvariableop_resource_0"n
4while_lstm_cell_633_matmul_1_readvariableop_resource6while_lstm_cell_633_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_633_matmul_readvariableop_resource4while_lstm_cell_633_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_633/BiasAdd/ReadVariableOp*while/lstm_cell_633/BiasAdd/ReadVariableOp2V
)while/lstm_cell_633/MatMul/ReadVariableOp)while/lstm_cell_633/MatMul/ReadVariableOp2Z
+while/lstm_cell_633/MatMul_1/ReadVariableOp+while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_4076088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_634_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_634/BiasAdd/ReadVariableOpб)while/lstm_cell_634/MatMul/ReadVariableOpб+while/lstm_cell_634/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_634/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_634/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_634/addAddV2$while/lstm_cell_634/MatMul:product:0&while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_634/BiasAddBiasAddwhile/lstm_cell_634/add:z:02while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_634/splitSplit,while/lstm_cell_634/split/split_dim:output:0$while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_634/SigmoidSigmoid"while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_1Sigmoid"while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_634/mulMul!while/lstm_cell_634/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_634/ReluRelu"while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_634/mul_1Mulwhile/lstm_cell_634/Sigmoid:y:0&while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_634/add_1AddV2while/lstm_cell_634/mul:z:0while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_2Sigmoid"while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_634/Relu_1Reluwhile/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_634/mul_2Mul!while/lstm_cell_634/Sigmoid_2:y:0(while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_634/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_634/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_634/BiasAdd/ReadVariableOp*^while/lstm_cell_634/MatMul/ReadVariableOp,^while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_634_biasadd_readvariableop_resource5while_lstm_cell_634_biasadd_readvariableop_resource_0"n
4while_lstm_cell_634_matmul_1_readvariableop_resource6while_lstm_cell_634_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_634_matmul_readvariableop_resource4while_lstm_cell_634_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_634/BiasAdd/ReadVariableOp*while/lstm_cell_634/BiasAdd/ReadVariableOp2V
)while/lstm_cell_634/MatMul/ReadVariableOp)while/lstm_cell_634/MatMul/ReadVariableOp2Z
+while/lstm_cell_634/MatMul_1/ReadVariableOp+while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Ѕ#
в
while_body_4072744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_635_4072768_0:2(/
while_lstm_cell_635_4072770_0:
(+
while_lstm_cell_635_4072772_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_635_4072768:2(-
while_lstm_cell_635_4072770:
()
while_lstm_cell_635_4072772:(ѕб+while/lstm_cell_635/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_635/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_635_4072768_0while_lstm_cell_635_4072770_0while_lstm_cell_635_4072772_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072685П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_635/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_635/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_635/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_635/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_635_4072768while_lstm_cell_635_4072768_0"<
while_lstm_cell_635_4072770while_lstm_cell_635_4072770_0"<
while_lstm_cell_635_4072772while_lstm_cell_635_4072772_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_635/StatefulPartitionedCall+while/lstm_cell_635/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Ѓ
и
*__inference_lstm_634_layer_call_fn_4075589

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073121s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
║
╚
while_cond_4075658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4075658___redundant_placeholder05
1while_while_cond_4075658___redundant_placeholder15
1while_while_cond_4075658___redundant_placeholder25
1while_while_cond_4075658___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073652

inputs?
,lstm_cell_634_matmul_readvariableop_resource:	d╚A
.lstm_cell_634_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_634_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_634/BiasAdd/ReadVariableOpб#lstm_cell_634/MatMul/ReadVariableOpб%lstm_cell_634/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_634/MatMul/ReadVariableOpReadVariableOp,lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_634/MatMulMatMulstrided_slice_2:output:0+lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_634/MatMul_1MatMulzeros:output:0-lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_634/addAddV2lstm_cell_634/MatMul:product:0 lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_634/BiasAddBiasAddlstm_cell_634/add:z:0,lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_634/splitSplit&lstm_cell_634/split/split_dim:output:0lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_634/SigmoidSigmoidlstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_1Sigmoidlstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_634/mulMullstm_cell_634/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_634/ReluRelulstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_634/mul_1Mullstm_cell_634/Sigmoid:y:0 lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_634/add_1AddV2lstm_cell_634/mul:z:0lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_2Sigmoidlstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_634/Relu_1Relulstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_634/mul_2Mullstm_cell_634/Sigmoid_2:y:0"lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_634_matmul_readvariableop_resource.lstm_cell_634_matmul_1_readvariableop_resource-lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4073568*
condR
while_cond_4073567*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_634/BiasAdd/ReadVariableOp$^lstm_cell_634/MatMul/ReadVariableOp&^lstm_cell_634/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_634/BiasAdd/ReadVariableOp$lstm_cell_634/BiasAdd/ReadVariableOp2J
#lstm_cell_634/MatMul/ReadVariableOp#lstm_cell_634/MatMul/ReadVariableOp2N
%lstm_cell_634/MatMul_1/ReadVariableOp%lstm_cell_634/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_633_layer_call_fn_4076841

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071985o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
║
╚
while_cond_4072393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4072393___redundant_placeholder05
1while_while_cond_4072393___redundant_placeholder15
1while_while_cond_4072393___redundant_placeholder25
1while_while_cond_4072393___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
аK
Ц
E__inference_lstm_634_layer_call_and_return_conditional_losses_4075886
inputs_0?
,lstm_cell_634_matmul_readvariableop_resource:	d╚A
.lstm_cell_634_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_634_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_634/BiasAdd/ReadVariableOpб#lstm_cell_634/MatMul/ReadVariableOpб%lstm_cell_634/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_634/MatMul/ReadVariableOpReadVariableOp,lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_634/MatMulMatMulstrided_slice_2:output:0+lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_634/MatMul_1MatMulzeros:output:0-lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_634/addAddV2lstm_cell_634/MatMul:product:0 lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_634/BiasAddBiasAddlstm_cell_634/add:z:0,lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_634/splitSplit&lstm_cell_634/split/split_dim:output:0lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_634/SigmoidSigmoidlstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_1Sigmoidlstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_634/mulMullstm_cell_634/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_634/ReluRelulstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_634/mul_1Mullstm_cell_634/Sigmoid:y:0 lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_634/add_1AddV2lstm_cell_634/mul:z:0lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_2Sigmoidlstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_634/Relu_1Relulstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_634/mul_2Mullstm_cell_634/Sigmoid_2:y:0"lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_634_matmul_readvariableop_resource.lstm_cell_634_matmul_1_readvariableop_resource-lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4075802*
condR
while_cond_4075801*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_634/BiasAdd/ReadVariableOp$^lstm_cell_634/MatMul/ReadVariableOp&^lstm_cell_634/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_634/BiasAdd/ReadVariableOp$lstm_cell_634/BiasAdd/ReadVariableOp2J
#lstm_cell_634/MatMul/ReadVariableOp#lstm_cell_634/MatMul/ReadVariableOp2N
%lstm_cell_634/MatMul_1/ReadVariableOp%lstm_cell_634/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
─8
н
while_body_4076418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_635_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_635_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_635_matmul_readvariableop_resource:2(F
4while_lstm_cell_635_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_635/BiasAdd/ReadVariableOpб)while/lstm_cell_635/MatMul/ReadVariableOpб+while/lstm_cell_635/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_635/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_635/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_635/addAddV2$while/lstm_cell_635/MatMul:product:0&while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_635/BiasAddBiasAddwhile/lstm_cell_635/add:z:02while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_635/splitSplit,while/lstm_cell_635/split/split_dim:output:0$while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_635/SigmoidSigmoid"while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_1Sigmoid"while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_635/mulMul!while/lstm_cell_635/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_635/ReluRelu"while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_635/mul_1Mulwhile/lstm_cell_635/Sigmoid:y:0&while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_635/add_1AddV2while/lstm_cell_635/mul:z:0while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_2Sigmoid"while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_635/Relu_1Reluwhile/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_635/mul_2Mul!while/lstm_cell_635/Sigmoid_2:y:0(while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_635/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_635/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_635/BiasAdd/ReadVariableOp*^while/lstm_cell_635/MatMul/ReadVariableOp,^while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_635_biasadd_readvariableop_resource5while_lstm_cell_635_biasadd_readvariableop_resource_0"n
4while_lstm_cell_635_matmul_1_readvariableop_resource6while_lstm_cell_635_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_635_matmul_readvariableop_resource4while_lstm_cell_635_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_635/BiasAdd/ReadVariableOp*while/lstm_cell_635/BiasAdd/ReadVariableOp2V
)while/lstm_cell_635/MatMul/ReadVariableOp)while/lstm_cell_635/MatMul/ReadVariableOp2Z
+while/lstm_cell_635/MatMul_1/ReadVariableOp+while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
─8
н
while_body_4073403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_635_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_635_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_635_matmul_readvariableop_resource:2(F
4while_lstm_cell_635_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_635/BiasAdd/ReadVariableOpб)while/lstm_cell_635/MatMul/ReadVariableOpб+while/lstm_cell_635/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_635/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_635/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_635/addAddV2$while/lstm_cell_635/MatMul:product:0&while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_635/BiasAddBiasAddwhile/lstm_cell_635/add:z:02while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_635/splitSplit,while/lstm_cell_635/split/split_dim:output:0$while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_635/SigmoidSigmoid"while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_1Sigmoid"while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_635/mulMul!while/lstm_cell_635/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_635/ReluRelu"while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_635/mul_1Mulwhile/lstm_cell_635/Sigmoid:y:0&while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_635/add_1AddV2while/lstm_cell_635/mul:z:0while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_2Sigmoid"while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_635/Relu_1Reluwhile/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_635/mul_2Mul!while/lstm_cell_635/Sigmoid_2:y:0(while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_635/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_635/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_635/BiasAdd/ReadVariableOp*^while/lstm_cell_635/MatMul/ReadVariableOp,^while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_635_biasadd_readvariableop_resource5while_lstm_cell_635_biasadd_readvariableop_resource_0"n
4while_lstm_cell_635_matmul_1_readvariableop_resource6while_lstm_cell_635_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_635_matmul_readvariableop_resource4while_lstm_cell_635_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_635/BiasAdd/ReadVariableOp*while/lstm_cell_635/BiasAdd/ReadVariableOp2V
)while/lstm_cell_635/MatMul/ReadVariableOp)while/lstm_cell_635/MatMul/ReadVariableOp2Z
+while/lstm_cell_635/MatMul_1/ReadVariableOp+while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
»8
ј
E__inference_lstm_634_layer_call_and_return_conditional_losses_4072272

inputs(
lstm_cell_634_4072190:	d╚(
lstm_cell_634_4072192:	2╚$
lstm_cell_634_4072194:	╚
identityѕб%lstm_cell_634/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_634/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_634_4072190lstm_cell_634_4072192lstm_cell_634_4072194*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072189n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_634_4072190lstm_cell_634_4072192lstm_cell_634_4072194*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4072203*
condR
while_cond_4072202*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_634/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_634/StatefulPartitionedCall%lstm_cell_634/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_633_layer_call_and_return_conditional_losses_4071922

inputs(
lstm_cell_633_4071840:	љ(
lstm_cell_633_4071842:	dљ$
lstm_cell_633_4071844:	љ
identityѕб%lstm_cell_633/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_633/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_633_4071840lstm_cell_633_4071842lstm_cell_633_4071844*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071839n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_633_4071840lstm_cell_633_4071842lstm_cell_633_4071844*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4071853*
condR
while_cond_4071852*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_633/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_633/StatefulPartitionedCall%lstm_cell_633/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
АC
Щ

lstm_634_while_body_4074284.
*lstm_634_while_lstm_634_while_loop_counter4
0lstm_634_while_lstm_634_while_maximum_iterations
lstm_634_while_placeholder 
lstm_634_while_placeholder_1 
lstm_634_while_placeholder_2 
lstm_634_while_placeholder_3-
)lstm_634_while_lstm_634_strided_slice_1_0i
elstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚R
?lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚M
>lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
lstm_634_while_identity
lstm_634_while_identity_1
lstm_634_while_identity_2
lstm_634_while_identity_3
lstm_634_while_identity_4
lstm_634_while_identity_5+
'lstm_634_while_lstm_634_strided_slice_1g
clstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensorN
;lstm_634_while_lstm_cell_634_matmul_readvariableop_resource:	d╚P
=lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚K
<lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpб2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpб4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOpЉ
@lstm_634/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_634/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensor_0lstm_634_while_placeholderIlstm_634/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp=lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_634/while/lstm_cell_634/MatMulMatMul9lstm_634/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp?lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_634/while/lstm_cell_634/MatMul_1MatMullstm_634_while_placeholder_2<lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_634/while/lstm_cell_634/addAddV2-lstm_634/while/lstm_cell_634/MatMul:product:0/lstm_634/while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp>lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_634/while/lstm_cell_634/BiasAddBiasAdd$lstm_634/while/lstm_cell_634/add:z:0;lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_634/while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_634/while/lstm_cell_634/splitSplit5lstm_634/while/lstm_cell_634/split/split_dim:output:0-lstm_634/while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_634/while/lstm_cell_634/SigmoidSigmoid+lstm_634/while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_634/while/lstm_cell_634/Sigmoid_1Sigmoid+lstm_634/while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_634/while/lstm_cell_634/mulMul*lstm_634/while/lstm_cell_634/Sigmoid_1:y:0lstm_634_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_634/while/lstm_cell_634/ReluRelu+lstm_634/while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_634/while/lstm_cell_634/mul_1Mul(lstm_634/while/lstm_cell_634/Sigmoid:y:0/lstm_634/while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_634/while/lstm_cell_634/add_1AddV2$lstm_634/while/lstm_cell_634/mul:z:0&lstm_634/while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_634/while/lstm_cell_634/Sigmoid_2Sigmoid+lstm_634/while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_634/while/lstm_cell_634/Relu_1Relu&lstm_634/while/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_634/while/lstm_cell_634/mul_2Mul*lstm_634/while/lstm_cell_634/Sigmoid_2:y:01lstm_634/while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_634/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_634_while_placeholder_1lstm_634_while_placeholder&lstm_634/while/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_634/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_634/while/addAddV2lstm_634_while_placeholderlstm_634/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_634/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_634/while/add_1AddV2*lstm_634_while_lstm_634_while_loop_counterlstm_634/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_634/while/IdentityIdentitylstm_634/while/add_1:z:0^lstm_634/while/NoOp*
T0*
_output_shapes
: ј
lstm_634/while/Identity_1Identity0lstm_634_while_lstm_634_while_maximum_iterations^lstm_634/while/NoOp*
T0*
_output_shapes
: t
lstm_634/while/Identity_2Identitylstm_634/while/add:z:0^lstm_634/while/NoOp*
T0*
_output_shapes
: А
lstm_634/while/Identity_3IdentityClstm_634/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_634/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_634/while/Identity_4Identity&lstm_634/while/lstm_cell_634/mul_2:z:0^lstm_634/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_634/while/Identity_5Identity&lstm_634/while/lstm_cell_634/add_1:z:0^lstm_634/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_634/while/NoOpNoOp4^lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp3^lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp5^lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_634_while_identity lstm_634/while/Identity:output:0"?
lstm_634_while_identity_1"lstm_634/while/Identity_1:output:0"?
lstm_634_while_identity_2"lstm_634/while/Identity_2:output:0"?
lstm_634_while_identity_3"lstm_634/while/Identity_3:output:0"?
lstm_634_while_identity_4"lstm_634/while/Identity_4:output:0"?
lstm_634_while_identity_5"lstm_634/while/Identity_5:output:0"T
'lstm_634_while_lstm_634_strided_slice_1)lstm_634_while_lstm_634_strided_slice_1_0"~
<lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource>lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0"ђ
=lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource?lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0"|
;lstm_634_while_lstm_cell_634_matmul_readvariableop_resource=lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0"╠
clstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensorelstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp2h
2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp2l
4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
№
Э
/__inference_lstm_cell_634_layer_call_fn_4076939

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072335o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
Ј#
ы
while_body_4072044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_633_4072068_0:	љ0
while_lstm_cell_633_4072070_0:	dљ,
while_lstm_cell_633_4072072_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_633_4072068:	љ.
while_lstm_cell_633_4072070:	dљ*
while_lstm_cell_633_4072072:	љѕб+while/lstm_cell_633/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_633/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_633_4072068_0while_lstm_cell_633_4072070_0while_lstm_cell_633_4072072_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071985П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_633/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_633/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_633/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_633/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_633_4072068while_lstm_cell_633_4072068_0"<
while_lstm_cell_633_4072070while_lstm_cell_633_4072070_0"<
while_lstm_cell_633_4072072while_lstm_cell_633_4072072_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_633/StatefulPartitionedCall+while/lstm_cell_633/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
ПJ
а
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076645

inputs>
,lstm_cell_635_matmul_readvariableop_resource:2(@
.lstm_cell_635_matmul_1_readvariableop_resource:
(;
-lstm_cell_635_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_635/BiasAdd/ReadVariableOpб#lstm_cell_635/MatMul/ReadVariableOpб%lstm_cell_635/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_635/MatMul/ReadVariableOpReadVariableOp,lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_635/MatMulMatMulstrided_slice_2:output:0+lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_635/MatMul_1MatMulzeros:output:0-lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_635/addAddV2lstm_cell_635/MatMul:product:0 lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_635/BiasAddBiasAddlstm_cell_635/add:z:0,lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_635/splitSplit&lstm_cell_635/split/split_dim:output:0lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_635/SigmoidSigmoidlstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_1Sigmoidlstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_635/mulMullstm_cell_635/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_635/ReluRelulstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_635/mul_1Mullstm_cell_635/Sigmoid:y:0 lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_635/add_1AddV2lstm_cell_635/mul:z:0lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_2Sigmoidlstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_635/Relu_1Relulstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_635/mul_2Mullstm_cell_635/Sigmoid_2:y:0"lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_635_matmul_readvariableop_resource.lstm_cell_635_matmul_1_readvariableop_resource-lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4076561*
condR
while_cond_4076560*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_635/BiasAdd/ReadVariableOp$^lstm_cell_635/MatMul/ReadVariableOp&^lstm_cell_635/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_635/BiasAdd/ReadVariableOp$lstm_cell_635/BiasAdd/ReadVariableOp2J
#lstm_cell_635/MatMul/ReadVariableOp#lstm_cell_635/MatMul/ReadVariableOp2N
%lstm_cell_635/MatMul_1/ReadVariableOp%lstm_cell_635/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_4072743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4072743___redundant_placeholder05
1while_while_cond_4072743___redundant_placeholder15
1while_while_cond_4072743___redundant_placeholder25
1while_while_cond_4072743___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
О
є
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071985

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
Л8
┌
while_body_4073733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_633_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_633_matmul_readvariableop_resource:	љG
4while_lstm_cell_633_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_633/BiasAdd/ReadVariableOpб)while/lstm_cell_633/MatMul/ReadVariableOpб+while/lstm_cell_633/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_633/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_633/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_633/addAddV2$while/lstm_cell_633/MatMul:product:0&while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_633/BiasAddBiasAddwhile/lstm_cell_633/add:z:02while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_633/splitSplit,while/lstm_cell_633/split/split_dim:output:0$while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_633/SigmoidSigmoid"while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_1Sigmoid"while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_633/mulMul!while/lstm_cell_633/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_633/ReluRelu"while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_633/mul_1Mulwhile/lstm_cell_633/Sigmoid:y:0&while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_633/add_1AddV2while/lstm_cell_633/mul:z:0while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_2Sigmoid"while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_633/Relu_1Reluwhile/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_633/mul_2Mul!while/lstm_cell_633/Sigmoid_2:y:0(while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_633/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_633/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_633/BiasAdd/ReadVariableOp*^while/lstm_cell_633/MatMul/ReadVariableOp,^while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_633_biasadd_readvariableop_resource5while_lstm_cell_633_biasadd_readvariableop_resource_0"n
4while_lstm_cell_633_matmul_1_readvariableop_resource6while_lstm_cell_633_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_633_matmul_readvariableop_resource4while_lstm_cell_633_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_633/BiasAdd/ReadVariableOp*while/lstm_cell_633/BiasAdd/ReadVariableOp2V
)while/lstm_cell_633/MatMul/ReadVariableOp)while/lstm_cell_633/MatMul/ReadVariableOp2Z
+while/lstm_cell_633/MatMul_1/ReadVariableOp+while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4075471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4075471___redundant_placeholder05
1while_while_cond_4075471___redundant_placeholder15
1while_while_cond_4075471___redundant_placeholder25
1while_while_cond_4075471___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4075185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4075185___redundant_placeholder05
1while_while_cond_4075185___redundant_placeholder15
1while_while_cond_4075185___redundant_placeholder25
1while_while_cond_4075185___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Ѓ
и
*__inference_lstm_633_layer_call_fn_4074984

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4073817s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_634_layer_call_fn_4075578
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4072463|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
№
Э
/__inference_lstm_cell_633_layer_call_fn_4076824

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
РJ
Б
E__inference_lstm_634_layer_call_and_return_conditional_losses_4076172

inputs?
,lstm_cell_634_matmul_readvariableop_resource:	d╚A
.lstm_cell_634_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_634_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_634/BiasAdd/ReadVariableOpб#lstm_cell_634/MatMul/ReadVariableOpб%lstm_cell_634/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_634/MatMul/ReadVariableOpReadVariableOp,lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_634/MatMulMatMulstrided_slice_2:output:0+lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_634/MatMul_1MatMulzeros:output:0-lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_634/addAddV2lstm_cell_634/MatMul:product:0 lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_634/BiasAddBiasAddlstm_cell_634/add:z:0,lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_634/splitSplit&lstm_cell_634/split/split_dim:output:0lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_634/SigmoidSigmoidlstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_1Sigmoidlstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_634/mulMullstm_cell_634/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_634/ReluRelulstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_634/mul_1Mullstm_cell_634/Sigmoid:y:0 lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_634/add_1AddV2lstm_cell_634/mul:z:0lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_2Sigmoidlstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_634/Relu_1Relulstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_634/mul_2Mullstm_cell_634/Sigmoid_2:y:0"lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_634_matmul_readvariableop_resource.lstm_cell_634_matmul_1_readvariableop_resource-lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4076088*
condR
while_cond_4076087*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_634/BiasAdd/ReadVariableOp$^lstm_cell_634/MatMul/ReadVariableOp&^lstm_cell_634/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_634/BiasAdd/ReadVariableOp$lstm_cell_634/BiasAdd/ReadVariableOp2J
#lstm_cell_634/MatMul/ReadVariableOp#lstm_cell_634/MatMul/ReadVariableOp2N
%lstm_cell_634/MatMul_1/ReadVariableOp%lstm_cell_634/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073121

inputs?
,lstm_cell_634_matmul_readvariableop_resource:	d╚A
.lstm_cell_634_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_634_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_634/BiasAdd/ReadVariableOpб#lstm_cell_634/MatMul/ReadVariableOpб%lstm_cell_634/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_634/MatMul/ReadVariableOpReadVariableOp,lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_634/MatMulMatMulstrided_slice_2:output:0+lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_634/MatMul_1MatMulzeros:output:0-lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_634/addAddV2lstm_cell_634/MatMul:product:0 lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_634/BiasAddBiasAddlstm_cell_634/add:z:0,lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_634/splitSplit&lstm_cell_634/split/split_dim:output:0lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_634/SigmoidSigmoidlstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_1Sigmoidlstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_634/mulMullstm_cell_634/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_634/ReluRelulstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_634/mul_1Mullstm_cell_634/Sigmoid:y:0 lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_634/add_1AddV2lstm_cell_634/mul:z:0lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_2Sigmoidlstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_634/Relu_1Relulstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_634/mul_2Mullstm_cell_634/Sigmoid_2:y:0"lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_634_matmul_readvariableop_resource.lstm_cell_634_matmul_1_readvariableop_resource-lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4073037*
condR
while_cond_4073036*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_634/BiasAdd/ReadVariableOp$^lstm_cell_634/MatMul/ReadVariableOp&^lstm_cell_634/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_634/BiasAdd/ReadVariableOp$lstm_cell_634/BiasAdd/ReadVariableOp2J
#lstm_cell_634/MatMul/ReadVariableOp#lstm_cell_634/MatMul/ReadVariableOp2N
%lstm_cell_634/MatMul_1/ReadVariableOp%lstm_cell_634/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
и

Ч
lstm_634_while_cond_4074283.
*lstm_634_while_lstm_634_while_loop_counter4
0lstm_634_while_lstm_634_while_maximum_iterations
lstm_634_while_placeholder 
lstm_634_while_placeholder_1 
lstm_634_while_placeholder_2 
lstm_634_while_placeholder_30
,lstm_634_while_less_lstm_634_strided_slice_1G
Clstm_634_while_lstm_634_while_cond_4074283___redundant_placeholder0G
Clstm_634_while_lstm_634_while_cond_4074283___redundant_placeholder1G
Clstm_634_while_lstm_634_while_cond_4074283___redundant_placeholder2G
Clstm_634_while_lstm_634_while_cond_4074283___redundant_placeholder3
lstm_634_while_identity
є
lstm_634/while/LessLesslstm_634_while_placeholder,lstm_634_while_less_lstm_634_strided_slice_1*
T0*
_output_shapes
: ]
lstm_634/while/IdentityIdentitylstm_634/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_634_while_identity lstm_634/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_634_while_cond_4074710.
*lstm_634_while_lstm_634_while_loop_counter4
0lstm_634_while_lstm_634_while_maximum_iterations
lstm_634_while_placeholder 
lstm_634_while_placeholder_1 
lstm_634_while_placeholder_2 
lstm_634_while_placeholder_30
,lstm_634_while_less_lstm_634_strided_slice_1G
Clstm_634_while_lstm_634_while_cond_4074710___redundant_placeholder0G
Clstm_634_while_lstm_634_while_cond_4074710___redundant_placeholder1G
Clstm_634_while_lstm_634_while_cond_4074710___redundant_placeholder2G
Clstm_634_while_lstm_634_while_cond_4074710___redundant_placeholder3
lstm_634_while_identity
є
lstm_634/while/LessLesslstm_634_while_placeholder,lstm_634_while_less_lstm_634_strided_slice_1*
T0*
_output_shapes
: ]
lstm_634/while/IdentityIdentitylstm_634/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_634_while_identity lstm_634/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Г
╣
*__inference_lstm_633_layer_call_fn_4074962
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4072113|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
РJ
Б
E__inference_lstm_634_layer_call_and_return_conditional_losses_4076029

inputs?
,lstm_cell_634_matmul_readvariableop_resource:	d╚A
.lstm_cell_634_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_634_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_634/BiasAdd/ReadVariableOpб#lstm_cell_634/MatMul/ReadVariableOpб%lstm_cell_634/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_634/MatMul/ReadVariableOpReadVariableOp,lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_634/MatMulMatMulstrided_slice_2:output:0+lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_634/MatMul_1MatMulzeros:output:0-lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_634/addAddV2lstm_cell_634/MatMul:product:0 lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_634/BiasAddBiasAddlstm_cell_634/add:z:0,lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_634/splitSplit&lstm_cell_634/split/split_dim:output:0lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_634/SigmoidSigmoidlstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_1Sigmoidlstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_634/mulMullstm_cell_634/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_634/ReluRelulstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_634/mul_1Mullstm_cell_634/Sigmoid:y:0 lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_634/add_1AddV2lstm_cell_634/mul:z:0lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_2Sigmoidlstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_634/Relu_1Relulstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_634/mul_2Mullstm_cell_634/Sigmoid_2:y:0"lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_634_matmul_readvariableop_resource.lstm_cell_634_matmul_1_readvariableop_resource-lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4075945*
condR
while_cond_4075944*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_634/BiasAdd/ReadVariableOp$^lstm_cell_634/MatMul/ReadVariableOp&^lstm_cell_634/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_634/BiasAdd/ReadVariableOp$lstm_cell_634/BiasAdd/ReadVariableOp2J
#lstm_cell_634/MatMul/ReadVariableOp#lstm_cell_634/MatMul/ReadVariableOp2N
%lstm_cell_634/MatMul_1/ReadVariableOp%lstm_cell_634/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
═
Ѓ
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072539

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
РJ
Б
E__inference_lstm_633_layer_call_and_return_conditional_losses_4072971

inputs?
,lstm_cell_633_matmul_readvariableop_resource:	љA
.lstm_cell_633_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_633_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_633/BiasAdd/ReadVariableOpб#lstm_cell_633/MatMul/ReadVariableOpб%lstm_cell_633/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_633/MatMul/ReadVariableOpReadVariableOp,lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_633/MatMulMatMulstrided_slice_2:output:0+lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_633/MatMul_1MatMulzeros:output:0-lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_633/addAddV2lstm_cell_633/MatMul:product:0 lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_633/BiasAddBiasAddlstm_cell_633/add:z:0,lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_633/splitSplit&lstm_cell_633/split/split_dim:output:0lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_633/SigmoidSigmoidlstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_1Sigmoidlstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_633/mulMullstm_cell_633/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_633/ReluRelulstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_633/mul_1Mullstm_cell_633/Sigmoid:y:0 lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_633/add_1AddV2lstm_cell_633/mul:z:0lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_2Sigmoidlstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_633/Relu_1Relulstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_633/mul_2Mullstm_cell_633/Sigmoid_2:y:0"lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_633_matmul_readvariableop_resource.lstm_cell_633_matmul_1_readvariableop_resource-lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4072887*
condR
while_cond_4072886*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_633/BiasAdd/ReadVariableOp$^lstm_cell_633/MatMul/ReadVariableOp&^lstm_cell_633/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_633/BiasAdd/ReadVariableOp$lstm_cell_633/BiasAdd/ReadVariableOp2J
#lstm_cell_633/MatMul/ReadVariableOp#lstm_cell_633/MatMul/ReadVariableOp2N
%lstm_cell_633/MatMul_1/ReadVariableOp%lstm_cell_633/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_4073568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_634_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_634/BiasAdd/ReadVariableOpб)while/lstm_cell_634/MatMul/ReadVariableOpб+while/lstm_cell_634/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_634/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_634/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_634/addAddV2$while/lstm_cell_634/MatMul:product:0&while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_634/BiasAddBiasAddwhile/lstm_cell_634/add:z:02while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_634/splitSplit,while/lstm_cell_634/split/split_dim:output:0$while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_634/SigmoidSigmoid"while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_1Sigmoid"while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_634/mulMul!while/lstm_cell_634/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_634/ReluRelu"while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_634/mul_1Mulwhile/lstm_cell_634/Sigmoid:y:0&while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_634/add_1AddV2while/lstm_cell_634/mul:z:0while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_2Sigmoid"while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_634/Relu_1Reluwhile/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_634/mul_2Mul!while/lstm_cell_634/Sigmoid_2:y:0(while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_634/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_634/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_634/BiasAdd/ReadVariableOp*^while/lstm_cell_634/MatMul/ReadVariableOp,^while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_634_biasadd_readvariableop_resource5while_lstm_cell_634_biasadd_readvariableop_resource_0"n
4while_lstm_cell_634_matmul_1_readvariableop_resource6while_lstm_cell_634_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_634_matmul_readvariableop_resource4while_lstm_cell_634_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_634/BiasAdd/ReadVariableOp*while/lstm_cell_634/BiasAdd/ReadVariableOp2V
)while/lstm_cell_634/MatMul/ReadVariableOp)while/lstm_cell_634/MatMul/ReadVariableOp2Z
+while/lstm_cell_634/MatMul_1/ReadVariableOp+while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
■Ђ
Џ
K__inference_sequential_211_layer_call_and_return_conditional_losses_4074940

inputsH
5lstm_633_lstm_cell_633_matmul_readvariableop_resource:	љJ
7lstm_633_lstm_cell_633_matmul_1_readvariableop_resource:	dљE
6lstm_633_lstm_cell_633_biasadd_readvariableop_resource:	љH
5lstm_634_lstm_cell_634_matmul_readvariableop_resource:	d╚J
7lstm_634_lstm_cell_634_matmul_1_readvariableop_resource:	2╚E
6lstm_634_lstm_cell_634_biasadd_readvariableop_resource:	╚G
5lstm_635_lstm_cell_635_matmul_readvariableop_resource:2(I
7lstm_635_lstm_cell_635_matmul_1_readvariableop_resource:
(D
6lstm_635_lstm_cell_635_biasadd_readvariableop_resource:(:
(dense_211_matmul_readvariableop_resource:
7
)dense_211_biasadd_readvariableop_resource:
identityѕб dense_211/BiasAdd/ReadVariableOpбdense_211/MatMul/ReadVariableOpб-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOpб,lstm_633/lstm_cell_633/MatMul/ReadVariableOpб.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOpбlstm_633/whileб-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOpб,lstm_634/lstm_cell_634/MatMul/ReadVariableOpб.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOpбlstm_634/whileб-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOpб,lstm_635/lstm_cell_635/MatMul/ReadVariableOpб.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOpбlstm_635/whileD
lstm_633/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_633/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_633/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_633/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_633/strided_sliceStridedSlicelstm_633/Shape:output:0%lstm_633/strided_slice/stack:output:0'lstm_633/strided_slice/stack_1:output:0'lstm_633/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_633/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_633/zeros/packedPacklstm_633/strided_slice:output:0 lstm_633/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_633/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_633/zerosFilllstm_633/zeros/packed:output:0lstm_633/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_633/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_633/zeros_1/packedPacklstm_633/strided_slice:output:0"lstm_633/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_633/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_633/zeros_1Fill lstm_633/zeros_1/packed:output:0lstm_633/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_633/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_633/transpose	Transposeinputs lstm_633/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_633/Shape_1Shapelstm_633/transpose:y:0*
T0*
_output_shapes
:h
lstm_633/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_633/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_633/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_633/strided_slice_1StridedSlicelstm_633/Shape_1:output:0'lstm_633/strided_slice_1/stack:output:0)lstm_633/strided_slice_1/stack_1:output:0)lstm_633/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_633/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_633/TensorArrayV2TensorListReserve-lstm_633/TensorArrayV2/element_shape:output:0!lstm_633/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_633/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_633/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_633/transpose:y:0Glstm_633/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_633/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_633/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_633/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_633/strided_slice_2StridedSlicelstm_633/transpose:y:0'lstm_633/strided_slice_2/stack:output:0)lstm_633/strided_slice_2/stack_1:output:0)lstm_633/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_633/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp5lstm_633_lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_633/lstm_cell_633/MatMulMatMul!lstm_633/strided_slice_2:output:04lstm_633/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp7lstm_633_lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_633/lstm_cell_633/MatMul_1MatMullstm_633/zeros:output:06lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_633/lstm_cell_633/addAddV2'lstm_633/lstm_cell_633/MatMul:product:0)lstm_633/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp6lstm_633_lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_633/lstm_cell_633/BiasAddBiasAddlstm_633/lstm_cell_633/add:z:05lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_633/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_633/lstm_cell_633/splitSplit/lstm_633/lstm_cell_633/split/split_dim:output:0'lstm_633/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_633/lstm_cell_633/SigmoidSigmoid%lstm_633/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_633/lstm_cell_633/Sigmoid_1Sigmoid%lstm_633/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_633/lstm_cell_633/mulMul$lstm_633/lstm_cell_633/Sigmoid_1:y:0lstm_633/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_633/lstm_cell_633/ReluRelu%lstm_633/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dц
lstm_633/lstm_cell_633/mul_1Mul"lstm_633/lstm_cell_633/Sigmoid:y:0)lstm_633/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_633/lstm_cell_633/add_1AddV2lstm_633/lstm_cell_633/mul:z:0 lstm_633/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_633/lstm_cell_633/Sigmoid_2Sigmoid%lstm_633/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dy
lstm_633/lstm_cell_633/Relu_1Relu lstm_633/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_633/lstm_cell_633/mul_2Mul$lstm_633/lstm_cell_633/Sigmoid_2:y:0+lstm_633/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_633/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_633/TensorArrayV2_1TensorListReserve/lstm_633/TensorArrayV2_1/element_shape:output:0!lstm_633/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_633/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_633/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_633/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_633/whileWhile$lstm_633/while/loop_counter:output:0*lstm_633/while/maximum_iterations:output:0lstm_633/time:output:0!lstm_633/TensorArrayV2_1:handle:0lstm_633/zeros:output:0lstm_633/zeros_1:output:0!lstm_633/strided_slice_1:output:0@lstm_633/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_633_lstm_cell_633_matmul_readvariableop_resource7lstm_633_lstm_cell_633_matmul_1_readvariableop_resource6lstm_633_lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_633_while_body_4074572*'
condR
lstm_633_while_cond_4074571*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_633/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_633/TensorArrayV2Stack/TensorListStackTensorListStacklstm_633/while:output:3Blstm_633/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_633/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_633/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_633/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_633/strided_slice_3StridedSlice4lstm_633/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_633/strided_slice_3/stack:output:0)lstm_633/strided_slice_3/stack_1:output:0)lstm_633/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_633/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_633/transpose_1	Transpose4lstm_633/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_633/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_633/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_634/ShapeShapelstm_633/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_634/strided_sliceStridedSlicelstm_634/Shape:output:0%lstm_634/strided_slice/stack:output:0'lstm_634/strided_slice/stack_1:output:0'lstm_634/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_634/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_634/zeros/packedPacklstm_634/strided_slice:output:0 lstm_634/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_634/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_634/zerosFilllstm_634/zeros/packed:output:0lstm_634/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_634/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_634/zeros_1/packedPacklstm_634/strided_slice:output:0"lstm_634/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_634/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_634/zeros_1Fill lstm_634/zeros_1/packed:output:0lstm_634/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_634/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_634/transpose	Transposelstm_633/transpose_1:y:0 lstm_634/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_634/Shape_1Shapelstm_634/transpose:y:0*
T0*
_output_shapes
:h
lstm_634/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_634/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_634/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_634/strided_slice_1StridedSlicelstm_634/Shape_1:output:0'lstm_634/strided_slice_1/stack:output:0)lstm_634/strided_slice_1/stack_1:output:0)lstm_634/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_634/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_634/TensorArrayV2TensorListReserve-lstm_634/TensorArrayV2/element_shape:output:0!lstm_634/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_634/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_634/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_634/transpose:y:0Glstm_634/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_634/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_634/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_634/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_634/strided_slice_2StridedSlicelstm_634/transpose:y:0'lstm_634/strided_slice_2/stack:output:0)lstm_634/strided_slice_2/stack_1:output:0)lstm_634/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_634/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp5lstm_634_lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_634/lstm_cell_634/MatMulMatMul!lstm_634/strided_slice_2:output:04lstm_634/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp7lstm_634_lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_634/lstm_cell_634/MatMul_1MatMullstm_634/zeros:output:06lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_634/lstm_cell_634/addAddV2'lstm_634/lstm_cell_634/MatMul:product:0)lstm_634/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp6lstm_634_lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_634/lstm_cell_634/BiasAddBiasAddlstm_634/lstm_cell_634/add:z:05lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_634/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_634/lstm_cell_634/splitSplit/lstm_634/lstm_cell_634/split/split_dim:output:0'lstm_634/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_634/lstm_cell_634/SigmoidSigmoid%lstm_634/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_634/lstm_cell_634/Sigmoid_1Sigmoid%lstm_634/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_634/lstm_cell_634/mulMul$lstm_634/lstm_cell_634/Sigmoid_1:y:0lstm_634/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_634/lstm_cell_634/ReluRelu%lstm_634/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_634/lstm_cell_634/mul_1Mul"lstm_634/lstm_cell_634/Sigmoid:y:0)lstm_634/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_634/lstm_cell_634/add_1AddV2lstm_634/lstm_cell_634/mul:z:0 lstm_634/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_634/lstm_cell_634/Sigmoid_2Sigmoid%lstm_634/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2y
lstm_634/lstm_cell_634/Relu_1Relu lstm_634/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_634/lstm_cell_634/mul_2Mul$lstm_634/lstm_cell_634/Sigmoid_2:y:0+lstm_634/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_634/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_634/TensorArrayV2_1TensorListReserve/lstm_634/TensorArrayV2_1/element_shape:output:0!lstm_634/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_634/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_634/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_634/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_634/whileWhile$lstm_634/while/loop_counter:output:0*lstm_634/while/maximum_iterations:output:0lstm_634/time:output:0!lstm_634/TensorArrayV2_1:handle:0lstm_634/zeros:output:0lstm_634/zeros_1:output:0!lstm_634/strided_slice_1:output:0@lstm_634/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_634_lstm_cell_634_matmul_readvariableop_resource7lstm_634_lstm_cell_634_matmul_1_readvariableop_resource6lstm_634_lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_634_while_body_4074711*'
condR
lstm_634_while_cond_4074710*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_634/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_634/TensorArrayV2Stack/TensorListStackTensorListStacklstm_634/while:output:3Blstm_634/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_634/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_634/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_634/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_634/strided_slice_3StridedSlice4lstm_634/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_634/strided_slice_3/stack:output:0)lstm_634/strided_slice_3/stack_1:output:0)lstm_634/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_634/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_634/transpose_1	Transpose4lstm_634/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_634/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_634/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_635/ShapeShapelstm_634/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_635/strided_sliceStridedSlicelstm_635/Shape:output:0%lstm_635/strided_slice/stack:output:0'lstm_635/strided_slice/stack_1:output:0'lstm_635/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_635/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_635/zeros/packedPacklstm_635/strided_slice:output:0 lstm_635/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_635/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_635/zerosFilllstm_635/zeros/packed:output:0lstm_635/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_635/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_635/zeros_1/packedPacklstm_635/strided_slice:output:0"lstm_635/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_635/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_635/zeros_1Fill lstm_635/zeros_1/packed:output:0lstm_635/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_635/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_635/transpose	Transposelstm_634/transpose_1:y:0 lstm_635/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_635/Shape_1Shapelstm_635/transpose:y:0*
T0*
_output_shapes
:h
lstm_635/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_635/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_635/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_635/strided_slice_1StridedSlicelstm_635/Shape_1:output:0'lstm_635/strided_slice_1/stack:output:0)lstm_635/strided_slice_1/stack_1:output:0)lstm_635/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_635/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_635/TensorArrayV2TensorListReserve-lstm_635/TensorArrayV2/element_shape:output:0!lstm_635/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_635/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_635/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_635/transpose:y:0Glstm_635/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_635/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_635/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_635/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_635/strided_slice_2StridedSlicelstm_635/transpose:y:0'lstm_635/strided_slice_2/stack:output:0)lstm_635/strided_slice_2/stack_1:output:0)lstm_635/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_635/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp5lstm_635_lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_635/lstm_cell_635/MatMulMatMul!lstm_635/strided_slice_2:output:04lstm_635/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp7lstm_635_lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_635/lstm_cell_635/MatMul_1MatMullstm_635/zeros:output:06lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_635/lstm_cell_635/addAddV2'lstm_635/lstm_cell_635/MatMul:product:0)lstm_635/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp6lstm_635_lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_635/lstm_cell_635/BiasAddBiasAddlstm_635/lstm_cell_635/add:z:05lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_635/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_635/lstm_cell_635/splitSplit/lstm_635/lstm_cell_635/split/split_dim:output:0'lstm_635/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_635/lstm_cell_635/SigmoidSigmoid%lstm_635/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_635/lstm_cell_635/Sigmoid_1Sigmoid%lstm_635/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_635/lstm_cell_635/mulMul$lstm_635/lstm_cell_635/Sigmoid_1:y:0lstm_635/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_635/lstm_cell_635/ReluRelu%lstm_635/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_635/lstm_cell_635/mul_1Mul"lstm_635/lstm_cell_635/Sigmoid:y:0)lstm_635/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_635/lstm_cell_635/add_1AddV2lstm_635/lstm_cell_635/mul:z:0 lstm_635/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_635/lstm_cell_635/Sigmoid_2Sigmoid%lstm_635/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
y
lstm_635/lstm_cell_635/Relu_1Relu lstm_635/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_635/lstm_cell_635/mul_2Mul$lstm_635/lstm_cell_635/Sigmoid_2:y:0+lstm_635/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_635/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_635/TensorArrayV2_1TensorListReserve/lstm_635/TensorArrayV2_1/element_shape:output:0!lstm_635/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_635/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_635/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_635/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_635/whileWhile$lstm_635/while/loop_counter:output:0*lstm_635/while/maximum_iterations:output:0lstm_635/time:output:0!lstm_635/TensorArrayV2_1:handle:0lstm_635/zeros:output:0lstm_635/zeros_1:output:0!lstm_635/strided_slice_1:output:0@lstm_635/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_635_lstm_cell_635_matmul_readvariableop_resource7lstm_635_lstm_cell_635_matmul_1_readvariableop_resource6lstm_635_lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_635_while_body_4074850*'
condR
lstm_635_while_cond_4074849*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_635/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_635/TensorArrayV2Stack/TensorListStackTensorListStacklstm_635/while:output:3Blstm_635/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_635/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_635/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_635/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_635/strided_slice_3StridedSlice4lstm_635/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_635/strided_slice_3/stack:output:0)lstm_635/strided_slice_3/stack_1:output:0)lstm_635/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_635/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_635/transpose_1	Transpose4lstm_635/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_635/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_635/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_211/MatMul/ReadVariableOpReadVariableOp(dense_211_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_211/MatMulMatMul!lstm_635/strided_slice_3:output:0'dense_211/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_211/BiasAdd/ReadVariableOpReadVariableOp)dense_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_211/BiasAddBiasAdddense_211/MatMul:product:0(dense_211/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_211/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_211/BiasAdd/ReadVariableOp ^dense_211/MatMul/ReadVariableOp.^lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp-^lstm_633/lstm_cell_633/MatMul/ReadVariableOp/^lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp^lstm_633/while.^lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp-^lstm_634/lstm_cell_634/MatMul/ReadVariableOp/^lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp^lstm_634/while.^lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp-^lstm_635/lstm_cell_635/MatMul/ReadVariableOp/^lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp^lstm_635/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_211/BiasAdd/ReadVariableOp dense_211/BiasAdd/ReadVariableOp2B
dense_211/MatMul/ReadVariableOpdense_211/MatMul/ReadVariableOp2^
-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp2\
,lstm_633/lstm_cell_633/MatMul/ReadVariableOp,lstm_633/lstm_cell_633/MatMul/ReadVariableOp2`
.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp2 
lstm_633/whilelstm_633/while2^
-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp2\
,lstm_634/lstm_cell_634/MatMul/ReadVariableOp,lstm_634/lstm_cell_634/MatMul/ReadVariableOp2`
.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp2 
lstm_634/whilelstm_634/while2^
-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp2\
,lstm_635/lstm_cell_635/MatMul/ReadVariableOp,lstm_635/lstm_cell_635/MatMul/ReadVariableOp2`
.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp2 
lstm_635/whilelstm_635/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4076417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4076417___redundant_placeholder05
1while_while_cond_4076417___redundant_placeholder15
1while_while_cond_4076417___redundant_placeholder25
1while_while_cond_4076417___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4075186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_633_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_633_matmul_readvariableop_resource:	љG
4while_lstm_cell_633_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_633/BiasAdd/ReadVariableOpб)while/lstm_cell_633/MatMul/ReadVariableOpб+while/lstm_cell_633/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_633/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_633/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_633/addAddV2$while/lstm_cell_633/MatMul:product:0&while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_633/BiasAddBiasAddwhile/lstm_cell_633/add:z:02while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_633/splitSplit,while/lstm_cell_633/split/split_dim:output:0$while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_633/SigmoidSigmoid"while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_1Sigmoid"while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_633/mulMul!while/lstm_cell_633/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_633/ReluRelu"while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_633/mul_1Mulwhile/lstm_cell_633/Sigmoid:y:0&while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_633/add_1AddV2while/lstm_cell_633/mul:z:0while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_2Sigmoid"while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_633/Relu_1Reluwhile/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_633/mul_2Mul!while/lstm_cell_633/Sigmoid_2:y:0(while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_633/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_633/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_633/BiasAdd/ReadVariableOp*^while/lstm_cell_633/MatMul/ReadVariableOp,^while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_633_biasadd_readvariableop_resource5while_lstm_cell_633_biasadd_readvariableop_resource_0"n
4while_lstm_cell_633_matmul_1_readvariableop_resource6while_lstm_cell_633_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_633_matmul_readvariableop_resource4while_lstm_cell_633_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_633/BiasAdd/ReadVariableOp*while/lstm_cell_633/BiasAdd/ReadVariableOp2V
)while/lstm_cell_633/MatMul/ReadVariableOp)while/lstm_cell_633/MatMul/ReadVariableOp2Z
+while/lstm_cell_633/MatMul_1/ReadVariableOp+while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
О
є
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072335

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Н
Ё
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4077101

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
▀
ѕ
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4076905

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
РJ
Б
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075413

inputs?
,lstm_cell_633_matmul_readvariableop_resource:	љA
.lstm_cell_633_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_633_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_633/BiasAdd/ReadVariableOpб#lstm_cell_633/MatMul/ReadVariableOpб%lstm_cell_633/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_633/MatMul/ReadVariableOpReadVariableOp,lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_633/MatMulMatMulstrided_slice_2:output:0+lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_633/MatMul_1MatMulzeros:output:0-lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_633/addAddV2lstm_cell_633/MatMul:product:0 lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_633/BiasAddBiasAddlstm_cell_633/add:z:0,lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_633/splitSplit&lstm_cell_633/split/split_dim:output:0lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_633/SigmoidSigmoidlstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_1Sigmoidlstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_633/mulMullstm_cell_633/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_633/ReluRelulstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_633/mul_1Mullstm_cell_633/Sigmoid:y:0 lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_633/add_1AddV2lstm_cell_633/mul:z:0lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_2Sigmoidlstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_633/Relu_1Relulstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_633/mul_2Mullstm_cell_633/Sigmoid_2:y:0"lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_633_matmul_readvariableop_resource.lstm_cell_633_matmul_1_readvariableop_resource-lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4075329*
condR
while_cond_4075328*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_633/BiasAdd/ReadVariableOp$^lstm_cell_633/MatMul/ReadVariableOp&^lstm_cell_633/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_633/BiasAdd/ReadVariableOp$lstm_cell_633/BiasAdd/ReadVariableOp2J
#lstm_cell_633/MatMul/ReadVariableOp#lstm_cell_633/MatMul/ReadVariableOp2N
%lstm_cell_633/MatMul_1/ReadVariableOp%lstm_cell_633/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
е8
І
E__inference_lstm_635_layer_call_and_return_conditional_losses_4072622

inputs'
lstm_cell_635_4072540:2('
lstm_cell_635_4072542:
(#
lstm_cell_635_4072544:(
identityѕб%lstm_cell_635/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_635/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_635_4072540lstm_cell_635_4072542lstm_cell_635_4072544*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072539n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_635_4072540lstm_cell_635_4072542lstm_cell_635_4072544*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4072553*
condR
while_cond_4072552*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_635/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_635/StatefulPartitionedCall%lstm_cell_635/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
и

Ч
lstm_633_while_cond_4074144.
*lstm_633_while_lstm_633_while_loop_counter4
0lstm_633_while_lstm_633_while_maximum_iterations
lstm_633_while_placeholder 
lstm_633_while_placeholder_1 
lstm_633_while_placeholder_2 
lstm_633_while_placeholder_30
,lstm_633_while_less_lstm_633_strided_slice_1G
Clstm_633_while_lstm_633_while_cond_4074144___redundant_placeholder0G
Clstm_633_while_lstm_633_while_cond_4074144___redundant_placeholder1G
Clstm_633_while_lstm_633_while_cond_4074144___redundant_placeholder2G
Clstm_633_while_lstm_633_while_cond_4074144___redundant_placeholder3
lstm_633_while_identity
є
lstm_633/while/LessLesslstm_633_while_placeholder,lstm_633_while_less_lstm_633_strided_slice_1*
T0*
_output_shapes
: ]
lstm_633/while/IdentityIdentitylstm_633/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_633_while_identity lstm_633/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
аK
Ц
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075270
inputs_0?
,lstm_cell_633_matmul_readvariableop_resource:	љA
.lstm_cell_633_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_633_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_633/BiasAdd/ReadVariableOpб#lstm_cell_633/MatMul/ReadVariableOpб%lstm_cell_633/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_633/MatMul/ReadVariableOpReadVariableOp,lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_633/MatMulMatMulstrided_slice_2:output:0+lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_633/MatMul_1MatMulzeros:output:0-lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_633/addAddV2lstm_cell_633/MatMul:product:0 lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_633/BiasAddBiasAddlstm_cell_633/add:z:0,lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_633/splitSplit&lstm_cell_633/split/split_dim:output:0lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_633/SigmoidSigmoidlstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_1Sigmoidlstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_633/mulMullstm_cell_633/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_633/ReluRelulstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_633/mul_1Mullstm_cell_633/Sigmoid:y:0 lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_633/add_1AddV2lstm_cell_633/mul:z:0lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_2Sigmoidlstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_633/Relu_1Relulstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_633/mul_2Mullstm_cell_633/Sigmoid_2:y:0"lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_633_matmul_readvariableop_resource.lstm_cell_633_matmul_1_readvariableop_resource-lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4075186*
condR
while_cond_4075185*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_633/BiasAdd/ReadVariableOp$^lstm_cell_633/MatMul/ReadVariableOp&^lstm_cell_633/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_633/BiasAdd/ReadVariableOp$lstm_cell_633/BiasAdd/ReadVariableOp2J
#lstm_cell_633/MatMul/ReadVariableOp#lstm_cell_633/MatMul/ReadVariableOp2N
%lstm_cell_633/MatMul_1/ReadVariableOp%lstm_cell_633/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_4076560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4076560___redundant_placeholder05
1while_while_cond_4076560___redundant_placeholder15
1while_while_cond_4076560___redundant_placeholder25
1while_while_cond_4076560___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
╔	
э
F__inference_dense_211_layer_call_and_return_conditional_losses_4073289

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
║
╚
while_cond_4075042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4075042___redundant_placeholder05
1while_while_cond_4075042___redundant_placeholder15
1while_while_cond_4075042___redundant_placeholder25
1while_while_cond_4075042___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075556

inputs?
,lstm_cell_633_matmul_readvariableop_resource:	љA
.lstm_cell_633_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_633_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_633/BiasAdd/ReadVariableOpб#lstm_cell_633/MatMul/ReadVariableOpб%lstm_cell_633/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_633/MatMul/ReadVariableOpReadVariableOp,lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_633/MatMulMatMulstrided_slice_2:output:0+lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_633/MatMul_1MatMulzeros:output:0-lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_633/addAddV2lstm_cell_633/MatMul:product:0 lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_633/BiasAddBiasAddlstm_cell_633/add:z:0,lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_633/splitSplit&lstm_cell_633/split/split_dim:output:0lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_633/SigmoidSigmoidlstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_1Sigmoidlstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_633/mulMullstm_cell_633/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_633/ReluRelulstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_633/mul_1Mullstm_cell_633/Sigmoid:y:0 lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_633/add_1AddV2lstm_cell_633/mul:z:0lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_2Sigmoidlstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_633/Relu_1Relulstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_633/mul_2Mullstm_cell_633/Sigmoid_2:y:0"lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_633_matmul_readvariableop_resource.lstm_cell_633_matmul_1_readvariableop_resource-lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4075472*
condR
while_cond_4075471*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_633/BiasAdd/ReadVariableOp$^lstm_cell_633/MatMul/ReadVariableOp&^lstm_cell_633/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_633/BiasAdd/ReadVariableOp$lstm_cell_633/BiasAdd/ReadVariableOp2J
#lstm_cell_633/MatMul/ReadVariableOp#lstm_cell_633/MatMul/ReadVariableOp2N
%lstm_cell_633/MatMul_1/ReadVariableOp%lstm_cell_633/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЬT
п
*sequential_211_lstm_635_while_body_4071682L
Hsequential_211_lstm_635_while_sequential_211_lstm_635_while_loop_counterR
Nsequential_211_lstm_635_while_sequential_211_lstm_635_while_maximum_iterations-
)sequential_211_lstm_635_while_placeholder/
+sequential_211_lstm_635_while_placeholder_1/
+sequential_211_lstm_635_while_placeholder_2/
+sequential_211_lstm_635_while_placeholder_3K
Gsequential_211_lstm_635_while_sequential_211_lstm_635_strided_slice_1_0ѕ
Ѓsequential_211_lstm_635_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_635_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_211_lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0:2(`
Nsequential_211_lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0:
([
Msequential_211_lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0:(*
&sequential_211_lstm_635_while_identity,
(sequential_211_lstm_635_while_identity_1,
(sequential_211_lstm_635_while_identity_2,
(sequential_211_lstm_635_while_identity_3,
(sequential_211_lstm_635_while_identity_4,
(sequential_211_lstm_635_while_identity_5I
Esequential_211_lstm_635_while_sequential_211_lstm_635_strided_slice_1є
Ђsequential_211_lstm_635_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_635_tensorarrayunstack_tensorlistfromtensor\
Jsequential_211_lstm_635_while_lstm_cell_635_matmul_readvariableop_resource:2(^
Lsequential_211_lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource:
(Y
Ksequential_211_lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource:(ѕбBsequential_211/lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpбAsequential_211/lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpбCsequential_211/lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOpа
Osequential_211/lstm_635/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ъ
Asequential_211/lstm_635/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_211_lstm_635_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_635_tensorarrayunstack_tensorlistfromtensor_0)sequential_211_lstm_635_while_placeholderXsequential_211/lstm_635/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╬
Asequential_211/lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOpLsequential_211_lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ѓ
2sequential_211/lstm_635/while/lstm_cell_635/MatMulMatMulHsequential_211/lstm_635/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_211/lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (м
Csequential_211/lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOpNsequential_211_lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ж
4sequential_211/lstm_635/while/lstm_cell_635/MatMul_1MatMul+sequential_211_lstm_635_while_placeholder_2Ksequential_211/lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (У
/sequential_211/lstm_635/while/lstm_cell_635/addAddV2<sequential_211/lstm_635/while/lstm_cell_635/MatMul:product:0>sequential_211/lstm_635/while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (╠
Bsequential_211/lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOpMsequential_211_lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ы
3sequential_211/lstm_635/while/lstm_cell_635/BiasAddBiasAdd3sequential_211/lstm_635/while/lstm_cell_635/add:z:0Jsequential_211/lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (}
;sequential_211/lstm_635/while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_211/lstm_635/while/lstm_cell_635/splitSplitDsequential_211/lstm_635/while/lstm_cell_635/split/split_dim:output:0<sequential_211/lstm_635/while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitг
3sequential_211/lstm_635/while/lstm_cell_635/SigmoidSigmoid:sequential_211/lstm_635/while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
«
5sequential_211/lstm_635/while/lstm_cell_635/Sigmoid_1Sigmoid:sequential_211/lstm_635/while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
л
/sequential_211/lstm_635/while/lstm_cell_635/mulMul9sequential_211/lstm_635/while/lstm_cell_635/Sigmoid_1:y:0+sequential_211_lstm_635_while_placeholder_3*
T0*'
_output_shapes
:         
д
0sequential_211/lstm_635/while/lstm_cell_635/ReluRelu:sequential_211/lstm_635/while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
с
1sequential_211/lstm_635/while/lstm_cell_635/mul_1Mul7sequential_211/lstm_635/while/lstm_cell_635/Sigmoid:y:0>sequential_211/lstm_635/while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
п
1sequential_211/lstm_635/while/lstm_cell_635/add_1AddV23sequential_211/lstm_635/while/lstm_cell_635/mul:z:05sequential_211/lstm_635/while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
«
5sequential_211/lstm_635/while/lstm_cell_635/Sigmoid_2Sigmoid:sequential_211/lstm_635/while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
Б
2sequential_211/lstm_635/while/lstm_cell_635/Relu_1Relu5sequential_211/lstm_635/while/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
у
1sequential_211/lstm_635/while/lstm_cell_635/mul_2Mul9sequential_211/lstm_635/while/lstm_cell_635/Sigmoid_2:y:0@sequential_211/lstm_635/while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
д
Bsequential_211/lstm_635/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_211_lstm_635_while_placeholder_1)sequential_211_lstm_635_while_placeholder5sequential_211/lstm_635/while/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_211/lstm_635/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_211/lstm_635/while/addAddV2)sequential_211_lstm_635_while_placeholder,sequential_211/lstm_635/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_211/lstm_635/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_211/lstm_635/while/add_1AddV2Hsequential_211_lstm_635_while_sequential_211_lstm_635_while_loop_counter.sequential_211/lstm_635/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_211/lstm_635/while/IdentityIdentity'sequential_211/lstm_635/while/add_1:z:0#^sequential_211/lstm_635/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_211/lstm_635/while/Identity_1IdentityNsequential_211_lstm_635_while_sequential_211_lstm_635_while_maximum_iterations#^sequential_211/lstm_635/while/NoOp*
T0*
_output_shapes
: А
(sequential_211/lstm_635/while/Identity_2Identity%sequential_211/lstm_635/while/add:z:0#^sequential_211/lstm_635/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_211/lstm_635/while/Identity_3IdentityRsequential_211/lstm_635/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_211/lstm_635/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_211/lstm_635/while/Identity_4Identity5sequential_211/lstm_635/while/lstm_cell_635/mul_2:z:0#^sequential_211/lstm_635/while/NoOp*
T0*'
_output_shapes
:         
┬
(sequential_211/lstm_635/while/Identity_5Identity5sequential_211/lstm_635/while/lstm_cell_635/add_1:z:0#^sequential_211/lstm_635/while/NoOp*
T0*'
_output_shapes
:         
│
"sequential_211/lstm_635/while/NoOpNoOpC^sequential_211/lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpB^sequential_211/lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpD^sequential_211/lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_211_lstm_635_while_identity/sequential_211/lstm_635/while/Identity:output:0"]
(sequential_211_lstm_635_while_identity_11sequential_211/lstm_635/while/Identity_1:output:0"]
(sequential_211_lstm_635_while_identity_21sequential_211/lstm_635/while/Identity_2:output:0"]
(sequential_211_lstm_635_while_identity_31sequential_211/lstm_635/while/Identity_3:output:0"]
(sequential_211_lstm_635_while_identity_41sequential_211/lstm_635/while/Identity_4:output:0"]
(sequential_211_lstm_635_while_identity_51sequential_211/lstm_635/while/Identity_5:output:0"ю
Ksequential_211_lstm_635_while_lstm_cell_635_biasadd_readvariableop_resourceMsequential_211_lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0"ъ
Lsequential_211_lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resourceNsequential_211_lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0"џ
Jsequential_211_lstm_635_while_lstm_cell_635_matmul_readvariableop_resourceLsequential_211_lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0"љ
Esequential_211_lstm_635_while_sequential_211_lstm_635_strided_slice_1Gsequential_211_lstm_635_while_sequential_211_lstm_635_strided_slice_1_0"і
Ђsequential_211_lstm_635_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_635_tensorarrayunstack_tensorlistfromtensorЃsequential_211_lstm_635_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_635_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2ѕ
Bsequential_211/lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpBsequential_211/lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp2є
Asequential_211/lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpAsequential_211/lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp2і
Csequential_211/lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOpCsequential_211/lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_4073037
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_634_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_634/BiasAdd/ReadVariableOpб)while/lstm_cell_634/MatMul/ReadVariableOpб+while/lstm_cell_634/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_634/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_634/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_634/addAddV2$while/lstm_cell_634/MatMul:product:0&while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_634/BiasAddBiasAddwhile/lstm_cell_634/add:z:02while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_634/splitSplit,while/lstm_cell_634/split/split_dim:output:0$while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_634/SigmoidSigmoid"while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_1Sigmoid"while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_634/mulMul!while/lstm_cell_634/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_634/ReluRelu"while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_634/mul_1Mulwhile/lstm_cell_634/Sigmoid:y:0&while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_634/add_1AddV2while/lstm_cell_634/mul:z:0while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_2Sigmoid"while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_634/Relu_1Reluwhile/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_634/mul_2Mul!while/lstm_cell_634/Sigmoid_2:y:0(while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_634/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_634/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_634/BiasAdd/ReadVariableOp*^while/lstm_cell_634/MatMul/ReadVariableOp,^while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_634_biasadd_readvariableop_resource5while_lstm_cell_634_biasadd_readvariableop_resource_0"n
4while_lstm_cell_634_matmul_1_readvariableop_resource6while_lstm_cell_634_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_634_matmul_readvariableop_resource4while_lstm_cell_634_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_634/BiasAdd/ReadVariableOp*while/lstm_cell_634/BiasAdd/ReadVariableOp2V
)while/lstm_cell_634/MatMul/ReadVariableOp)while/lstm_cell_634/MatMul/ReadVariableOp2Z
+while/lstm_cell_634/MatMul_1/ReadVariableOp+while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Ј#
ы
while_body_4072394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_634_4072418_0:	d╚0
while_lstm_cell_634_4072420_0:	2╚,
while_lstm_cell_634_4072422_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_634_4072418:	d╚.
while_lstm_cell_634_4072420:	2╚*
while_lstm_cell_634_4072422:	╚ѕб+while/lstm_cell_634/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_634/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_634_4072418_0while_lstm_cell_634_4072420_0while_lstm_cell_634_4072422_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072335П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_634/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_634/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_634/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_634/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_634_4072418while_lstm_cell_634_4072418_0"<
while_lstm_cell_634_4072420while_lstm_cell_634_4072420_0"<
while_lstm_cell_634_4072422while_lstm_cell_634_4072422_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_634/StatefulPartitionedCall+while/lstm_cell_634/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
м
ч
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073296

inputs#
lstm_633_4072972:	љ#
lstm_633_4072974:	dљ
lstm_633_4072976:	љ#
lstm_634_4073122:	d╚#
lstm_634_4073124:	2╚
lstm_634_4073126:	╚"
lstm_635_4073272:2("
lstm_635_4073274:
(
lstm_635_4073276:(#
dense_211_4073290:

dense_211_4073292:
identityѕб!dense_211/StatefulPartitionedCallб lstm_633/StatefulPartitionedCallб lstm_634/StatefulPartitionedCallб lstm_635/StatefulPartitionedCallІ
 lstm_633/StatefulPartitionedCallStatefulPartitionedCallinputslstm_633_4072972lstm_633_4072974lstm_633_4072976*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4072971«
 lstm_634/StatefulPartitionedCallStatefulPartitionedCall)lstm_633/StatefulPartitionedCall:output:0lstm_634_4073122lstm_634_4073124lstm_634_4073126*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073121ф
 lstm_635/StatefulPartitionedCallStatefulPartitionedCall)lstm_634/StatefulPartitionedCall:output:0lstm_635_4073272lstm_635_4073274lstm_635_4073276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073271џ
!dense_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_635/StatefulPartitionedCall:output:0dense_211_4073290dense_211_4073292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_211_layer_call_and_return_conditional_losses_4073289y
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_211/StatefulPartitionedCall!^lstm_633/StatefulPartitionedCall!^lstm_634/StatefulPartitionedCall!^lstm_635/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2D
 lstm_633/StatefulPartitionedCall lstm_633/StatefulPartitionedCall2D
 lstm_634/StatefulPartitionedCall lstm_634/StatefulPartitionedCall2D
 lstm_635/StatefulPartitionedCall lstm_635/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
чT
я
*sequential_211_lstm_633_while_body_4071404L
Hsequential_211_lstm_633_while_sequential_211_lstm_633_while_loop_counterR
Nsequential_211_lstm_633_while_sequential_211_lstm_633_while_maximum_iterations-
)sequential_211_lstm_633_while_placeholder/
+sequential_211_lstm_633_while_placeholder_1/
+sequential_211_lstm_633_while_placeholder_2/
+sequential_211_lstm_633_while_placeholder_3K
Gsequential_211_lstm_633_while_sequential_211_lstm_633_strided_slice_1_0ѕ
Ѓsequential_211_lstm_633_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_633_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_211_lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0:	љa
Nsequential_211_lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљ\
Msequential_211_lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ*
&sequential_211_lstm_633_while_identity,
(sequential_211_lstm_633_while_identity_1,
(sequential_211_lstm_633_while_identity_2,
(sequential_211_lstm_633_while_identity_3,
(sequential_211_lstm_633_while_identity_4,
(sequential_211_lstm_633_while_identity_5I
Esequential_211_lstm_633_while_sequential_211_lstm_633_strided_slice_1є
Ђsequential_211_lstm_633_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_633_tensorarrayunstack_tensorlistfromtensor]
Jsequential_211_lstm_633_while_lstm_cell_633_matmul_readvariableop_resource:	љ_
Lsequential_211_lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource:	dљZ
Ksequential_211_lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource:	љѕбBsequential_211/lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpбAsequential_211/lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpбCsequential_211/lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOpа
Osequential_211/lstm_633/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
Asequential_211/lstm_633/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_211_lstm_633_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_633_tensorarrayunstack_tensorlistfromtensor_0)sequential_211_lstm_633_while_placeholderXsequential_211/lstm_633/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0¤
Asequential_211/lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOpLsequential_211_lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0ё
2sequential_211/lstm_633/while/lstm_cell_633/MatMulMatMulHsequential_211/lstm_633/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_211/lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љМ
Csequential_211/lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOpNsequential_211_lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0в
4sequential_211/lstm_633/while/lstm_cell_633/MatMul_1MatMul+sequential_211_lstm_633_while_placeholder_2Ksequential_211/lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љж
/sequential_211/lstm_633/while/lstm_cell_633/addAddV2<sequential_211/lstm_633/while/lstm_cell_633/MatMul:product:0>sequential_211/lstm_633/while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љ═
Bsequential_211/lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOpMsequential_211_lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Ы
3sequential_211/lstm_633/while/lstm_cell_633/BiasAddBiasAdd3sequential_211/lstm_633/while/lstm_cell_633/add:z:0Jsequential_211/lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ}
;sequential_211/lstm_633/while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_211/lstm_633/while/lstm_cell_633/splitSplitDsequential_211/lstm_633/while/lstm_cell_633/split/split_dim:output:0<sequential_211/lstm_633/while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitг
3sequential_211/lstm_633/while/lstm_cell_633/SigmoidSigmoid:sequential_211/lstm_633/while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         d«
5sequential_211/lstm_633/while/lstm_cell_633/Sigmoid_1Sigmoid:sequential_211/lstm_633/while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dл
/sequential_211/lstm_633/while/lstm_cell_633/mulMul9sequential_211/lstm_633/while/lstm_cell_633/Sigmoid_1:y:0+sequential_211_lstm_633_while_placeholder_3*
T0*'
_output_shapes
:         dд
0sequential_211/lstm_633/while/lstm_cell_633/ReluRelu:sequential_211/lstm_633/while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dс
1sequential_211/lstm_633/while/lstm_cell_633/mul_1Mul7sequential_211/lstm_633/while/lstm_cell_633/Sigmoid:y:0>sequential_211/lstm_633/while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dп
1sequential_211/lstm_633/while/lstm_cell_633/add_1AddV23sequential_211/lstm_633/while/lstm_cell_633/mul:z:05sequential_211/lstm_633/while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         d«
5sequential_211/lstm_633/while/lstm_cell_633/Sigmoid_2Sigmoid:sequential_211/lstm_633/while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dБ
2sequential_211/lstm_633/while/lstm_cell_633/Relu_1Relu5sequential_211/lstm_633/while/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dу
1sequential_211/lstm_633/while/lstm_cell_633/mul_2Mul9sequential_211/lstm_633/while/lstm_cell_633/Sigmoid_2:y:0@sequential_211/lstm_633/while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dд
Bsequential_211/lstm_633/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_211_lstm_633_while_placeholder_1)sequential_211_lstm_633_while_placeholder5sequential_211/lstm_633/while/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_211/lstm_633/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_211/lstm_633/while/addAddV2)sequential_211_lstm_633_while_placeholder,sequential_211/lstm_633/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_211/lstm_633/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_211/lstm_633/while/add_1AddV2Hsequential_211_lstm_633_while_sequential_211_lstm_633_while_loop_counter.sequential_211/lstm_633/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_211/lstm_633/while/IdentityIdentity'sequential_211/lstm_633/while/add_1:z:0#^sequential_211/lstm_633/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_211/lstm_633/while/Identity_1IdentityNsequential_211_lstm_633_while_sequential_211_lstm_633_while_maximum_iterations#^sequential_211/lstm_633/while/NoOp*
T0*
_output_shapes
: А
(sequential_211/lstm_633/while/Identity_2Identity%sequential_211/lstm_633/while/add:z:0#^sequential_211/lstm_633/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_211/lstm_633/while/Identity_3IdentityRsequential_211/lstm_633/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_211/lstm_633/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_211/lstm_633/while/Identity_4Identity5sequential_211/lstm_633/while/lstm_cell_633/mul_2:z:0#^sequential_211/lstm_633/while/NoOp*
T0*'
_output_shapes
:         d┬
(sequential_211/lstm_633/while/Identity_5Identity5sequential_211/lstm_633/while/lstm_cell_633/add_1:z:0#^sequential_211/lstm_633/while/NoOp*
T0*'
_output_shapes
:         d│
"sequential_211/lstm_633/while/NoOpNoOpC^sequential_211/lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpB^sequential_211/lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpD^sequential_211/lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_211_lstm_633_while_identity/sequential_211/lstm_633/while/Identity:output:0"]
(sequential_211_lstm_633_while_identity_11sequential_211/lstm_633/while/Identity_1:output:0"]
(sequential_211_lstm_633_while_identity_21sequential_211/lstm_633/while/Identity_2:output:0"]
(sequential_211_lstm_633_while_identity_31sequential_211/lstm_633/while/Identity_3:output:0"]
(sequential_211_lstm_633_while_identity_41sequential_211/lstm_633/while/Identity_4:output:0"]
(sequential_211_lstm_633_while_identity_51sequential_211/lstm_633/while/Identity_5:output:0"ю
Ksequential_211_lstm_633_while_lstm_cell_633_biasadd_readvariableop_resourceMsequential_211_lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0"ъ
Lsequential_211_lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resourceNsequential_211_lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0"џ
Jsequential_211_lstm_633_while_lstm_cell_633_matmul_readvariableop_resourceLsequential_211_lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0"љ
Esequential_211_lstm_633_while_sequential_211_lstm_633_strided_slice_1Gsequential_211_lstm_633_while_sequential_211_lstm_633_strided_slice_1_0"і
Ђsequential_211_lstm_633_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_633_tensorarrayunstack_tensorlistfromtensorЃsequential_211_lstm_633_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_633_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѕ
Bsequential_211/lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpBsequential_211/lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp2є
Asequential_211/lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpAsequential_211/lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp2і
Csequential_211/lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOpCsequential_211/lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
аK
Ц
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075127
inputs_0?
,lstm_cell_633_matmul_readvariableop_resource:	љA
.lstm_cell_633_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_633_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_633/BiasAdd/ReadVariableOpб#lstm_cell_633/MatMul/ReadVariableOpб%lstm_cell_633/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_633/MatMul/ReadVariableOpReadVariableOp,lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_633/MatMulMatMulstrided_slice_2:output:0+lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_633/MatMul_1MatMulzeros:output:0-lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_633/addAddV2lstm_cell_633/MatMul:product:0 lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_633/BiasAddBiasAddlstm_cell_633/add:z:0,lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_633/splitSplit&lstm_cell_633/split/split_dim:output:0lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_633/SigmoidSigmoidlstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_1Sigmoidlstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_633/mulMullstm_cell_633/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_633/ReluRelulstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_633/mul_1Mullstm_cell_633/Sigmoid:y:0 lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_633/add_1AddV2lstm_cell_633/mul:z:0lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_2Sigmoidlstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_633/Relu_1Relulstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_633/mul_2Mullstm_cell_633/Sigmoid_2:y:0"lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_633_matmul_readvariableop_resource.lstm_cell_633_matmul_1_readvariableop_resource-lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4075043*
condR
while_cond_4075042*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_633/BiasAdd/ReadVariableOp$^lstm_cell_633/MatMul/ReadVariableOp&^lstm_cell_633/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_633/BiasAdd/ReadVariableOp$lstm_cell_633/BiasAdd/ReadVariableOp2J
#lstm_cell_633/MatMul/ReadVariableOp#lstm_cell_633/MatMul/ReadVariableOp2N
%lstm_cell_633/MatMul_1/ReadVariableOp%lstm_cell_633/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
м
ч
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073885

inputs#
lstm_633_4073858:	љ#
lstm_633_4073860:	dљ
lstm_633_4073862:	љ#
lstm_634_4073865:	d╚#
lstm_634_4073867:	2╚
lstm_634_4073869:	╚"
lstm_635_4073872:2("
lstm_635_4073874:
(
lstm_635_4073876:(#
dense_211_4073879:

dense_211_4073881:
identityѕб!dense_211/StatefulPartitionedCallб lstm_633/StatefulPartitionedCallб lstm_634/StatefulPartitionedCallб lstm_635/StatefulPartitionedCallІ
 lstm_633/StatefulPartitionedCallStatefulPartitionedCallinputslstm_633_4073858lstm_633_4073860lstm_633_4073862*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4073817«
 lstm_634/StatefulPartitionedCallStatefulPartitionedCall)lstm_633/StatefulPartitionedCall:output:0lstm_634_4073865lstm_634_4073867lstm_634_4073869*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073652ф
 lstm_635/StatefulPartitionedCallStatefulPartitionedCall)lstm_634/StatefulPartitionedCall:output:0lstm_635_4073872lstm_635_4073874lstm_635_4073876*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073487џ
!dense_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_635/StatefulPartitionedCall:output:0dense_211_4073879dense_211_4073881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_211_layer_call_and_return_conditional_losses_4073289y
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_211/StatefulPartitionedCall!^lstm_633/StatefulPartitionedCall!^lstm_634/StatefulPartitionedCall!^lstm_635/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2D
 lstm_633/StatefulPartitionedCall lstm_633/StatefulPartitionedCall2D
 lstm_634/StatefulPartitionedCall lstm_634/StatefulPartitionedCall2D
 lstm_635/StatefulPartitionedCall lstm_635/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
е8
І
E__inference_lstm_635_layer_call_and_return_conditional_losses_4072813

inputs'
lstm_cell_635_4072731:2('
lstm_cell_635_4072733:
(#
lstm_cell_635_4072735:(
identityѕб%lstm_cell_635/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_635/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_635_4072731lstm_cell_635_4072733lstm_cell_635_4072735*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072685n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_635_4072731lstm_cell_635_4072733lstm_cell_635_4072735*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4072744*
condR
while_cond_4072743*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_635/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_635/StatefulPartitionedCall%lstm_cell_635/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
█
е
*sequential_211_lstm_633_while_cond_4071403L
Hsequential_211_lstm_633_while_sequential_211_lstm_633_while_loop_counterR
Nsequential_211_lstm_633_while_sequential_211_lstm_633_while_maximum_iterations-
)sequential_211_lstm_633_while_placeholder/
+sequential_211_lstm_633_while_placeholder_1/
+sequential_211_lstm_633_while_placeholder_2/
+sequential_211_lstm_633_while_placeholder_3N
Jsequential_211_lstm_633_while_less_sequential_211_lstm_633_strided_slice_1e
asequential_211_lstm_633_while_sequential_211_lstm_633_while_cond_4071403___redundant_placeholder0e
asequential_211_lstm_633_while_sequential_211_lstm_633_while_cond_4071403___redundant_placeholder1e
asequential_211_lstm_633_while_sequential_211_lstm_633_while_cond_4071403___redundant_placeholder2e
asequential_211_lstm_633_while_sequential_211_lstm_633_while_cond_4071403___redundant_placeholder3*
&sequential_211_lstm_633_while_identity
┬
"sequential_211/lstm_633/while/LessLess)sequential_211_lstm_633_while_placeholderJsequential_211_lstm_633_while_less_sequential_211_lstm_633_strided_slice_1*
T0*
_output_shapes
: {
&sequential_211/lstm_633/while/IdentityIdentity&sequential_211/lstm_633/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_211_lstm_633_while_identity/sequential_211/lstm_633/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4075329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_633_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_633_matmul_readvariableop_resource:	љG
4while_lstm_cell_633_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_633/BiasAdd/ReadVariableOpб)while/lstm_cell_633/MatMul/ReadVariableOpб+while/lstm_cell_633/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_633/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_633/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_633/addAddV2$while/lstm_cell_633/MatMul:product:0&while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_633/BiasAddBiasAddwhile/lstm_cell_633/add:z:02while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_633/splitSplit,while/lstm_cell_633/split/split_dim:output:0$while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_633/SigmoidSigmoid"while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_1Sigmoid"while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_633/mulMul!while/lstm_cell_633/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_633/ReluRelu"while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_633/mul_1Mulwhile/lstm_cell_633/Sigmoid:y:0&while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_633/add_1AddV2while/lstm_cell_633/mul:z:0while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_2Sigmoid"while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_633/Relu_1Reluwhile/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_633/mul_2Mul!while/lstm_cell_633/Sigmoid_2:y:0(while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_633/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_633/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_633/BiasAdd/ReadVariableOp*^while/lstm_cell_633/MatMul/ReadVariableOp,^while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_633_biasadd_readvariableop_resource5while_lstm_cell_633_biasadd_readvariableop_resource_0"n
4while_lstm_cell_633_matmul_1_readvariableop_resource6while_lstm_cell_633_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_633_matmul_readvariableop_resource4while_lstm_cell_633_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_633/BiasAdd/ReadVariableOp*while/lstm_cell_633/BiasAdd/ReadVariableOp2V
)while/lstm_cell_633/MatMul/ReadVariableOp)while/lstm_cell_633/MatMul/ReadVariableOp2Z
+while/lstm_cell_633/MatMul_1/ReadVariableOp+while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
▀
ѕ
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4076873

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
и

Ч
lstm_633_while_cond_4074571.
*lstm_633_while_lstm_633_while_loop_counter4
0lstm_633_while_lstm_633_while_maximum_iterations
lstm_633_while_placeholder 
lstm_633_while_placeholder_1 
lstm_633_while_placeholder_2 
lstm_633_while_placeholder_30
,lstm_633_while_less_lstm_633_strided_slice_1G
Clstm_633_while_lstm_633_while_cond_4074571___redundant_placeholder0G
Clstm_633_while_lstm_633_while_cond_4074571___redundant_placeholder1G
Clstm_633_while_lstm_633_while_cond_4074571___redundant_placeholder2G
Clstm_633_while_lstm_633_while_cond_4074571___redundant_placeholder3
lstm_633_while_identity
є
lstm_633/while/LessLesslstm_633_while_placeholder,lstm_633_while_less_lstm_633_strided_slice_1*
T0*
_output_shapes
: ]
lstm_633/while/IdentityIdentitylstm_633/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_633_while_identity lstm_633/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
═
Ѓ
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072685

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
Зц
ю
#__inference__traced_restore_4077374
file_prefix3
!assignvariableop_dense_211_kernel:
/
!assignvariableop_1_dense_211_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_633_lstm_cell_633_kernel:	љM
:assignvariableop_8_lstm_633_lstm_cell_633_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_633_lstm_cell_633_bias:	љD
1assignvariableop_10_lstm_634_lstm_cell_634_kernel:	d╚N
;assignvariableop_11_lstm_634_lstm_cell_634_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_634_lstm_cell_634_bias:	╚C
1assignvariableop_13_lstm_635_lstm_cell_635_kernel:2(M
;assignvariableop_14_lstm_635_lstm_cell_635_recurrent_kernel:
(=
/assignvariableop_15_lstm_635_lstm_cell_635_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_211_kernel_m:
7
)assignvariableop_19_adam_dense_211_bias_m:K
8assignvariableop_20_adam_lstm_633_lstm_cell_633_kernel_m:	љU
Bassignvariableop_21_adam_lstm_633_lstm_cell_633_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_633_lstm_cell_633_bias_m:	љK
8assignvariableop_23_adam_lstm_634_lstm_cell_634_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_634_lstm_cell_634_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_634_lstm_cell_634_bias_m:	╚J
8assignvariableop_26_adam_lstm_635_lstm_cell_635_kernel_m:2(T
Bassignvariableop_27_adam_lstm_635_lstm_cell_635_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_635_lstm_cell_635_bias_m:(=
+assignvariableop_29_adam_dense_211_kernel_v:
7
)assignvariableop_30_adam_dense_211_bias_v:K
8assignvariableop_31_adam_lstm_633_lstm_cell_633_kernel_v:	љU
Bassignvariableop_32_adam_lstm_633_lstm_cell_633_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_633_lstm_cell_633_bias_v:	љK
8assignvariableop_34_adam_lstm_634_lstm_cell_634_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_634_lstm_cell_634_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_634_lstm_cell_634_bias_v:	╚J
8assignvariableop_37_adam_lstm_635_lstm_cell_635_kernel_v:2(T
Bassignvariableop_38_adam_lstm_635_lstm_cell_635_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_635_lstm_cell_635_bias_v:(
identity_41ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╚
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesД
ц:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOpAssignVariableOp!assignvariableop_dense_211_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_211_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_633_lstm_cell_633_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_633_lstm_cell_633_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_633_lstm_cell_633_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_634_lstm_cell_634_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_634_lstm_cell_634_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_634_lstm_cell_634_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_635_lstm_cell_635_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_635_lstm_cell_635_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_635_lstm_cell_635_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_211_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_211_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_633_lstm_cell_633_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_633_lstm_cell_633_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_633_lstm_cell_633_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_634_lstm_cell_634_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_634_lstm_cell_634_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_634_lstm_cell_634_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_635_lstm_cell_635_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_635_lstm_cell_635_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_635_lstm_cell_635_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_211_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_211_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_633_lstm_cell_633_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_633_lstm_cell_633_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_633_lstm_cell_633_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_634_lstm_cell_634_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_634_lstm_cell_634_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_634_lstm_cell_634_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_635_lstm_cell_635_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_635_lstm_cell_635_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_635_lstm_cell_635_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: г
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
я

ю
0__inference_sequential_211_layer_call_fn_4074059

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
АC
Щ

lstm_634_while_body_4074711.
*lstm_634_while_lstm_634_while_loop_counter4
0lstm_634_while_lstm_634_while_maximum_iterations
lstm_634_while_placeholder 
lstm_634_while_placeholder_1 
lstm_634_while_placeholder_2 
lstm_634_while_placeholder_3-
)lstm_634_while_lstm_634_strided_slice_1_0i
elstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚R
?lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚M
>lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
lstm_634_while_identity
lstm_634_while_identity_1
lstm_634_while_identity_2
lstm_634_while_identity_3
lstm_634_while_identity_4
lstm_634_while_identity_5+
'lstm_634_while_lstm_634_strided_slice_1g
clstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensorN
;lstm_634_while_lstm_cell_634_matmul_readvariableop_resource:	d╚P
=lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚K
<lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpб2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpб4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOpЉ
@lstm_634/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_634/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensor_0lstm_634_while_placeholderIlstm_634/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp=lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_634/while/lstm_cell_634/MatMulMatMul9lstm_634/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp?lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_634/while/lstm_cell_634/MatMul_1MatMullstm_634_while_placeholder_2<lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_634/while/lstm_cell_634/addAddV2-lstm_634/while/lstm_cell_634/MatMul:product:0/lstm_634/while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp>lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_634/while/lstm_cell_634/BiasAddBiasAdd$lstm_634/while/lstm_cell_634/add:z:0;lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_634/while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_634/while/lstm_cell_634/splitSplit5lstm_634/while/lstm_cell_634/split/split_dim:output:0-lstm_634/while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_634/while/lstm_cell_634/SigmoidSigmoid+lstm_634/while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_634/while/lstm_cell_634/Sigmoid_1Sigmoid+lstm_634/while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_634/while/lstm_cell_634/mulMul*lstm_634/while/lstm_cell_634/Sigmoid_1:y:0lstm_634_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_634/while/lstm_cell_634/ReluRelu+lstm_634/while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_634/while/lstm_cell_634/mul_1Mul(lstm_634/while/lstm_cell_634/Sigmoid:y:0/lstm_634/while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_634/while/lstm_cell_634/add_1AddV2$lstm_634/while/lstm_cell_634/mul:z:0&lstm_634/while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_634/while/lstm_cell_634/Sigmoid_2Sigmoid+lstm_634/while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_634/while/lstm_cell_634/Relu_1Relu&lstm_634/while/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_634/while/lstm_cell_634/mul_2Mul*lstm_634/while/lstm_cell_634/Sigmoid_2:y:01lstm_634/while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_634/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_634_while_placeholder_1lstm_634_while_placeholder&lstm_634/while/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_634/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_634/while/addAddV2lstm_634_while_placeholderlstm_634/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_634/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_634/while/add_1AddV2*lstm_634_while_lstm_634_while_loop_counterlstm_634/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_634/while/IdentityIdentitylstm_634/while/add_1:z:0^lstm_634/while/NoOp*
T0*
_output_shapes
: ј
lstm_634/while/Identity_1Identity0lstm_634_while_lstm_634_while_maximum_iterations^lstm_634/while/NoOp*
T0*
_output_shapes
: t
lstm_634/while/Identity_2Identitylstm_634/while/add:z:0^lstm_634/while/NoOp*
T0*
_output_shapes
: А
lstm_634/while/Identity_3IdentityClstm_634/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_634/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_634/while/Identity_4Identity&lstm_634/while/lstm_cell_634/mul_2:z:0^lstm_634/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_634/while/Identity_5Identity&lstm_634/while/lstm_cell_634/add_1:z:0^lstm_634/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_634/while/NoOpNoOp4^lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp3^lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp5^lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_634_while_identity lstm_634/while/Identity:output:0"?
lstm_634_while_identity_1"lstm_634/while/Identity_1:output:0"?
lstm_634_while_identity_2"lstm_634/while/Identity_2:output:0"?
lstm_634_while_identity_3"lstm_634/while/Identity_3:output:0"?
lstm_634_while_identity_4"lstm_634/while/Identity_4:output:0"?
lstm_634_while_identity_5"lstm_634/while/Identity_5:output:0"T
'lstm_634_while_lstm_634_strided_slice_1)lstm_634_while_lstm_634_strided_slice_1_0"~
<lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource>lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0"ђ
=lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource?lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0"|
;lstm_634_while_lstm_cell_634_matmul_readvariableop_resource=lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0"╠
clstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensorelstm_634_while_tensorarrayv2read_tensorlistgetitem_lstm_634_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp3lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp2h
2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp2lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp2l
4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp4lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4072886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4072886___redundant_placeholder05
1while_while_cond_4072886___redundant_placeholder15
1while_while_cond_4072886___redundant_placeholder25
1while_while_cond_4072886___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
»8
ј
E__inference_lstm_633_layer_call_and_return_conditional_losses_4072113

inputs(
lstm_cell_633_4072031:	љ(
lstm_cell_633_4072033:	dљ$
lstm_cell_633_4072035:	љ
identityѕб%lstm_cell_633/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_633/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_633_4072031lstm_cell_633_4072033lstm_cell_633_4072035*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071985n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_633_4072031lstm_cell_633_4072033lstm_cell_633_4072035*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4072044*
condR
while_cond_4072043*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_633/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_633/StatefulPartitionedCall%lstm_cell_633/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
╚
while_cond_4075944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4075944___redundant_placeholder05
1while_while_cond_4075944___redundant_placeholder15
1while_while_cond_4075944___redundant_placeholder25
1while_while_cond_4075944___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
њK
б
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076359
inputs_0>
,lstm_cell_635_matmul_readvariableop_resource:2(@
.lstm_cell_635_matmul_1_readvariableop_resource:
(;
-lstm_cell_635_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_635/BiasAdd/ReadVariableOpб#lstm_cell_635/MatMul/ReadVariableOpб%lstm_cell_635/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_635/MatMul/ReadVariableOpReadVariableOp,lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_635/MatMulMatMulstrided_slice_2:output:0+lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_635/MatMul_1MatMulzeros:output:0-lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_635/addAddV2lstm_cell_635/MatMul:product:0 lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_635/BiasAddBiasAddlstm_cell_635/add:z:0,lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_635/splitSplit&lstm_cell_635/split/split_dim:output:0lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_635/SigmoidSigmoidlstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_1Sigmoidlstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_635/mulMullstm_cell_635/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_635/ReluRelulstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_635/mul_1Mullstm_cell_635/Sigmoid:y:0 lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_635/add_1AddV2lstm_cell_635/mul:z:0lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_2Sigmoidlstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_635/Relu_1Relulstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_635/mul_2Mullstm_cell_635/Sigmoid_2:y:0"lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_635_matmul_readvariableop_resource.lstm_cell_635_matmul_1_readvariableop_resource-lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4076275*
condR
while_cond_4076274*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_635/BiasAdd/ReadVariableOp$^lstm_cell_635/MatMul/ReadVariableOp&^lstm_cell_635/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_635/BiasAdd/ReadVariableOp$lstm_cell_635/BiasAdd/ReadVariableOp2J
#lstm_cell_635/MatMul/ReadVariableOp#lstm_cell_635/MatMul/ReadVariableOp2N
%lstm_cell_635/MatMul_1/ReadVariableOp%lstm_cell_635/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
№
Э
/__inference_lstm_cell_634_layer_call_fn_4076922

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072189o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
■Ђ
Џ
K__inference_sequential_211_layer_call_and_return_conditional_losses_4074513

inputsH
5lstm_633_lstm_cell_633_matmul_readvariableop_resource:	љJ
7lstm_633_lstm_cell_633_matmul_1_readvariableop_resource:	dљE
6lstm_633_lstm_cell_633_biasadd_readvariableop_resource:	љH
5lstm_634_lstm_cell_634_matmul_readvariableop_resource:	d╚J
7lstm_634_lstm_cell_634_matmul_1_readvariableop_resource:	2╚E
6lstm_634_lstm_cell_634_biasadd_readvariableop_resource:	╚G
5lstm_635_lstm_cell_635_matmul_readvariableop_resource:2(I
7lstm_635_lstm_cell_635_matmul_1_readvariableop_resource:
(D
6lstm_635_lstm_cell_635_biasadd_readvariableop_resource:(:
(dense_211_matmul_readvariableop_resource:
7
)dense_211_biasadd_readvariableop_resource:
identityѕб dense_211/BiasAdd/ReadVariableOpбdense_211/MatMul/ReadVariableOpб-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOpб,lstm_633/lstm_cell_633/MatMul/ReadVariableOpб.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOpбlstm_633/whileб-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOpб,lstm_634/lstm_cell_634/MatMul/ReadVariableOpб.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOpбlstm_634/whileб-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOpб,lstm_635/lstm_cell_635/MatMul/ReadVariableOpб.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOpбlstm_635/whileD
lstm_633/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_633/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_633/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_633/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_633/strided_sliceStridedSlicelstm_633/Shape:output:0%lstm_633/strided_slice/stack:output:0'lstm_633/strided_slice/stack_1:output:0'lstm_633/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_633/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_633/zeros/packedPacklstm_633/strided_slice:output:0 lstm_633/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_633/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_633/zerosFilllstm_633/zeros/packed:output:0lstm_633/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_633/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_633/zeros_1/packedPacklstm_633/strided_slice:output:0"lstm_633/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_633/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_633/zeros_1Fill lstm_633/zeros_1/packed:output:0lstm_633/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_633/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_633/transpose	Transposeinputs lstm_633/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_633/Shape_1Shapelstm_633/transpose:y:0*
T0*
_output_shapes
:h
lstm_633/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_633/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_633/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_633/strided_slice_1StridedSlicelstm_633/Shape_1:output:0'lstm_633/strided_slice_1/stack:output:0)lstm_633/strided_slice_1/stack_1:output:0)lstm_633/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_633/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_633/TensorArrayV2TensorListReserve-lstm_633/TensorArrayV2/element_shape:output:0!lstm_633/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_633/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_633/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_633/transpose:y:0Glstm_633/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_633/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_633/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_633/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_633/strided_slice_2StridedSlicelstm_633/transpose:y:0'lstm_633/strided_slice_2/stack:output:0)lstm_633/strided_slice_2/stack_1:output:0)lstm_633/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_633/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp5lstm_633_lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_633/lstm_cell_633/MatMulMatMul!lstm_633/strided_slice_2:output:04lstm_633/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp7lstm_633_lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_633/lstm_cell_633/MatMul_1MatMullstm_633/zeros:output:06lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_633/lstm_cell_633/addAddV2'lstm_633/lstm_cell_633/MatMul:product:0)lstm_633/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp6lstm_633_lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_633/lstm_cell_633/BiasAddBiasAddlstm_633/lstm_cell_633/add:z:05lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_633/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_633/lstm_cell_633/splitSplit/lstm_633/lstm_cell_633/split/split_dim:output:0'lstm_633/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_633/lstm_cell_633/SigmoidSigmoid%lstm_633/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_633/lstm_cell_633/Sigmoid_1Sigmoid%lstm_633/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_633/lstm_cell_633/mulMul$lstm_633/lstm_cell_633/Sigmoid_1:y:0lstm_633/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_633/lstm_cell_633/ReluRelu%lstm_633/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dц
lstm_633/lstm_cell_633/mul_1Mul"lstm_633/lstm_cell_633/Sigmoid:y:0)lstm_633/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_633/lstm_cell_633/add_1AddV2lstm_633/lstm_cell_633/mul:z:0 lstm_633/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_633/lstm_cell_633/Sigmoid_2Sigmoid%lstm_633/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dy
lstm_633/lstm_cell_633/Relu_1Relu lstm_633/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_633/lstm_cell_633/mul_2Mul$lstm_633/lstm_cell_633/Sigmoid_2:y:0+lstm_633/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_633/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_633/TensorArrayV2_1TensorListReserve/lstm_633/TensorArrayV2_1/element_shape:output:0!lstm_633/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_633/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_633/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_633/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_633/whileWhile$lstm_633/while/loop_counter:output:0*lstm_633/while/maximum_iterations:output:0lstm_633/time:output:0!lstm_633/TensorArrayV2_1:handle:0lstm_633/zeros:output:0lstm_633/zeros_1:output:0!lstm_633/strided_slice_1:output:0@lstm_633/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_633_lstm_cell_633_matmul_readvariableop_resource7lstm_633_lstm_cell_633_matmul_1_readvariableop_resource6lstm_633_lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_633_while_body_4074145*'
condR
lstm_633_while_cond_4074144*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_633/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_633/TensorArrayV2Stack/TensorListStackTensorListStacklstm_633/while:output:3Blstm_633/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_633/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_633/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_633/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_633/strided_slice_3StridedSlice4lstm_633/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_633/strided_slice_3/stack:output:0)lstm_633/strided_slice_3/stack_1:output:0)lstm_633/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_633/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_633/transpose_1	Transpose4lstm_633/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_633/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_633/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_634/ShapeShapelstm_633/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_634/strided_sliceStridedSlicelstm_634/Shape:output:0%lstm_634/strided_slice/stack:output:0'lstm_634/strided_slice/stack_1:output:0'lstm_634/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_634/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_634/zeros/packedPacklstm_634/strided_slice:output:0 lstm_634/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_634/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_634/zerosFilllstm_634/zeros/packed:output:0lstm_634/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_634/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_634/zeros_1/packedPacklstm_634/strided_slice:output:0"lstm_634/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_634/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_634/zeros_1Fill lstm_634/zeros_1/packed:output:0lstm_634/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_634/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_634/transpose	Transposelstm_633/transpose_1:y:0 lstm_634/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_634/Shape_1Shapelstm_634/transpose:y:0*
T0*
_output_shapes
:h
lstm_634/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_634/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_634/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_634/strided_slice_1StridedSlicelstm_634/Shape_1:output:0'lstm_634/strided_slice_1/stack:output:0)lstm_634/strided_slice_1/stack_1:output:0)lstm_634/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_634/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_634/TensorArrayV2TensorListReserve-lstm_634/TensorArrayV2/element_shape:output:0!lstm_634/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_634/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_634/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_634/transpose:y:0Glstm_634/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_634/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_634/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_634/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_634/strided_slice_2StridedSlicelstm_634/transpose:y:0'lstm_634/strided_slice_2/stack:output:0)lstm_634/strided_slice_2/stack_1:output:0)lstm_634/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_634/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp5lstm_634_lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_634/lstm_cell_634/MatMulMatMul!lstm_634/strided_slice_2:output:04lstm_634/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp7lstm_634_lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_634/lstm_cell_634/MatMul_1MatMullstm_634/zeros:output:06lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_634/lstm_cell_634/addAddV2'lstm_634/lstm_cell_634/MatMul:product:0)lstm_634/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp6lstm_634_lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_634/lstm_cell_634/BiasAddBiasAddlstm_634/lstm_cell_634/add:z:05lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_634/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_634/lstm_cell_634/splitSplit/lstm_634/lstm_cell_634/split/split_dim:output:0'lstm_634/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_634/lstm_cell_634/SigmoidSigmoid%lstm_634/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_634/lstm_cell_634/Sigmoid_1Sigmoid%lstm_634/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_634/lstm_cell_634/mulMul$lstm_634/lstm_cell_634/Sigmoid_1:y:0lstm_634/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_634/lstm_cell_634/ReluRelu%lstm_634/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_634/lstm_cell_634/mul_1Mul"lstm_634/lstm_cell_634/Sigmoid:y:0)lstm_634/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_634/lstm_cell_634/add_1AddV2lstm_634/lstm_cell_634/mul:z:0 lstm_634/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_634/lstm_cell_634/Sigmoid_2Sigmoid%lstm_634/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2y
lstm_634/lstm_cell_634/Relu_1Relu lstm_634/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_634/lstm_cell_634/mul_2Mul$lstm_634/lstm_cell_634/Sigmoid_2:y:0+lstm_634/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_634/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_634/TensorArrayV2_1TensorListReserve/lstm_634/TensorArrayV2_1/element_shape:output:0!lstm_634/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_634/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_634/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_634/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_634/whileWhile$lstm_634/while/loop_counter:output:0*lstm_634/while/maximum_iterations:output:0lstm_634/time:output:0!lstm_634/TensorArrayV2_1:handle:0lstm_634/zeros:output:0lstm_634/zeros_1:output:0!lstm_634/strided_slice_1:output:0@lstm_634/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_634_lstm_cell_634_matmul_readvariableop_resource7lstm_634_lstm_cell_634_matmul_1_readvariableop_resource6lstm_634_lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_634_while_body_4074284*'
condR
lstm_634_while_cond_4074283*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_634/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_634/TensorArrayV2Stack/TensorListStackTensorListStacklstm_634/while:output:3Blstm_634/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_634/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_634/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_634/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_634/strided_slice_3StridedSlice4lstm_634/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_634/strided_slice_3/stack:output:0)lstm_634/strided_slice_3/stack_1:output:0)lstm_634/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_634/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_634/transpose_1	Transpose4lstm_634/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_634/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_634/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_635/ShapeShapelstm_634/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_635/strided_sliceStridedSlicelstm_635/Shape:output:0%lstm_635/strided_slice/stack:output:0'lstm_635/strided_slice/stack_1:output:0'lstm_635/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_635/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_635/zeros/packedPacklstm_635/strided_slice:output:0 lstm_635/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_635/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_635/zerosFilllstm_635/zeros/packed:output:0lstm_635/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_635/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_635/zeros_1/packedPacklstm_635/strided_slice:output:0"lstm_635/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_635/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_635/zeros_1Fill lstm_635/zeros_1/packed:output:0lstm_635/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_635/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_635/transpose	Transposelstm_634/transpose_1:y:0 lstm_635/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_635/Shape_1Shapelstm_635/transpose:y:0*
T0*
_output_shapes
:h
lstm_635/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_635/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_635/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_635/strided_slice_1StridedSlicelstm_635/Shape_1:output:0'lstm_635/strided_slice_1/stack:output:0)lstm_635/strided_slice_1/stack_1:output:0)lstm_635/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_635/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_635/TensorArrayV2TensorListReserve-lstm_635/TensorArrayV2/element_shape:output:0!lstm_635/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_635/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_635/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_635/transpose:y:0Glstm_635/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_635/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_635/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_635/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_635/strided_slice_2StridedSlicelstm_635/transpose:y:0'lstm_635/strided_slice_2/stack:output:0)lstm_635/strided_slice_2/stack_1:output:0)lstm_635/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_635/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp5lstm_635_lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_635/lstm_cell_635/MatMulMatMul!lstm_635/strided_slice_2:output:04lstm_635/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp7lstm_635_lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_635/lstm_cell_635/MatMul_1MatMullstm_635/zeros:output:06lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_635/lstm_cell_635/addAddV2'lstm_635/lstm_cell_635/MatMul:product:0)lstm_635/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp6lstm_635_lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_635/lstm_cell_635/BiasAddBiasAddlstm_635/lstm_cell_635/add:z:05lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_635/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_635/lstm_cell_635/splitSplit/lstm_635/lstm_cell_635/split/split_dim:output:0'lstm_635/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_635/lstm_cell_635/SigmoidSigmoid%lstm_635/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_635/lstm_cell_635/Sigmoid_1Sigmoid%lstm_635/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_635/lstm_cell_635/mulMul$lstm_635/lstm_cell_635/Sigmoid_1:y:0lstm_635/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_635/lstm_cell_635/ReluRelu%lstm_635/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_635/lstm_cell_635/mul_1Mul"lstm_635/lstm_cell_635/Sigmoid:y:0)lstm_635/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_635/lstm_cell_635/add_1AddV2lstm_635/lstm_cell_635/mul:z:0 lstm_635/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_635/lstm_cell_635/Sigmoid_2Sigmoid%lstm_635/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
y
lstm_635/lstm_cell_635/Relu_1Relu lstm_635/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_635/lstm_cell_635/mul_2Mul$lstm_635/lstm_cell_635/Sigmoid_2:y:0+lstm_635/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_635/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_635/TensorArrayV2_1TensorListReserve/lstm_635/TensorArrayV2_1/element_shape:output:0!lstm_635/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_635/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_635/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_635/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_635/whileWhile$lstm_635/while/loop_counter:output:0*lstm_635/while/maximum_iterations:output:0lstm_635/time:output:0!lstm_635/TensorArrayV2_1:handle:0lstm_635/zeros:output:0lstm_635/zeros_1:output:0!lstm_635/strided_slice_1:output:0@lstm_635/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_635_lstm_cell_635_matmul_readvariableop_resource7lstm_635_lstm_cell_635_matmul_1_readvariableop_resource6lstm_635_lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_635_while_body_4074423*'
condR
lstm_635_while_cond_4074422*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_635/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_635/TensorArrayV2Stack/TensorListStackTensorListStacklstm_635/while:output:3Blstm_635/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_635/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_635/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_635/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_635/strided_slice_3StridedSlice4lstm_635/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_635/strided_slice_3/stack:output:0)lstm_635/strided_slice_3/stack_1:output:0)lstm_635/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_635/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_635/transpose_1	Transpose4lstm_635/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_635/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_635/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_211/MatMul/ReadVariableOpReadVariableOp(dense_211_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_211/MatMulMatMul!lstm_635/strided_slice_3:output:0'dense_211/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_211/BiasAdd/ReadVariableOpReadVariableOp)dense_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_211/BiasAddBiasAdddense_211/MatMul:product:0(dense_211/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_211/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_211/BiasAdd/ReadVariableOp ^dense_211/MatMul/ReadVariableOp.^lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp-^lstm_633/lstm_cell_633/MatMul/ReadVariableOp/^lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp^lstm_633/while.^lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp-^lstm_634/lstm_cell_634/MatMul/ReadVariableOp/^lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp^lstm_634/while.^lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp-^lstm_635/lstm_cell_635/MatMul/ReadVariableOp/^lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp^lstm_635/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_211/BiasAdd/ReadVariableOp dense_211/BiasAdd/ReadVariableOp2B
dense_211/MatMul/ReadVariableOpdense_211/MatMul/ReadVariableOp2^
-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp-lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp2\
,lstm_633/lstm_cell_633/MatMul/ReadVariableOp,lstm_633/lstm_cell_633/MatMul/ReadVariableOp2`
.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp.lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp2 
lstm_633/whilelstm_633/while2^
-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp-lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp2\
,lstm_634/lstm_cell_634/MatMul/ReadVariableOp,lstm_634/lstm_cell_634/MatMul/ReadVariableOp2`
.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp.lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp2 
lstm_634/whilelstm_634/while2^
-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp-lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp2\
,lstm_635/lstm_cell_635/MatMul/ReadVariableOp,lstm_635/lstm_cell_635/MatMul/ReadVariableOp2`
.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp.lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp2 
lstm_635/whilelstm_635/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4073567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4073567___redundant_placeholder05
1while_while_cond_4073567___redundant_placeholder15
1while_while_cond_4073567___redundant_placeholder25
1while_while_cond_4073567___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
─8
н
while_body_4073187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_635_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_635_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_635_matmul_readvariableop_resource:2(F
4while_lstm_cell_635_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_635/BiasAdd/ReadVariableOpб)while/lstm_cell_635/MatMul/ReadVariableOpб+while/lstm_cell_635/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_635/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_635/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_635/addAddV2$while/lstm_cell_635/MatMul:product:0&while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_635/BiasAddBiasAddwhile/lstm_cell_635/add:z:02while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_635/splitSplit,while/lstm_cell_635/split/split_dim:output:0$while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_635/SigmoidSigmoid"while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_1Sigmoid"while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_635/mulMul!while/lstm_cell_635/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_635/ReluRelu"while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_635/mul_1Mulwhile/lstm_cell_635/Sigmoid:y:0&while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_635/add_1AddV2while/lstm_cell_635/mul:z:0while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_2Sigmoid"while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_635/Relu_1Reluwhile/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_635/mul_2Mul!while/lstm_cell_635/Sigmoid_2:y:0(while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_635/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_635/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_635/BiasAdd/ReadVariableOp*^while/lstm_cell_635/MatMul/ReadVariableOp,^while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_635_biasadd_readvariableop_resource5while_lstm_cell_635_biasadd_readvariableop_resource_0"n
4while_lstm_cell_635_matmul_1_readvariableop_resource6while_lstm_cell_635_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_635_matmul_readvariableop_resource4while_lstm_cell_635_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_635/BiasAdd/ReadVariableOp*while/lstm_cell_635/BiasAdd/ReadVariableOp2V
)while/lstm_cell_635/MatMul/ReadVariableOp)while/lstm_cell_635/MatMul/ReadVariableOp2Z
+while/lstm_cell_635/MatMul_1/ReadVariableOp+while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Ж
Ѓ
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073967
lstm_633_input#
lstm_633_4073940:	љ#
lstm_633_4073942:	dљ
lstm_633_4073944:	љ#
lstm_634_4073947:	d╚#
lstm_634_4073949:	2╚
lstm_634_4073951:	╚"
lstm_635_4073954:2("
lstm_635_4073956:
(
lstm_635_4073958:(#
dense_211_4073961:

dense_211_4073963:
identityѕб!dense_211/StatefulPartitionedCallб lstm_633/StatefulPartitionedCallб lstm_634/StatefulPartitionedCallб lstm_635/StatefulPartitionedCallЊ
 lstm_633/StatefulPartitionedCallStatefulPartitionedCalllstm_633_inputlstm_633_4073940lstm_633_4073942lstm_633_4073944*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4072971«
 lstm_634/StatefulPartitionedCallStatefulPartitionedCall)lstm_633/StatefulPartitionedCall:output:0lstm_634_4073947lstm_634_4073949lstm_634_4073951*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073121ф
 lstm_635/StatefulPartitionedCallStatefulPartitionedCall)lstm_634/StatefulPartitionedCall:output:0lstm_635_4073954lstm_635_4073956lstm_635_4073958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073271џ
!dense_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_635/StatefulPartitionedCall:output:0dense_211_4073961dense_211_4073963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_211_layer_call_and_return_conditional_losses_4073289y
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_211/StatefulPartitionedCall!^lstm_633/StatefulPartitionedCall!^lstm_634/StatefulPartitionedCall!^lstm_635/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2D
 lstm_633/StatefulPartitionedCall lstm_633/StatefulPartitionedCall2D
 lstm_634/StatefulPartitionedCall lstm_634/StatefulPartitionedCall2D
 lstm_635/StatefulPartitionedCall lstm_635/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_633_input
ПJ
а
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076788

inputs>
,lstm_cell_635_matmul_readvariableop_resource:2(@
.lstm_cell_635_matmul_1_readvariableop_resource:
(;
-lstm_cell_635_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_635/BiasAdd/ReadVariableOpб#lstm_cell_635/MatMul/ReadVariableOpб%lstm_cell_635/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_635/MatMul/ReadVariableOpReadVariableOp,lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_635/MatMulMatMulstrided_slice_2:output:0+lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_635/MatMul_1MatMulzeros:output:0-lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_635/addAddV2lstm_cell_635/MatMul:product:0 lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_635/BiasAddBiasAddlstm_cell_635/add:z:0,lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_635/splitSplit&lstm_cell_635/split/split_dim:output:0lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_635/SigmoidSigmoidlstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_1Sigmoidlstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_635/mulMullstm_cell_635/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_635/ReluRelulstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_635/mul_1Mullstm_cell_635/Sigmoid:y:0 lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_635/add_1AddV2lstm_cell_635/mul:z:0lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_2Sigmoidlstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_635/Relu_1Relulstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_635/mul_2Mullstm_cell_635/Sigmoid_2:y:0"lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_635_matmul_readvariableop_resource.lstm_cell_635_matmul_1_readvariableop_resource-lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4076704*
condR
while_cond_4076703*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_635/BiasAdd/ReadVariableOp$^lstm_cell_635/MatMul/ReadVariableOp&^lstm_cell_635/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_635/BiasAdd/ReadVariableOp$lstm_cell_635/BiasAdd/ReadVariableOp2J
#lstm_cell_635/MatMul/ReadVariableOp#lstm_cell_635/MatMul/ReadVariableOp2N
%lstm_cell_635/MatMul_1/ReadVariableOp%lstm_cell_635/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
─8
н
while_body_4076704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_635_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_635_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_635_matmul_readvariableop_resource:2(F
4while_lstm_cell_635_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_635/BiasAdd/ReadVariableOpб)while/lstm_cell_635/MatMul/ReadVariableOpб+while/lstm_cell_635/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_635/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_635/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_635/addAddV2$while/lstm_cell_635/MatMul:product:0&while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_635/BiasAddBiasAddwhile/lstm_cell_635/add:z:02while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_635/splitSplit,while/lstm_cell_635/split/split_dim:output:0$while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_635/SigmoidSigmoid"while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_1Sigmoid"while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_635/mulMul!while/lstm_cell_635/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_635/ReluRelu"while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_635/mul_1Mulwhile/lstm_cell_635/Sigmoid:y:0&while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_635/add_1AddV2while/lstm_cell_635/mul:z:0while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_2Sigmoid"while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_635/Relu_1Reluwhile/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_635/mul_2Mul!while/lstm_cell_635/Sigmoid_2:y:0(while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_635/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_635/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_635/BiasAdd/ReadVariableOp*^while/lstm_cell_635/MatMul/ReadVariableOp,^while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_635_biasadd_readvariableop_resource5while_lstm_cell_635_biasadd_readvariableop_resource_0"n
4while_lstm_cell_635_matmul_1_readvariableop_resource6while_lstm_cell_635_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_635_matmul_readvariableop_resource4while_lstm_cell_635_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_635/BiasAdd/ReadVariableOp*while/lstm_cell_635/BiasAdd/ReadVariableOp2V
)while/lstm_cell_635/MatMul/ReadVariableOp)while/lstm_cell_635/MatMul/ReadVariableOp2Z
+while/lstm_cell_635/MatMul_1/ReadVariableOp+while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4073186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4073186___redundant_placeholder05
1while_while_cond_4073186___redundant_placeholder15
1while_while_cond_4073186___redundant_placeholder25
1while_while_cond_4073186___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4076703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4076703___redundant_placeholder05
1while_while_cond_4076703___redundant_placeholder15
1while_while_cond_4076703___redundant_placeholder25
1while_while_cond_4076703___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4075801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4075801___redundant_placeholder05
1while_while_cond_4075801___redundant_placeholder15
1while_while_cond_4075801___redundant_placeholder25
1while_while_cond_4075801___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
к
ў
+__inference_dense_211_layer_call_fn_4076797

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_211_layer_call_and_return_conditional_losses_4073289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
АC
Щ

lstm_633_while_body_4074145.
*lstm_633_while_lstm_633_while_loop_counter4
0lstm_633_while_lstm_633_while_maximum_iterations
lstm_633_while_placeholder 
lstm_633_while_placeholder_1 
lstm_633_while_placeholder_2 
lstm_633_while_placeholder_3-
)lstm_633_while_lstm_633_strided_slice_1_0i
elstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0:	љR
?lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљM
>lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
lstm_633_while_identity
lstm_633_while_identity_1
lstm_633_while_identity_2
lstm_633_while_identity_3
lstm_633_while_identity_4
lstm_633_while_identity_5+
'lstm_633_while_lstm_633_strided_slice_1g
clstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensorN
;lstm_633_while_lstm_cell_633_matmul_readvariableop_resource:	љP
=lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource:	dљK
<lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpб2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpб4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOpЉ
@lstm_633/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_633/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensor_0lstm_633_while_placeholderIlstm_633/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp=lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_633/while/lstm_cell_633/MatMulMatMul9lstm_633/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp?lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_633/while/lstm_cell_633/MatMul_1MatMullstm_633_while_placeholder_2<lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_633/while/lstm_cell_633/addAddV2-lstm_633/while/lstm_cell_633/MatMul:product:0/lstm_633/while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp>lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_633/while/lstm_cell_633/BiasAddBiasAdd$lstm_633/while/lstm_cell_633/add:z:0;lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_633/while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_633/while/lstm_cell_633/splitSplit5lstm_633/while/lstm_cell_633/split/split_dim:output:0-lstm_633/while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_633/while/lstm_cell_633/SigmoidSigmoid+lstm_633/while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_633/while/lstm_cell_633/Sigmoid_1Sigmoid+lstm_633/while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_633/while/lstm_cell_633/mulMul*lstm_633/while/lstm_cell_633/Sigmoid_1:y:0lstm_633_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_633/while/lstm_cell_633/ReluRelu+lstm_633/while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_633/while/lstm_cell_633/mul_1Mul(lstm_633/while/lstm_cell_633/Sigmoid:y:0/lstm_633/while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_633/while/lstm_cell_633/add_1AddV2$lstm_633/while/lstm_cell_633/mul:z:0&lstm_633/while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_633/while/lstm_cell_633/Sigmoid_2Sigmoid+lstm_633/while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_633/while/lstm_cell_633/Relu_1Relu&lstm_633/while/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_633/while/lstm_cell_633/mul_2Mul*lstm_633/while/lstm_cell_633/Sigmoid_2:y:01lstm_633/while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_633/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_633_while_placeholder_1lstm_633_while_placeholder&lstm_633/while/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_633/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_633/while/addAddV2lstm_633_while_placeholderlstm_633/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_633/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_633/while/add_1AddV2*lstm_633_while_lstm_633_while_loop_counterlstm_633/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_633/while/IdentityIdentitylstm_633/while/add_1:z:0^lstm_633/while/NoOp*
T0*
_output_shapes
: ј
lstm_633/while/Identity_1Identity0lstm_633_while_lstm_633_while_maximum_iterations^lstm_633/while/NoOp*
T0*
_output_shapes
: t
lstm_633/while/Identity_2Identitylstm_633/while/add:z:0^lstm_633/while/NoOp*
T0*
_output_shapes
: А
lstm_633/while/Identity_3IdentityClstm_633/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_633/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_633/while/Identity_4Identity&lstm_633/while/lstm_cell_633/mul_2:z:0^lstm_633/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_633/while/Identity_5Identity&lstm_633/while/lstm_cell_633/add_1:z:0^lstm_633/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_633/while/NoOpNoOp4^lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp3^lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp5^lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_633_while_identity lstm_633/while/Identity:output:0"?
lstm_633_while_identity_1"lstm_633/while/Identity_1:output:0"?
lstm_633_while_identity_2"lstm_633/while/Identity_2:output:0"?
lstm_633_while_identity_3"lstm_633/while/Identity_3:output:0"?
lstm_633_while_identity_4"lstm_633/while/Identity_4:output:0"?
lstm_633_while_identity_5"lstm_633/while/Identity_5:output:0"T
'lstm_633_while_lstm_633_strided_slice_1)lstm_633_while_lstm_633_strided_slice_1_0"~
<lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource>lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0"ђ
=lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource?lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0"|
;lstm_633_while_lstm_cell_633_matmul_readvariableop_resource=lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0"╠
clstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensorelstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp2h
2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp2l
4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
─8
н
while_body_4076561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_635_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_635_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_635_matmul_readvariableop_resource:2(F
4while_lstm_cell_635_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_635/BiasAdd/ReadVariableOpб)while/lstm_cell_635/MatMul/ReadVariableOpб+while/lstm_cell_635/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_635/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_635/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_635/addAddV2$while/lstm_cell_635/MatMul:product:0&while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_635/BiasAddBiasAddwhile/lstm_cell_635/add:z:02while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_635/splitSplit,while/lstm_cell_635/split/split_dim:output:0$while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_635/SigmoidSigmoid"while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_1Sigmoid"while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_635/mulMul!while/lstm_cell_635/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_635/ReluRelu"while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_635/mul_1Mulwhile/lstm_cell_635/Sigmoid:y:0&while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_635/add_1AddV2while/lstm_cell_635/mul:z:0while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_2Sigmoid"while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_635/Relu_1Reluwhile/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_635/mul_2Mul!while/lstm_cell_635/Sigmoid_2:y:0(while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_635/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_635/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_635/BiasAdd/ReadVariableOp*^while/lstm_cell_635/MatMul/ReadVariableOp,^while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_635_biasadd_readvariableop_resource5while_lstm_cell_635_biasadd_readvariableop_resource_0"n
4while_lstm_cell_635_matmul_1_readvariableop_resource6while_lstm_cell_635_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_635_matmul_readvariableop_resource4while_lstm_cell_635_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_635/BiasAdd/ReadVariableOp*while/lstm_cell_635/BiasAdd/ReadVariableOp2V
)while/lstm_cell_635/MatMul/ReadVariableOp)while/lstm_cell_635/MatMul/ReadVariableOp2Z
+while/lstm_cell_635/MatMul_1/ReadVariableOp+while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4073732
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4073732___redundant_placeholder05
1while_while_cond_4073732___redundant_placeholder15
1while_while_cond_4073732___redundant_placeholder25
1while_while_cond_4073732___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Ш

ц
0__inference_sequential_211_layer_call_fn_4073321
lstm_633_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_633_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_633_input
Ѓ
и
*__inference_lstm_633_layer_call_fn_4074973

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4072971s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_4073036
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4073036___redundant_placeholder05
1while_while_cond_4073036___redundant_placeholder15
1while_while_cond_4073036___redundant_placeholder25
1while_while_cond_4073036___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4075472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_633_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_633_matmul_readvariableop_resource:	љG
4while_lstm_cell_633_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_633/BiasAdd/ReadVariableOpб)while/lstm_cell_633/MatMul/ReadVariableOpб+while/lstm_cell_633/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_633/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_633/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_633/addAddV2$while/lstm_cell_633/MatMul:product:0&while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_633/BiasAddBiasAddwhile/lstm_cell_633/add:z:02while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_633/splitSplit,while/lstm_cell_633/split/split_dim:output:0$while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_633/SigmoidSigmoid"while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_1Sigmoid"while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_633/mulMul!while/lstm_cell_633/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_633/ReluRelu"while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_633/mul_1Mulwhile/lstm_cell_633/Sigmoid:y:0&while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_633/add_1AddV2while/lstm_cell_633/mul:z:0while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_2Sigmoid"while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_633/Relu_1Reluwhile/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_633/mul_2Mul!while/lstm_cell_633/Sigmoid_2:y:0(while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_633/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_633/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_633/BiasAdd/ReadVariableOp*^while/lstm_cell_633/MatMul/ReadVariableOp,^while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_633_biasadd_readvariableop_resource5while_lstm_cell_633_biasadd_readvariableop_resource_0"n
4while_lstm_cell_633_matmul_1_readvariableop_resource6while_lstm_cell_633_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_633_matmul_readvariableop_resource4while_lstm_cell_633_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_633/BiasAdd/ReadVariableOp*while/lstm_cell_633/BiasAdd/ReadVariableOp2V
)while/lstm_cell_633/MatMul/ReadVariableOp)while/lstm_cell_633/MatMul/ReadVariableOp2Z
+while/lstm_cell_633/MatMul_1/ReadVariableOp+while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
я

ю
0__inference_sequential_211_layer_call_fn_4074086

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073885o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ћC
З

lstm_635_while_body_4074850.
*lstm_635_while_lstm_635_while_loop_counter4
0lstm_635_while_lstm_635_while_maximum_iterations
lstm_635_while_placeholder 
lstm_635_while_placeholder_1 
lstm_635_while_placeholder_2 
lstm_635_while_placeholder_3-
)lstm_635_while_lstm_635_strided_slice_1_0i
elstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0:2(Q
?lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(L
>lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0:(
lstm_635_while_identity
lstm_635_while_identity_1
lstm_635_while_identity_2
lstm_635_while_identity_3
lstm_635_while_identity_4
lstm_635_while_identity_5+
'lstm_635_while_lstm_635_strided_slice_1g
clstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensorM
;lstm_635_while_lstm_cell_635_matmul_readvariableop_resource:2(O
=lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource:
(J
<lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpб2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpб4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOpЉ
@lstm_635/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_635/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensor_0lstm_635_while_placeholderIlstm_635/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp=lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_635/while/lstm_cell_635/MatMulMatMul9lstm_635/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp?lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_635/while/lstm_cell_635/MatMul_1MatMullstm_635_while_placeholder_2<lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_635/while/lstm_cell_635/addAddV2-lstm_635/while/lstm_cell_635/MatMul:product:0/lstm_635/while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp>lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_635/while/lstm_cell_635/BiasAddBiasAdd$lstm_635/while/lstm_cell_635/add:z:0;lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_635/while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_635/while/lstm_cell_635/splitSplit5lstm_635/while/lstm_cell_635/split/split_dim:output:0-lstm_635/while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_635/while/lstm_cell_635/SigmoidSigmoid+lstm_635/while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_635/while/lstm_cell_635/Sigmoid_1Sigmoid+lstm_635/while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_635/while/lstm_cell_635/mulMul*lstm_635/while/lstm_cell_635/Sigmoid_1:y:0lstm_635_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_635/while/lstm_cell_635/ReluRelu+lstm_635/while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_635/while/lstm_cell_635/mul_1Mul(lstm_635/while/lstm_cell_635/Sigmoid:y:0/lstm_635/while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_635/while/lstm_cell_635/add_1AddV2$lstm_635/while/lstm_cell_635/mul:z:0&lstm_635/while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_635/while/lstm_cell_635/Sigmoid_2Sigmoid+lstm_635/while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_635/while/lstm_cell_635/Relu_1Relu&lstm_635/while/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_635/while/lstm_cell_635/mul_2Mul*lstm_635/while/lstm_cell_635/Sigmoid_2:y:01lstm_635/while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_635/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_635_while_placeholder_1lstm_635_while_placeholder&lstm_635/while/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_635/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_635/while/addAddV2lstm_635_while_placeholderlstm_635/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_635/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_635/while/add_1AddV2*lstm_635_while_lstm_635_while_loop_counterlstm_635/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_635/while/IdentityIdentitylstm_635/while/add_1:z:0^lstm_635/while/NoOp*
T0*
_output_shapes
: ј
lstm_635/while/Identity_1Identity0lstm_635_while_lstm_635_while_maximum_iterations^lstm_635/while/NoOp*
T0*
_output_shapes
: t
lstm_635/while/Identity_2Identitylstm_635/while/add:z:0^lstm_635/while/NoOp*
T0*
_output_shapes
: А
lstm_635/while/Identity_3IdentityClstm_635/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_635/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_635/while/Identity_4Identity&lstm_635/while/lstm_cell_635/mul_2:z:0^lstm_635/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_635/while/Identity_5Identity&lstm_635/while/lstm_cell_635/add_1:z:0^lstm_635/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_635/while/NoOpNoOp4^lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp3^lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp5^lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_635_while_identity lstm_635/while/Identity:output:0"?
lstm_635_while_identity_1"lstm_635/while/Identity_1:output:0"?
lstm_635_while_identity_2"lstm_635/while/Identity_2:output:0"?
lstm_635_while_identity_3"lstm_635/while/Identity_3:output:0"?
lstm_635_while_identity_4"lstm_635/while/Identity_4:output:0"?
lstm_635_while_identity_5"lstm_635/while/Identity_5:output:0"T
'lstm_635_while_lstm_635_strided_slice_1)lstm_635_while_lstm_635_strided_slice_1_0"~
<lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource>lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0"ђ
=lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource?lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0"|
;lstm_635_while_lstm_cell_635_matmul_readvariableop_resource=lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0"╠
clstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensorelstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp2h
2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp2l
4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Ѕ#
в
while_body_4072553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_635_4072577_0:2(/
while_lstm_cell_635_4072579_0:
(+
while_lstm_cell_635_4072581_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_635_4072577:2(-
while_lstm_cell_635_4072579:
()
while_lstm_cell_635_4072581:(ѕб+while/lstm_cell_635/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_635/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_635_4072577_0while_lstm_cell_635_4072579_0while_lstm_cell_635_4072581_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072539П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_635/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_635/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_635/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_635/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_635_4072577while_lstm_cell_635_4072577_0"<
while_lstm_cell_635_4072579while_lstm_cell_635_4072579_0"<
while_lstm_cell_635_4072581while_lstm_cell_635_4072581_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_635/StatefulPartitionedCall+while/lstm_cell_635/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Э
┤
*__inference_lstm_635_layer_call_fn_4076216

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073487o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_4076087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4076087___redundant_placeholder05
1while_while_cond_4076087___redundant_placeholder15
1while_while_cond_4076087___redundant_placeholder25
1while_while_cond_4076087___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
▀
ѕ
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4077003

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
аK
Ц
E__inference_lstm_634_layer_call_and_return_conditional_losses_4075743
inputs_0?
,lstm_cell_634_matmul_readvariableop_resource:	d╚A
.lstm_cell_634_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_634_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_634/BiasAdd/ReadVariableOpб#lstm_cell_634/MatMul/ReadVariableOpб%lstm_cell_634/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_634/MatMul/ReadVariableOpReadVariableOp,lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_634/MatMulMatMulstrided_slice_2:output:0+lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_634/MatMul_1MatMulzeros:output:0-lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_634/addAddV2lstm_cell_634/MatMul:product:0 lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_634/BiasAddBiasAddlstm_cell_634/add:z:0,lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_634/splitSplit&lstm_cell_634/split/split_dim:output:0lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_634/SigmoidSigmoidlstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_1Sigmoidlstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_634/mulMullstm_cell_634/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_634/ReluRelulstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_634/mul_1Mullstm_cell_634/Sigmoid:y:0 lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_634/add_1AddV2lstm_cell_634/mul:z:0lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_634/Sigmoid_2Sigmoidlstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_634/Relu_1Relulstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_634/mul_2Mullstm_cell_634/Sigmoid_2:y:0"lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_634_matmul_readvariableop_resource.lstm_cell_634_matmul_1_readvariableop_resource-lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4075659*
condR
while_cond_4075658*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_634/BiasAdd/ReadVariableOp$^lstm_cell_634/MatMul/ReadVariableOp&^lstm_cell_634/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_634/BiasAdd/ReadVariableOp$lstm_cell_634/BiasAdd/ReadVariableOp2J
#lstm_cell_634/MatMul/ReadVariableOp#lstm_cell_634/MatMul/ReadVariableOp2N
%lstm_cell_634/MatMul_1/ReadVariableOp%lstm_cell_634/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
▀
ѕ
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4076971

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
█
е
*sequential_211_lstm_635_while_cond_4071681L
Hsequential_211_lstm_635_while_sequential_211_lstm_635_while_loop_counterR
Nsequential_211_lstm_635_while_sequential_211_lstm_635_while_maximum_iterations-
)sequential_211_lstm_635_while_placeholder/
+sequential_211_lstm_635_while_placeholder_1/
+sequential_211_lstm_635_while_placeholder_2/
+sequential_211_lstm_635_while_placeholder_3N
Jsequential_211_lstm_635_while_less_sequential_211_lstm_635_strided_slice_1e
asequential_211_lstm_635_while_sequential_211_lstm_635_while_cond_4071681___redundant_placeholder0e
asequential_211_lstm_635_while_sequential_211_lstm_635_while_cond_4071681___redundant_placeholder1e
asequential_211_lstm_635_while_sequential_211_lstm_635_while_cond_4071681___redundant_placeholder2e
asequential_211_lstm_635_while_sequential_211_lstm_635_while_cond_4071681___redundant_placeholder3*
&sequential_211_lstm_635_while_identity
┬
"sequential_211/lstm_635/while/LessLess)sequential_211_lstm_635_while_placeholderJsequential_211_lstm_635_while_less_sequential_211_lstm_635_strided_slice_1*
T0*
_output_shapes
: {
&sequential_211/lstm_635/while/IdentityIdentity&sequential_211/lstm_635/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_211_lstm_635_while_identity/sequential_211/lstm_635/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Ш

ц
0__inference_sequential_211_layer_call_fn_4073937
lstm_633_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_633_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073885o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_633_input
И╗
ы
"__inference__wrapped_model_4071772
lstm_633_inputW
Dsequential_211_lstm_633_lstm_cell_633_matmul_readvariableop_resource:	љY
Fsequential_211_lstm_633_lstm_cell_633_matmul_1_readvariableop_resource:	dљT
Esequential_211_lstm_633_lstm_cell_633_biasadd_readvariableop_resource:	љW
Dsequential_211_lstm_634_lstm_cell_634_matmul_readvariableop_resource:	d╚Y
Fsequential_211_lstm_634_lstm_cell_634_matmul_1_readvariableop_resource:	2╚T
Esequential_211_lstm_634_lstm_cell_634_biasadd_readvariableop_resource:	╚V
Dsequential_211_lstm_635_lstm_cell_635_matmul_readvariableop_resource:2(X
Fsequential_211_lstm_635_lstm_cell_635_matmul_1_readvariableop_resource:
(S
Esequential_211_lstm_635_lstm_cell_635_biasadd_readvariableop_resource:(I
7sequential_211_dense_211_matmul_readvariableop_resource:
F
8sequential_211_dense_211_biasadd_readvariableop_resource:
identityѕб/sequential_211/dense_211/BiasAdd/ReadVariableOpб.sequential_211/dense_211/MatMul/ReadVariableOpб<sequential_211/lstm_633/lstm_cell_633/BiasAdd/ReadVariableOpб;sequential_211/lstm_633/lstm_cell_633/MatMul/ReadVariableOpб=sequential_211/lstm_633/lstm_cell_633/MatMul_1/ReadVariableOpбsequential_211/lstm_633/whileб<sequential_211/lstm_634/lstm_cell_634/BiasAdd/ReadVariableOpб;sequential_211/lstm_634/lstm_cell_634/MatMul/ReadVariableOpб=sequential_211/lstm_634/lstm_cell_634/MatMul_1/ReadVariableOpбsequential_211/lstm_634/whileб<sequential_211/lstm_635/lstm_cell_635/BiasAdd/ReadVariableOpб;sequential_211/lstm_635/lstm_cell_635/MatMul/ReadVariableOpб=sequential_211/lstm_635/lstm_cell_635/MatMul_1/ReadVariableOpбsequential_211/lstm_635/while[
sequential_211/lstm_633/ShapeShapelstm_633_input*
T0*
_output_shapes
:u
+sequential_211/lstm_633/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_211/lstm_633/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_211/lstm_633/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_211/lstm_633/strided_sliceStridedSlice&sequential_211/lstm_633/Shape:output:04sequential_211/lstm_633/strided_slice/stack:output:06sequential_211/lstm_633/strided_slice/stack_1:output:06sequential_211/lstm_633/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_211/lstm_633/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╗
$sequential_211/lstm_633/zeros/packedPack.sequential_211/lstm_633/strided_slice:output:0/sequential_211/lstm_633/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_211/lstm_633/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_211/lstm_633/zerosFill-sequential_211/lstm_633/zeros/packed:output:0,sequential_211/lstm_633/zeros/Const:output:0*
T0*'
_output_shapes
:         dj
(sequential_211/lstm_633/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d┐
&sequential_211/lstm_633/zeros_1/packedPack.sequential_211/lstm_633/strided_slice:output:01sequential_211/lstm_633/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_211/lstm_633/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_211/lstm_633/zeros_1Fill/sequential_211/lstm_633/zeros_1/packed:output:0.sequential_211/lstm_633/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d{
&sequential_211/lstm_633/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
!sequential_211/lstm_633/transpose	Transposelstm_633_input/sequential_211/lstm_633/transpose/perm:output:0*
T0*+
_output_shapes
:         t
sequential_211/lstm_633/Shape_1Shape%sequential_211/lstm_633/transpose:y:0*
T0*
_output_shapes
:w
-sequential_211/lstm_633/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_633/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_211/lstm_633/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_211/lstm_633/strided_slice_1StridedSlice(sequential_211/lstm_633/Shape_1:output:06sequential_211/lstm_633/strided_slice_1/stack:output:08sequential_211/lstm_633/strided_slice_1/stack_1:output:08sequential_211/lstm_633/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_211/lstm_633/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_211/lstm_633/TensorArrayV2TensorListReserve<sequential_211/lstm_633/TensorArrayV2/element_shape:output:00sequential_211/lstm_633/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_211/lstm_633/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       е
?sequential_211/lstm_633/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_211/lstm_633/transpose:y:0Vsequential_211/lstm_633/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_211/lstm_633/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_633/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_211/lstm_633/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_211/lstm_633/strided_slice_2StridedSlice%sequential_211/lstm_633/transpose:y:06sequential_211/lstm_633/strided_slice_2/stack:output:08sequential_211/lstm_633/strided_slice_2/stack_1:output:08sequential_211/lstm_633/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┴
;sequential_211/lstm_633/lstm_cell_633/MatMul/ReadVariableOpReadVariableOpDsequential_211_lstm_633_lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0Я
,sequential_211/lstm_633/lstm_cell_633/MatMulMatMul0sequential_211/lstm_633/strided_slice_2:output:0Csequential_211/lstm_633/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┼
=sequential_211/lstm_633/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOpFsequential_211_lstm_633_lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0┌
.sequential_211/lstm_633/lstm_cell_633/MatMul_1MatMul&sequential_211/lstm_633/zeros:output:0Esequential_211/lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љО
)sequential_211/lstm_633/lstm_cell_633/addAddV26sequential_211/lstm_633/lstm_cell_633/MatMul:product:08sequential_211/lstm_633/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љ┐
<sequential_211/lstm_633/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOpEsequential_211_lstm_633_lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Я
-sequential_211/lstm_633/lstm_cell_633/BiasAddBiasAdd-sequential_211/lstm_633/lstm_cell_633/add:z:0Dsequential_211/lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љw
5sequential_211/lstm_633/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_211/lstm_633/lstm_cell_633/splitSplit>sequential_211/lstm_633/lstm_cell_633/split/split_dim:output:06sequential_211/lstm_633/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitа
-sequential_211/lstm_633/lstm_cell_633/SigmoidSigmoid4sequential_211/lstm_633/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dб
/sequential_211/lstm_633/lstm_cell_633/Sigmoid_1Sigmoid4sequential_211/lstm_633/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         d┴
)sequential_211/lstm_633/lstm_cell_633/mulMul3sequential_211/lstm_633/lstm_cell_633/Sigmoid_1:y:0(sequential_211/lstm_633/zeros_1:output:0*
T0*'
_output_shapes
:         dџ
*sequential_211/lstm_633/lstm_cell_633/ReluRelu4sequential_211/lstm_633/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЛ
+sequential_211/lstm_633/lstm_cell_633/mul_1Mul1sequential_211/lstm_633/lstm_cell_633/Sigmoid:y:08sequential_211/lstm_633/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dк
+sequential_211/lstm_633/lstm_cell_633/add_1AddV2-sequential_211/lstm_633/lstm_cell_633/mul:z:0/sequential_211/lstm_633/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dб
/sequential_211/lstm_633/lstm_cell_633/Sigmoid_2Sigmoid4sequential_211/lstm_633/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dЌ
,sequential_211/lstm_633/lstm_cell_633/Relu_1Relu/sequential_211/lstm_633/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dН
+sequential_211/lstm_633/lstm_cell_633/mul_2Mul3sequential_211/lstm_633/lstm_cell_633/Sigmoid_2:y:0:sequential_211/lstm_633/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dє
5sequential_211/lstm_633/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ђ
'sequential_211/lstm_633/TensorArrayV2_1TensorListReserve>sequential_211/lstm_633/TensorArrayV2_1/element_shape:output:00sequential_211/lstm_633/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_211/lstm_633/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_211/lstm_633/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_211/lstm_633/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_211/lstm_633/whileWhile3sequential_211/lstm_633/while/loop_counter:output:09sequential_211/lstm_633/while/maximum_iterations:output:0%sequential_211/lstm_633/time:output:00sequential_211/lstm_633/TensorArrayV2_1:handle:0&sequential_211/lstm_633/zeros:output:0(sequential_211/lstm_633/zeros_1:output:00sequential_211/lstm_633/strided_slice_1:output:0Osequential_211/lstm_633/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_211_lstm_633_lstm_cell_633_matmul_readvariableop_resourceFsequential_211_lstm_633_lstm_cell_633_matmul_1_readvariableop_resourceEsequential_211_lstm_633_lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_211_lstm_633_while_body_4071404*6
cond.R,
*sequential_211_lstm_633_while_cond_4071403*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ў
Hsequential_211/lstm_633/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   і
:sequential_211/lstm_633/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_211/lstm_633/while:output:3Qsequential_211/lstm_633/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0ђ
-sequential_211/lstm_633/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_211/lstm_633/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_633/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_211/lstm_633/strided_slice_3StridedSliceCsequential_211/lstm_633/TensorArrayV2Stack/TensorListStack:tensor:06sequential_211/lstm_633/strided_slice_3/stack:output:08sequential_211/lstm_633/strided_slice_3/stack_1:output:08sequential_211/lstm_633/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask}
(sequential_211/lstm_633/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_211/lstm_633/transpose_1	TransposeCsequential_211/lstm_633/TensorArrayV2Stack/TensorListStack:tensor:01sequential_211/lstm_633/transpose_1/perm:output:0*
T0*+
_output_shapes
:         ds
sequential_211/lstm_633/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_211/lstm_634/ShapeShape'sequential_211/lstm_633/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_211/lstm_634/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_211/lstm_634/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_211/lstm_634/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_211/lstm_634/strided_sliceStridedSlice&sequential_211/lstm_634/Shape:output:04sequential_211/lstm_634/strided_slice/stack:output:06sequential_211/lstm_634/strided_slice/stack_1:output:06sequential_211/lstm_634/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_211/lstm_634/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╗
$sequential_211/lstm_634/zeros/packedPack.sequential_211/lstm_634/strided_slice:output:0/sequential_211/lstm_634/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_211/lstm_634/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_211/lstm_634/zerosFill-sequential_211/lstm_634/zeros/packed:output:0,sequential_211/lstm_634/zeros/Const:output:0*
T0*'
_output_shapes
:         2j
(sequential_211/lstm_634/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2┐
&sequential_211/lstm_634/zeros_1/packedPack.sequential_211/lstm_634/strided_slice:output:01sequential_211/lstm_634/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_211/lstm_634/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_211/lstm_634/zeros_1Fill/sequential_211/lstm_634/zeros_1/packed:output:0.sequential_211/lstm_634/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2{
&sequential_211/lstm_634/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_211/lstm_634/transpose	Transpose'sequential_211/lstm_633/transpose_1:y:0/sequential_211/lstm_634/transpose/perm:output:0*
T0*+
_output_shapes
:         dt
sequential_211/lstm_634/Shape_1Shape%sequential_211/lstm_634/transpose:y:0*
T0*
_output_shapes
:w
-sequential_211/lstm_634/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_634/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_211/lstm_634/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_211/lstm_634/strided_slice_1StridedSlice(sequential_211/lstm_634/Shape_1:output:06sequential_211/lstm_634/strided_slice_1/stack:output:08sequential_211/lstm_634/strided_slice_1/stack_1:output:08sequential_211/lstm_634/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_211/lstm_634/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_211/lstm_634/TensorArrayV2TensorListReserve<sequential_211/lstm_634/TensorArrayV2/element_shape:output:00sequential_211/lstm_634/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_211/lstm_634/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   е
?sequential_211/lstm_634/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_211/lstm_634/transpose:y:0Vsequential_211/lstm_634/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_211/lstm_634/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_634/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_211/lstm_634/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_211/lstm_634/strided_slice_2StridedSlice%sequential_211/lstm_634/transpose:y:06sequential_211/lstm_634/strided_slice_2/stack:output:08sequential_211/lstm_634/strided_slice_2/stack_1:output:08sequential_211/lstm_634/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┴
;sequential_211/lstm_634/lstm_cell_634/MatMul/ReadVariableOpReadVariableOpDsequential_211_lstm_634_lstm_cell_634_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0Я
,sequential_211/lstm_634/lstm_cell_634/MatMulMatMul0sequential_211/lstm_634/strided_slice_2:output:0Csequential_211/lstm_634/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚┼
=sequential_211/lstm_634/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOpFsequential_211_lstm_634_lstm_cell_634_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0┌
.sequential_211/lstm_634/lstm_cell_634/MatMul_1MatMul&sequential_211/lstm_634/zeros:output:0Esequential_211/lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚О
)sequential_211/lstm_634/lstm_cell_634/addAddV26sequential_211/lstm_634/lstm_cell_634/MatMul:product:08sequential_211/lstm_634/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚┐
<sequential_211/lstm_634/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOpEsequential_211_lstm_634_lstm_cell_634_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Я
-sequential_211/lstm_634/lstm_cell_634/BiasAddBiasAdd-sequential_211/lstm_634/lstm_cell_634/add:z:0Dsequential_211/lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚w
5sequential_211/lstm_634/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_211/lstm_634/lstm_cell_634/splitSplit>sequential_211/lstm_634/lstm_cell_634/split/split_dim:output:06sequential_211/lstm_634/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitа
-sequential_211/lstm_634/lstm_cell_634/SigmoidSigmoid4sequential_211/lstm_634/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2б
/sequential_211/lstm_634/lstm_cell_634/Sigmoid_1Sigmoid4sequential_211/lstm_634/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2┴
)sequential_211/lstm_634/lstm_cell_634/mulMul3sequential_211/lstm_634/lstm_cell_634/Sigmoid_1:y:0(sequential_211/lstm_634/zeros_1:output:0*
T0*'
_output_shapes
:         2џ
*sequential_211/lstm_634/lstm_cell_634/ReluRelu4sequential_211/lstm_634/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Л
+sequential_211/lstm_634/lstm_cell_634/mul_1Mul1sequential_211/lstm_634/lstm_cell_634/Sigmoid:y:08sequential_211/lstm_634/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2к
+sequential_211/lstm_634/lstm_cell_634/add_1AddV2-sequential_211/lstm_634/lstm_cell_634/mul:z:0/sequential_211/lstm_634/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2б
/sequential_211/lstm_634/lstm_cell_634/Sigmoid_2Sigmoid4sequential_211/lstm_634/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2Ќ
,sequential_211/lstm_634/lstm_cell_634/Relu_1Relu/sequential_211/lstm_634/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Н
+sequential_211/lstm_634/lstm_cell_634/mul_2Mul3sequential_211/lstm_634/lstm_cell_634/Sigmoid_2:y:0:sequential_211/lstm_634/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2є
5sequential_211/lstm_634/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ђ
'sequential_211/lstm_634/TensorArrayV2_1TensorListReserve>sequential_211/lstm_634/TensorArrayV2_1/element_shape:output:00sequential_211/lstm_634/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_211/lstm_634/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_211/lstm_634/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_211/lstm_634/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_211/lstm_634/whileWhile3sequential_211/lstm_634/while/loop_counter:output:09sequential_211/lstm_634/while/maximum_iterations:output:0%sequential_211/lstm_634/time:output:00sequential_211/lstm_634/TensorArrayV2_1:handle:0&sequential_211/lstm_634/zeros:output:0(sequential_211/lstm_634/zeros_1:output:00sequential_211/lstm_634/strided_slice_1:output:0Osequential_211/lstm_634/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_211_lstm_634_lstm_cell_634_matmul_readvariableop_resourceFsequential_211_lstm_634_lstm_cell_634_matmul_1_readvariableop_resourceEsequential_211_lstm_634_lstm_cell_634_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_211_lstm_634_while_body_4071543*6
cond.R,
*sequential_211_lstm_634_while_cond_4071542*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ў
Hsequential_211/lstm_634/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   і
:sequential_211/lstm_634/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_211/lstm_634/while:output:3Qsequential_211/lstm_634/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0ђ
-sequential_211/lstm_634/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_211/lstm_634/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_634/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_211/lstm_634/strided_slice_3StridedSliceCsequential_211/lstm_634/TensorArrayV2Stack/TensorListStack:tensor:06sequential_211/lstm_634/strided_slice_3/stack:output:08sequential_211/lstm_634/strided_slice_3/stack_1:output:08sequential_211/lstm_634/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask}
(sequential_211/lstm_634/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_211/lstm_634/transpose_1	TransposeCsequential_211/lstm_634/TensorArrayV2Stack/TensorListStack:tensor:01sequential_211/lstm_634/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2s
sequential_211/lstm_634/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_211/lstm_635/ShapeShape'sequential_211/lstm_634/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_211/lstm_635/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_211/lstm_635/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_211/lstm_635/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_211/lstm_635/strided_sliceStridedSlice&sequential_211/lstm_635/Shape:output:04sequential_211/lstm_635/strided_slice/stack:output:06sequential_211/lstm_635/strided_slice/stack_1:output:06sequential_211/lstm_635/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_211/lstm_635/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╗
$sequential_211/lstm_635/zeros/packedPack.sequential_211/lstm_635/strided_slice:output:0/sequential_211/lstm_635/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_211/lstm_635/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_211/lstm_635/zerosFill-sequential_211/lstm_635/zeros/packed:output:0,sequential_211/lstm_635/zeros/Const:output:0*
T0*'
_output_shapes
:         
j
(sequential_211/lstm_635/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
┐
&sequential_211/lstm_635/zeros_1/packedPack.sequential_211/lstm_635/strided_slice:output:01sequential_211/lstm_635/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_211/lstm_635/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_211/lstm_635/zeros_1Fill/sequential_211/lstm_635/zeros_1/packed:output:0.sequential_211/lstm_635/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
{
&sequential_211/lstm_635/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_211/lstm_635/transpose	Transpose'sequential_211/lstm_634/transpose_1:y:0/sequential_211/lstm_635/transpose/perm:output:0*
T0*+
_output_shapes
:         2t
sequential_211/lstm_635/Shape_1Shape%sequential_211/lstm_635/transpose:y:0*
T0*
_output_shapes
:w
-sequential_211/lstm_635/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_635/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_211/lstm_635/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_211/lstm_635/strided_slice_1StridedSlice(sequential_211/lstm_635/Shape_1:output:06sequential_211/lstm_635/strided_slice_1/stack:output:08sequential_211/lstm_635/strided_slice_1/stack_1:output:08sequential_211/lstm_635/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_211/lstm_635/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_211/lstm_635/TensorArrayV2TensorListReserve<sequential_211/lstm_635/TensorArrayV2/element_shape:output:00sequential_211/lstm_635/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_211/lstm_635/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   е
?sequential_211/lstm_635/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_211/lstm_635/transpose:y:0Vsequential_211/lstm_635/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_211/lstm_635/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_635/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_211/lstm_635/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_211/lstm_635/strided_slice_2StridedSlice%sequential_211/lstm_635/transpose:y:06sequential_211/lstm_635/strided_slice_2/stack:output:08sequential_211/lstm_635/strided_slice_2/stack_1:output:08sequential_211/lstm_635/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask└
;sequential_211/lstm_635/lstm_cell_635/MatMul/ReadVariableOpReadVariableOpDsequential_211_lstm_635_lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▀
,sequential_211/lstm_635/lstm_cell_635/MatMulMatMul0sequential_211/lstm_635/strided_slice_2:output:0Csequential_211/lstm_635/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (─
=sequential_211/lstm_635/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOpFsequential_211_lstm_635_lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0┘
.sequential_211/lstm_635/lstm_cell_635/MatMul_1MatMul&sequential_211/lstm_635/zeros:output:0Esequential_211/lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (о
)sequential_211/lstm_635/lstm_cell_635/addAddV26sequential_211/lstm_635/lstm_cell_635/MatMul:product:08sequential_211/lstm_635/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (Й
<sequential_211/lstm_635/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOpEsequential_211_lstm_635_lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▀
-sequential_211/lstm_635/lstm_cell_635/BiasAddBiasAdd-sequential_211/lstm_635/lstm_cell_635/add:z:0Dsequential_211/lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (w
5sequential_211/lstm_635/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_211/lstm_635/lstm_cell_635/splitSplit>sequential_211/lstm_635/lstm_cell_635/split/split_dim:output:06sequential_211/lstm_635/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitа
-sequential_211/lstm_635/lstm_cell_635/SigmoidSigmoid4sequential_211/lstm_635/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
б
/sequential_211/lstm_635/lstm_cell_635/Sigmoid_1Sigmoid4sequential_211/lstm_635/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
┴
)sequential_211/lstm_635/lstm_cell_635/mulMul3sequential_211/lstm_635/lstm_cell_635/Sigmoid_1:y:0(sequential_211/lstm_635/zeros_1:output:0*
T0*'
_output_shapes
:         
џ
*sequential_211/lstm_635/lstm_cell_635/ReluRelu4sequential_211/lstm_635/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Л
+sequential_211/lstm_635/lstm_cell_635/mul_1Mul1sequential_211/lstm_635/lstm_cell_635/Sigmoid:y:08sequential_211/lstm_635/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
к
+sequential_211/lstm_635/lstm_cell_635/add_1AddV2-sequential_211/lstm_635/lstm_cell_635/mul:z:0/sequential_211/lstm_635/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
б
/sequential_211/lstm_635/lstm_cell_635/Sigmoid_2Sigmoid4sequential_211/lstm_635/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
Ќ
,sequential_211/lstm_635/lstm_cell_635/Relu_1Relu/sequential_211/lstm_635/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Н
+sequential_211/lstm_635/lstm_cell_635/mul_2Mul3sequential_211/lstm_635/lstm_cell_635/Sigmoid_2:y:0:sequential_211/lstm_635/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
є
5sequential_211/lstm_635/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ђ
'sequential_211/lstm_635/TensorArrayV2_1TensorListReserve>sequential_211/lstm_635/TensorArrayV2_1/element_shape:output:00sequential_211/lstm_635/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_211/lstm_635/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_211/lstm_635/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_211/lstm_635/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_211/lstm_635/whileWhile3sequential_211/lstm_635/while/loop_counter:output:09sequential_211/lstm_635/while/maximum_iterations:output:0%sequential_211/lstm_635/time:output:00sequential_211/lstm_635/TensorArrayV2_1:handle:0&sequential_211/lstm_635/zeros:output:0(sequential_211/lstm_635/zeros_1:output:00sequential_211/lstm_635/strided_slice_1:output:0Osequential_211/lstm_635/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_211_lstm_635_lstm_cell_635_matmul_readvariableop_resourceFsequential_211_lstm_635_lstm_cell_635_matmul_1_readvariableop_resourceEsequential_211_lstm_635_lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_211_lstm_635_while_body_4071682*6
cond.R,
*sequential_211_lstm_635_while_cond_4071681*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ў
Hsequential_211/lstm_635/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   і
:sequential_211/lstm_635/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_211/lstm_635/while:output:3Qsequential_211/lstm_635/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0ђ
-sequential_211/lstm_635/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_211/lstm_635/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_211/lstm_635/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_211/lstm_635/strided_slice_3StridedSliceCsequential_211/lstm_635/TensorArrayV2Stack/TensorListStack:tensor:06sequential_211/lstm_635/strided_slice_3/stack:output:08sequential_211/lstm_635/strided_slice_3/stack_1:output:08sequential_211/lstm_635/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask}
(sequential_211/lstm_635/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_211/lstm_635/transpose_1	TransposeCsequential_211/lstm_635/TensorArrayV2Stack/TensorListStack:tensor:01sequential_211/lstm_635/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
s
sequential_211/lstm_635/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
.sequential_211/dense_211/MatMul/ReadVariableOpReadVariableOp7sequential_211_dense_211_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0┼
sequential_211/dense_211/MatMulMatMul0sequential_211/lstm_635/strided_slice_3:output:06sequential_211/dense_211/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ц
/sequential_211/dense_211/BiasAdd/ReadVariableOpReadVariableOp8sequential_211_dense_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_211/dense_211/BiasAddBiasAdd)sequential_211/dense_211/MatMul:product:07sequential_211/dense_211/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_211/dense_211/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp0^sequential_211/dense_211/BiasAdd/ReadVariableOp/^sequential_211/dense_211/MatMul/ReadVariableOp=^sequential_211/lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp<^sequential_211/lstm_633/lstm_cell_633/MatMul/ReadVariableOp>^sequential_211/lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp^sequential_211/lstm_633/while=^sequential_211/lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp<^sequential_211/lstm_634/lstm_cell_634/MatMul/ReadVariableOp>^sequential_211/lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp^sequential_211/lstm_634/while=^sequential_211/lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp<^sequential_211/lstm_635/lstm_cell_635/MatMul/ReadVariableOp>^sequential_211/lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp^sequential_211/lstm_635/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2b
/sequential_211/dense_211/BiasAdd/ReadVariableOp/sequential_211/dense_211/BiasAdd/ReadVariableOp2`
.sequential_211/dense_211/MatMul/ReadVariableOp.sequential_211/dense_211/MatMul/ReadVariableOp2|
<sequential_211/lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp<sequential_211/lstm_633/lstm_cell_633/BiasAdd/ReadVariableOp2z
;sequential_211/lstm_633/lstm_cell_633/MatMul/ReadVariableOp;sequential_211/lstm_633/lstm_cell_633/MatMul/ReadVariableOp2~
=sequential_211/lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp=sequential_211/lstm_633/lstm_cell_633/MatMul_1/ReadVariableOp2>
sequential_211/lstm_633/whilesequential_211/lstm_633/while2|
<sequential_211/lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp<sequential_211/lstm_634/lstm_cell_634/BiasAdd/ReadVariableOp2z
;sequential_211/lstm_634/lstm_cell_634/MatMul/ReadVariableOp;sequential_211/lstm_634/lstm_cell_634/MatMul/ReadVariableOp2~
=sequential_211/lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp=sequential_211/lstm_634/lstm_cell_634/MatMul_1/ReadVariableOp2>
sequential_211/lstm_634/whilesequential_211/lstm_634/while2|
<sequential_211/lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp<sequential_211/lstm_635/lstm_cell_635/BiasAdd/ReadVariableOp2z
;sequential_211/lstm_635/lstm_cell_635/MatMul/ReadVariableOp;sequential_211/lstm_635/lstm_cell_635/MatMul/ReadVariableOp2~
=sequential_211/lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp=sequential_211/lstm_635/lstm_cell_635/MatMul_1/ReadVariableOp2>
sequential_211/lstm_635/whilesequential_211/lstm_635/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_633_input
и

Ч
lstm_635_while_cond_4074849.
*lstm_635_while_lstm_635_while_loop_counter4
0lstm_635_while_lstm_635_while_maximum_iterations
lstm_635_while_placeholder 
lstm_635_while_placeholder_1 
lstm_635_while_placeholder_2 
lstm_635_while_placeholder_30
,lstm_635_while_less_lstm_635_strided_slice_1G
Clstm_635_while_lstm_635_while_cond_4074849___redundant_placeholder0G
Clstm_635_while_lstm_635_while_cond_4074849___redundant_placeholder1G
Clstm_635_while_lstm_635_while_cond_4074849___redundant_placeholder2G
Clstm_635_while_lstm_635_while_cond_4074849___redundant_placeholder3
lstm_635_while_identity
є
lstm_635/while/LessLesslstm_635_while_placeholder,lstm_635_while_less_lstm_635_strided_slice_1*
T0*
_output_shapes
: ]
lstm_635/while/IdentityIdentitylstm_635/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_635_while_identity lstm_635/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4072887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_633_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_633_matmul_readvariableop_resource:	љG
4while_lstm_cell_633_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_633/BiasAdd/ReadVariableOpб)while/lstm_cell_633/MatMul/ReadVariableOpб+while/lstm_cell_633/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_633/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_633/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_633/addAddV2$while/lstm_cell_633/MatMul:product:0&while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_633/BiasAddBiasAddwhile/lstm_cell_633/add:z:02while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_633/splitSplit,while/lstm_cell_633/split/split_dim:output:0$while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_633/SigmoidSigmoid"while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_1Sigmoid"while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_633/mulMul!while/lstm_cell_633/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_633/ReluRelu"while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_633/mul_1Mulwhile/lstm_cell_633/Sigmoid:y:0&while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_633/add_1AddV2while/lstm_cell_633/mul:z:0while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_633/Sigmoid_2Sigmoid"while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_633/Relu_1Reluwhile/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_633/mul_2Mul!while/lstm_cell_633/Sigmoid_2:y:0(while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_633/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_633/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_633/BiasAdd/ReadVariableOp*^while/lstm_cell_633/MatMul/ReadVariableOp,^while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_633_biasadd_readvariableop_resource5while_lstm_cell_633_biasadd_readvariableop_resource_0"n
4while_lstm_cell_633_matmul_1_readvariableop_resource6while_lstm_cell_633_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_633_matmul_readvariableop_resource4while_lstm_cell_633_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_633/BiasAdd/ReadVariableOp*while/lstm_cell_633/BiasAdd/ReadVariableOp2V
)while/lstm_cell_633/MatMul/ReadVariableOp)while/lstm_cell_633/MatMul/ReadVariableOp2Z
+while/lstm_cell_633/MatMul_1/ReadVariableOp+while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_633_layer_call_and_return_conditional_losses_4073817

inputs?
,lstm_cell_633_matmul_readvariableop_resource:	љA
.lstm_cell_633_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_633_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_633/BiasAdd/ReadVariableOpб#lstm_cell_633/MatMul/ReadVariableOpб%lstm_cell_633/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_633/MatMul/ReadVariableOpReadVariableOp,lstm_cell_633_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_633/MatMulMatMulstrided_slice_2:output:0+lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_633_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_633/MatMul_1MatMulzeros:output:0-lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_633/addAddV2lstm_cell_633/MatMul:product:0 lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_633_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_633/BiasAddBiasAddlstm_cell_633/add:z:0,lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_633/splitSplit&lstm_cell_633/split/split_dim:output:0lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_633/SigmoidSigmoidlstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_1Sigmoidlstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_633/mulMullstm_cell_633/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_633/ReluRelulstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_633/mul_1Mullstm_cell_633/Sigmoid:y:0 lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_633/add_1AddV2lstm_cell_633/mul:z:0lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_633/Sigmoid_2Sigmoidlstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_633/Relu_1Relulstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_633/mul_2Mullstm_cell_633/Sigmoid_2:y:0"lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_633_matmul_readvariableop_resource.lstm_cell_633_matmul_1_readvariableop_resource-lstm_cell_633_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4073733*
condR
while_cond_4073732*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_633/BiasAdd/ReadVariableOp$^lstm_cell_633/MatMul/ReadVariableOp&^lstm_cell_633/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_633/BiasAdd/ReadVariableOp$lstm_cell_633/BiasAdd/ReadVariableOp2J
#lstm_cell_633/MatMul/ReadVariableOp#lstm_cell_633/MatMul/ReadVariableOp2N
%lstm_cell_633/MatMul_1/ReadVariableOp%lstm_cell_633/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ПJ
а
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073487

inputs>
,lstm_cell_635_matmul_readvariableop_resource:2(@
.lstm_cell_635_matmul_1_readvariableop_resource:
(;
-lstm_cell_635_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_635/BiasAdd/ReadVariableOpб#lstm_cell_635/MatMul/ReadVariableOpб%lstm_cell_635/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_635/MatMul/ReadVariableOpReadVariableOp,lstm_cell_635_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_635/MatMulMatMulstrided_slice_2:output:0+lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_635_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_635/MatMul_1MatMulzeros:output:0-lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_635/addAddV2lstm_cell_635/MatMul:product:0 lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_635_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_635/BiasAddBiasAddlstm_cell_635/add:z:0,lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_635/splitSplit&lstm_cell_635/split/split_dim:output:0lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_635/SigmoidSigmoidlstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_1Sigmoidlstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_635/mulMullstm_cell_635/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_635/ReluRelulstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_635/mul_1Mullstm_cell_635/Sigmoid:y:0 lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_635/add_1AddV2lstm_cell_635/mul:z:0lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_635/Sigmoid_2Sigmoidlstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_635/Relu_1Relulstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_635/mul_2Mullstm_cell_635/Sigmoid_2:y:0"lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_635_matmul_readvariableop_resource.lstm_cell_635_matmul_1_readvariableop_resource-lstm_cell_635_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4073403*
condR
while_cond_4073402*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_635/BiasAdd/ReadVariableOp$^lstm_cell_635/MatMul/ReadVariableOp&^lstm_cell_635/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_635/BiasAdd/ReadVariableOp$lstm_cell_635/BiasAdd/ReadVariableOp2J
#lstm_cell_635/MatMul/ReadVariableOp#lstm_cell_635/MatMul/ReadVariableOp2N
%lstm_cell_635/MatMul_1/ReadVariableOp%lstm_cell_635/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_4073402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4073402___redundant_placeholder05
1while_while_cond_4073402___redundant_placeholder15
1while_while_cond_4073402___redundant_placeholder25
1while_while_cond_4073402___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_4075802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_634_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_634/BiasAdd/ReadVariableOpб)while/lstm_cell_634/MatMul/ReadVariableOpб+while/lstm_cell_634/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_634/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_634/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_634/addAddV2$while/lstm_cell_634/MatMul:product:0&while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_634/BiasAddBiasAddwhile/lstm_cell_634/add:z:02while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_634/splitSplit,while/lstm_cell_634/split/split_dim:output:0$while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_634/SigmoidSigmoid"while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_1Sigmoid"while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_634/mulMul!while/lstm_cell_634/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_634/ReluRelu"while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_634/mul_1Mulwhile/lstm_cell_634/Sigmoid:y:0&while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_634/add_1AddV2while/lstm_cell_634/mul:z:0while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_2Sigmoid"while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_634/Relu_1Reluwhile/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_634/mul_2Mul!while/lstm_cell_634/Sigmoid_2:y:0(while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_634/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_634/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_634/BiasAdd/ReadVariableOp*^while/lstm_cell_634/MatMul/ReadVariableOp,^while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_634_biasadd_readvariableop_resource5while_lstm_cell_634_biasadd_readvariableop_resource_0"n
4while_lstm_cell_634_matmul_1_readvariableop_resource6while_lstm_cell_634_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_634_matmul_readvariableop_resource4while_lstm_cell_634_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_634/BiasAdd/ReadVariableOp*while/lstm_cell_634/BiasAdd/ReadVariableOp2V
)while/lstm_cell_634/MatMul/ReadVariableOp)while/lstm_cell_634/MatMul/ReadVariableOp2Z
+while/lstm_cell_634/MatMul_1/ReadVariableOp+while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4076274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4076274___redundant_placeholder05
1while_while_cond_4076274___redundant_placeholder15
1while_while_cond_4076274___redundant_placeholder25
1while_while_cond_4076274___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_635_while_cond_4074422.
*lstm_635_while_lstm_635_while_loop_counter4
0lstm_635_while_lstm_635_while_maximum_iterations
lstm_635_while_placeholder 
lstm_635_while_placeholder_1 
lstm_635_while_placeholder_2 
lstm_635_while_placeholder_30
,lstm_635_while_less_lstm_635_strided_slice_1G
Clstm_635_while_lstm_635_while_cond_4074422___redundant_placeholder0G
Clstm_635_while_lstm_635_while_cond_4074422___redundant_placeholder1G
Clstm_635_while_lstm_635_while_cond_4074422___redundant_placeholder2G
Clstm_635_while_lstm_635_while_cond_4074422___redundant_placeholder3
lstm_635_while_identity
є
lstm_635/while/LessLesslstm_635_while_placeholder,lstm_635_while_less_lstm_635_strided_slice_1*
T0*
_output_shapes
: ]
lstm_635/while/IdentityIdentitylstm_635/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_635_while_identity lstm_635/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4072552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4072552___redundant_placeholder05
1while_while_cond_4072552___redundant_placeholder15
1while_while_cond_4072552___redundant_placeholder25
1while_while_cond_4072552___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Ј#
ы
while_body_4071853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_633_4071877_0:	љ0
while_lstm_cell_633_4071879_0:	dљ,
while_lstm_cell_633_4071881_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_633_4071877:	љ.
while_lstm_cell_633_4071879:	dљ*
while_lstm_cell_633_4071881:	љѕб+while/lstm_cell_633/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_633/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_633_4071877_0while_lstm_cell_633_4071879_0while_lstm_cell_633_4071881_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071839П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_633/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_633/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_633/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_633/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_633_4071877while_lstm_cell_633_4071877_0"<
while_lstm_cell_633_4071879while_lstm_cell_633_4071879_0"<
while_lstm_cell_633_4071881while_lstm_cell_633_4071881_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_633/StatefulPartitionedCall+while/lstm_cell_633/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
АC
Щ

lstm_633_while_body_4074572.
*lstm_633_while_lstm_633_while_loop_counter4
0lstm_633_while_lstm_633_while_maximum_iterations
lstm_633_while_placeholder 
lstm_633_while_placeholder_1 
lstm_633_while_placeholder_2 
lstm_633_while_placeholder_3-
)lstm_633_while_lstm_633_strided_slice_1_0i
elstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0:	љR
?lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0:	dљM
>lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0:	љ
lstm_633_while_identity
lstm_633_while_identity_1
lstm_633_while_identity_2
lstm_633_while_identity_3
lstm_633_while_identity_4
lstm_633_while_identity_5+
'lstm_633_while_lstm_633_strided_slice_1g
clstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensorN
;lstm_633_while_lstm_cell_633_matmul_readvariableop_resource:	љP
=lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource:	dљK
<lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource:	љѕб3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpб2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpб4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOpЉ
@lstm_633/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_633/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensor_0lstm_633_while_placeholderIlstm_633/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOpReadVariableOp=lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_633/while/lstm_cell_633/MatMulMatMul9lstm_633/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOpReadVariableOp?lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_633/while/lstm_cell_633/MatMul_1MatMullstm_633_while_placeholder_2<lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_633/while/lstm_cell_633/addAddV2-lstm_633/while/lstm_cell_633/MatMul:product:0/lstm_633/while/lstm_cell_633/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOpReadVariableOp>lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_633/while/lstm_cell_633/BiasAddBiasAdd$lstm_633/while/lstm_cell_633/add:z:0;lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_633/while/lstm_cell_633/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_633/while/lstm_cell_633/splitSplit5lstm_633/while/lstm_cell_633/split/split_dim:output:0-lstm_633/while/lstm_cell_633/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_633/while/lstm_cell_633/SigmoidSigmoid+lstm_633/while/lstm_cell_633/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_633/while/lstm_cell_633/Sigmoid_1Sigmoid+lstm_633/while/lstm_cell_633/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_633/while/lstm_cell_633/mulMul*lstm_633/while/lstm_cell_633/Sigmoid_1:y:0lstm_633_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_633/while/lstm_cell_633/ReluRelu+lstm_633/while/lstm_cell_633/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_633/while/lstm_cell_633/mul_1Mul(lstm_633/while/lstm_cell_633/Sigmoid:y:0/lstm_633/while/lstm_cell_633/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_633/while/lstm_cell_633/add_1AddV2$lstm_633/while/lstm_cell_633/mul:z:0&lstm_633/while/lstm_cell_633/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_633/while/lstm_cell_633/Sigmoid_2Sigmoid+lstm_633/while/lstm_cell_633/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_633/while/lstm_cell_633/Relu_1Relu&lstm_633/while/lstm_cell_633/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_633/while/lstm_cell_633/mul_2Mul*lstm_633/while/lstm_cell_633/Sigmoid_2:y:01lstm_633/while/lstm_cell_633/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_633/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_633_while_placeholder_1lstm_633_while_placeholder&lstm_633/while/lstm_cell_633/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_633/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_633/while/addAddV2lstm_633_while_placeholderlstm_633/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_633/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_633/while/add_1AddV2*lstm_633_while_lstm_633_while_loop_counterlstm_633/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_633/while/IdentityIdentitylstm_633/while/add_1:z:0^lstm_633/while/NoOp*
T0*
_output_shapes
: ј
lstm_633/while/Identity_1Identity0lstm_633_while_lstm_633_while_maximum_iterations^lstm_633/while/NoOp*
T0*
_output_shapes
: t
lstm_633/while/Identity_2Identitylstm_633/while/add:z:0^lstm_633/while/NoOp*
T0*
_output_shapes
: А
lstm_633/while/Identity_3IdentityClstm_633/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_633/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_633/while/Identity_4Identity&lstm_633/while/lstm_cell_633/mul_2:z:0^lstm_633/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_633/while/Identity_5Identity&lstm_633/while/lstm_cell_633/add_1:z:0^lstm_633/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_633/while/NoOpNoOp4^lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp3^lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp5^lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_633_while_identity lstm_633/while/Identity:output:0"?
lstm_633_while_identity_1"lstm_633/while/Identity_1:output:0"?
lstm_633_while_identity_2"lstm_633/while/Identity_2:output:0"?
lstm_633_while_identity_3"lstm_633/while/Identity_3:output:0"?
lstm_633_while_identity_4"lstm_633/while/Identity_4:output:0"?
lstm_633_while_identity_5"lstm_633/while/Identity_5:output:0"T
'lstm_633_while_lstm_633_strided_slice_1)lstm_633_while_lstm_633_strided_slice_1_0"~
<lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource>lstm_633_while_lstm_cell_633_biasadd_readvariableop_resource_0"ђ
=lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource?lstm_633_while_lstm_cell_633_matmul_1_readvariableop_resource_0"|
;lstm_633_while_lstm_cell_633_matmul_readvariableop_resource=lstm_633_while_lstm_cell_633_matmul_readvariableop_resource_0"╠
clstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensorelstm_633_while_tensorarrayv2read_tensorlistgetitem_lstm_633_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp3lstm_633/while/lstm_cell_633/BiasAdd/ReadVariableOp2h
2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp2lstm_633/while/lstm_cell_633/MatMul/ReadVariableOp2l
4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp4lstm_633/while/lstm_cell_633/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
»8
ј
E__inference_lstm_634_layer_call_and_return_conditional_losses_4072463

inputs(
lstm_cell_634_4072381:	d╚(
lstm_cell_634_4072383:	2╚$
lstm_cell_634_4072385:	╚
identityѕб%lstm_cell_634/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_634/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_634_4072381lstm_cell_634_4072383lstm_cell_634_4072385*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072335n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_634_4072381lstm_cell_634_4072383lstm_cell_634_4072385*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_4072394*
condR
while_cond_4072393*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_634/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_634/StatefulPartitionedCall%lstm_cell_634/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
─8
н
while_body_4076275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_635_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_635_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_635_matmul_readvariableop_resource:2(F
4while_lstm_cell_635_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_635/BiasAdd/ReadVariableOpб)while/lstm_cell_635/MatMul/ReadVariableOpб+while/lstm_cell_635/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_635/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_635/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_635/addAddV2$while/lstm_cell_635/MatMul:product:0&while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_635/BiasAddBiasAddwhile/lstm_cell_635/add:z:02while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_635/splitSplit,while/lstm_cell_635/split/split_dim:output:0$while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_635/SigmoidSigmoid"while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_1Sigmoid"while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_635/mulMul!while/lstm_cell_635/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_635/ReluRelu"while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_635/mul_1Mulwhile/lstm_cell_635/Sigmoid:y:0&while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_635/add_1AddV2while/lstm_cell_635/mul:z:0while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_635/Sigmoid_2Sigmoid"while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_635/Relu_1Reluwhile/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_635/mul_2Mul!while/lstm_cell_635/Sigmoid_2:y:0(while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_635/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_635/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_635/BiasAdd/ReadVariableOp*^while/lstm_cell_635/MatMul/ReadVariableOp,^while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_635_biasadd_readvariableop_resource5while_lstm_cell_635_biasadd_readvariableop_resource_0"n
4while_lstm_cell_635_matmul_1_readvariableop_resource6while_lstm_cell_635_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_635_matmul_readvariableop_resource4while_lstm_cell_635_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_635/BiasAdd/ReadVariableOp*while/lstm_cell_635/BiasAdd/ReadVariableOp2V
)while/lstm_cell_635/MatMul/ReadVariableOp)while/lstm_cell_635/MatMul/ReadVariableOp2Z
+while/lstm_cell_635/MatMul_1/ReadVariableOp+while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
В
ш
/__inference_lstm_cell_635_layer_call_fn_4077037

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072685o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
ћC
З

lstm_635_while_body_4074423.
*lstm_635_while_lstm_635_while_loop_counter4
0lstm_635_while_lstm_635_while_maximum_iterations
lstm_635_while_placeholder 
lstm_635_while_placeholder_1 
lstm_635_while_placeholder_2 
lstm_635_while_placeholder_3-
)lstm_635_while_lstm_635_strided_slice_1_0i
elstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0:2(Q
?lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0:
(L
>lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0:(
lstm_635_while_identity
lstm_635_while_identity_1
lstm_635_while_identity_2
lstm_635_while_identity_3
lstm_635_while_identity_4
lstm_635_while_identity_5+
'lstm_635_while_lstm_635_strided_slice_1g
clstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensorM
;lstm_635_while_lstm_cell_635_matmul_readvariableop_resource:2(O
=lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource:
(J
<lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource:(ѕб3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpб2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpб4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOpЉ
@lstm_635/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_635/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensor_0lstm_635_while_placeholderIlstm_635/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOpReadVariableOp=lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_635/while/lstm_cell_635/MatMulMatMul9lstm_635/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOpReadVariableOp?lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_635/while/lstm_cell_635/MatMul_1MatMullstm_635_while_placeholder_2<lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_635/while/lstm_cell_635/addAddV2-lstm_635/while/lstm_cell_635/MatMul:product:0/lstm_635/while/lstm_cell_635/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOpReadVariableOp>lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_635/while/lstm_cell_635/BiasAddBiasAdd$lstm_635/while/lstm_cell_635/add:z:0;lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_635/while/lstm_cell_635/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_635/while/lstm_cell_635/splitSplit5lstm_635/while/lstm_cell_635/split/split_dim:output:0-lstm_635/while/lstm_cell_635/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_635/while/lstm_cell_635/SigmoidSigmoid+lstm_635/while/lstm_cell_635/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_635/while/lstm_cell_635/Sigmoid_1Sigmoid+lstm_635/while/lstm_cell_635/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_635/while/lstm_cell_635/mulMul*lstm_635/while/lstm_cell_635/Sigmoid_1:y:0lstm_635_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_635/while/lstm_cell_635/ReluRelu+lstm_635/while/lstm_cell_635/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_635/while/lstm_cell_635/mul_1Mul(lstm_635/while/lstm_cell_635/Sigmoid:y:0/lstm_635/while/lstm_cell_635/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_635/while/lstm_cell_635/add_1AddV2$lstm_635/while/lstm_cell_635/mul:z:0&lstm_635/while/lstm_cell_635/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_635/while/lstm_cell_635/Sigmoid_2Sigmoid+lstm_635/while/lstm_cell_635/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_635/while/lstm_cell_635/Relu_1Relu&lstm_635/while/lstm_cell_635/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_635/while/lstm_cell_635/mul_2Mul*lstm_635/while/lstm_cell_635/Sigmoid_2:y:01lstm_635/while/lstm_cell_635/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_635/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_635_while_placeholder_1lstm_635_while_placeholder&lstm_635/while/lstm_cell_635/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_635/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_635/while/addAddV2lstm_635_while_placeholderlstm_635/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_635/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_635/while/add_1AddV2*lstm_635_while_lstm_635_while_loop_counterlstm_635/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_635/while/IdentityIdentitylstm_635/while/add_1:z:0^lstm_635/while/NoOp*
T0*
_output_shapes
: ј
lstm_635/while/Identity_1Identity0lstm_635_while_lstm_635_while_maximum_iterations^lstm_635/while/NoOp*
T0*
_output_shapes
: t
lstm_635/while/Identity_2Identitylstm_635/while/add:z:0^lstm_635/while/NoOp*
T0*
_output_shapes
: А
lstm_635/while/Identity_3IdentityClstm_635/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_635/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_635/while/Identity_4Identity&lstm_635/while/lstm_cell_635/mul_2:z:0^lstm_635/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_635/while/Identity_5Identity&lstm_635/while/lstm_cell_635/add_1:z:0^lstm_635/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_635/while/NoOpNoOp4^lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp3^lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp5^lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_635_while_identity lstm_635/while/Identity:output:0"?
lstm_635_while_identity_1"lstm_635/while/Identity_1:output:0"?
lstm_635_while_identity_2"lstm_635/while/Identity_2:output:0"?
lstm_635_while_identity_3"lstm_635/while/Identity_3:output:0"?
lstm_635_while_identity_4"lstm_635/while/Identity_4:output:0"?
lstm_635_while_identity_5"lstm_635/while/Identity_5:output:0"T
'lstm_635_while_lstm_635_strided_slice_1)lstm_635_while_lstm_635_strided_slice_1_0"~
<lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource>lstm_635_while_lstm_cell_635_biasadd_readvariableop_resource_0"ђ
=lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource?lstm_635_while_lstm_cell_635_matmul_1_readvariableop_resource_0"|
;lstm_635_while_lstm_cell_635_matmul_readvariableop_resource=lstm_635_while_lstm_cell_635_matmul_readvariableop_resource_0"╠
clstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensorelstm_635_while_tensorarrayv2read_tensorlistgetitem_lstm_635_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp3lstm_635/while/lstm_cell_635/BiasAdd/ReadVariableOp2h
2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp2lstm_635/while/lstm_cell_635/MatMul/ReadVariableOp2l
4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp4lstm_635/while/lstm_cell_635/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Ж
Ѓ
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073997
lstm_633_input#
lstm_633_4073970:	љ#
lstm_633_4073972:	dљ
lstm_633_4073974:	љ#
lstm_634_4073977:	d╚#
lstm_634_4073979:	2╚
lstm_634_4073981:	╚"
lstm_635_4073984:2("
lstm_635_4073986:
(
lstm_635_4073988:(#
dense_211_4073991:

dense_211_4073993:
identityѕб!dense_211/StatefulPartitionedCallб lstm_633/StatefulPartitionedCallб lstm_634/StatefulPartitionedCallб lstm_635/StatefulPartitionedCallЊ
 lstm_633/StatefulPartitionedCallStatefulPartitionedCalllstm_633_inputlstm_633_4073970lstm_633_4073972lstm_633_4073974*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4073817«
 lstm_634/StatefulPartitionedCallStatefulPartitionedCall)lstm_633/StatefulPartitionedCall:output:0lstm_634_4073977lstm_634_4073979lstm_634_4073981*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4073652ф
 lstm_635/StatefulPartitionedCallStatefulPartitionedCall)lstm_634/StatefulPartitionedCall:output:0lstm_635_4073984lstm_635_4073986lstm_635_4073988*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073487џ
!dense_211/StatefulPartitionedCallStatefulPartitionedCall)lstm_635/StatefulPartitionedCall:output:0dense_211_4073991dense_211_4073993*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dense_211_layer_call_and_return_conditional_losses_4073289y
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_211/StatefulPartitionedCall!^lstm_633/StatefulPartitionedCall!^lstm_634/StatefulPartitionedCall!^lstm_635/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2D
 lstm_633/StatefulPartitionedCall lstm_633/StatefulPartitionedCall2D
 lstm_634/StatefulPartitionedCall lstm_634/StatefulPartitionedCall2D
 lstm_635/StatefulPartitionedCall lstm_635/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_633_input
О
є
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4071839

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
Г
╣
*__inference_lstm_634_layer_call_fn_4075567
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_634_layer_call_and_return_conditional_losses_4072272|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
О
є
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072189

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Э
┤
*__inference_lstm_635_layer_call_fn_4076205

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4073271o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
┬

Ў
%__inference_signature_wrapper_4074032
lstm_633_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCalllstm_633_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_4071772o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_633_input
Ј#
ы
while_body_4072203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_634_4072227_0:	d╚0
while_lstm_cell_634_4072229_0:	2╚,
while_lstm_cell_634_4072231_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_634_4072227:	d╚.
while_lstm_cell_634_4072229:	2╚*
while_lstm_cell_634_4072231:	╚ѕб+while/lstm_cell_634/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_634/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_634_4072227_0while_lstm_cell_634_4072229_0while_lstm_cell_634_4072231_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4072189П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_634/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_634/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_634/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_634/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_634_4072227while_lstm_cell_634_4072227_0"<
while_lstm_cell_634_4072229while_lstm_cell_634_4072229_0"<
while_lstm_cell_634_4072231while_lstm_cell_634_4072231_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_634/StatefulPartitionedCall+while/lstm_cell_634/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_4071852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4071852___redundant_placeholder05
1while_while_cond_4071852___redundant_placeholder15
1while_while_cond_4071852___redundant_placeholder25
1while_while_cond_4071852___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Г
╣
*__inference_lstm_633_layer_call_fn_4074951
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_633_layer_call_and_return_conditional_losses_4071922|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_4072043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4072043___redundant_placeholder05
1while_while_cond_4072043___redundant_placeholder15
1while_while_cond_4072043___redundant_placeholder25
1while_while_cond_4072043___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
чT
я
*sequential_211_lstm_634_while_body_4071543L
Hsequential_211_lstm_634_while_sequential_211_lstm_634_while_loop_counterR
Nsequential_211_lstm_634_while_sequential_211_lstm_634_while_maximum_iterations-
)sequential_211_lstm_634_while_placeholder/
+sequential_211_lstm_634_while_placeholder_1/
+sequential_211_lstm_634_while_placeholder_2/
+sequential_211_lstm_634_while_placeholder_3K
Gsequential_211_lstm_634_while_sequential_211_lstm_634_strided_slice_1_0ѕ
Ѓsequential_211_lstm_634_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_634_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_211_lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚a
Nsequential_211_lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚\
Msequential_211_lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚*
&sequential_211_lstm_634_while_identity,
(sequential_211_lstm_634_while_identity_1,
(sequential_211_lstm_634_while_identity_2,
(sequential_211_lstm_634_while_identity_3,
(sequential_211_lstm_634_while_identity_4,
(sequential_211_lstm_634_while_identity_5I
Esequential_211_lstm_634_while_sequential_211_lstm_634_strided_slice_1є
Ђsequential_211_lstm_634_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_634_tensorarrayunstack_tensorlistfromtensor]
Jsequential_211_lstm_634_while_lstm_cell_634_matmul_readvariableop_resource:	d╚_
Lsequential_211_lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚Z
Ksequential_211_lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕбBsequential_211/lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpбAsequential_211/lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpбCsequential_211/lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOpа
Osequential_211/lstm_634/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ъ
Asequential_211/lstm_634/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_211_lstm_634_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_634_tensorarrayunstack_tensorlistfromtensor_0)sequential_211_lstm_634_while_placeholderXsequential_211/lstm_634/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0¤
Asequential_211/lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOpLsequential_211_lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0ё
2sequential_211/lstm_634/while/lstm_cell_634/MatMulMatMulHsequential_211/lstm_634/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_211/lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚М
Csequential_211/lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOpNsequential_211_lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0в
4sequential_211/lstm_634/while/lstm_cell_634/MatMul_1MatMul+sequential_211_lstm_634_while_placeholder_2Ksequential_211/lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ж
/sequential_211/lstm_634/while/lstm_cell_634/addAddV2<sequential_211/lstm_634/while/lstm_cell_634/MatMul:product:0>sequential_211/lstm_634/while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚═
Bsequential_211/lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOpMsequential_211_lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0Ы
3sequential_211/lstm_634/while/lstm_cell_634/BiasAddBiasAdd3sequential_211/lstm_634/while/lstm_cell_634/add:z:0Jsequential_211/lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚}
;sequential_211/lstm_634/while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_211/lstm_634/while/lstm_cell_634/splitSplitDsequential_211/lstm_634/while/lstm_cell_634/split/split_dim:output:0<sequential_211/lstm_634/while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitг
3sequential_211/lstm_634/while/lstm_cell_634/SigmoidSigmoid:sequential_211/lstm_634/while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2«
5sequential_211/lstm_634/while/lstm_cell_634/Sigmoid_1Sigmoid:sequential_211/lstm_634/while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2л
/sequential_211/lstm_634/while/lstm_cell_634/mulMul9sequential_211/lstm_634/while/lstm_cell_634/Sigmoid_1:y:0+sequential_211_lstm_634_while_placeholder_3*
T0*'
_output_shapes
:         2д
0sequential_211/lstm_634/while/lstm_cell_634/ReluRelu:sequential_211/lstm_634/while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2с
1sequential_211/lstm_634/while/lstm_cell_634/mul_1Mul7sequential_211/lstm_634/while/lstm_cell_634/Sigmoid:y:0>sequential_211/lstm_634/while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2п
1sequential_211/lstm_634/while/lstm_cell_634/add_1AddV23sequential_211/lstm_634/while/lstm_cell_634/mul:z:05sequential_211/lstm_634/while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2«
5sequential_211/lstm_634/while/lstm_cell_634/Sigmoid_2Sigmoid:sequential_211/lstm_634/while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2Б
2sequential_211/lstm_634/while/lstm_cell_634/Relu_1Relu5sequential_211/lstm_634/while/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2у
1sequential_211/lstm_634/while/lstm_cell_634/mul_2Mul9sequential_211/lstm_634/while/lstm_cell_634/Sigmoid_2:y:0@sequential_211/lstm_634/while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2д
Bsequential_211/lstm_634/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_211_lstm_634_while_placeholder_1)sequential_211_lstm_634_while_placeholder5sequential_211/lstm_634/while/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_211/lstm_634/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_211/lstm_634/while/addAddV2)sequential_211_lstm_634_while_placeholder,sequential_211/lstm_634/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_211/lstm_634/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_211/lstm_634/while/add_1AddV2Hsequential_211_lstm_634_while_sequential_211_lstm_634_while_loop_counter.sequential_211/lstm_634/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_211/lstm_634/while/IdentityIdentity'sequential_211/lstm_634/while/add_1:z:0#^sequential_211/lstm_634/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_211/lstm_634/while/Identity_1IdentityNsequential_211_lstm_634_while_sequential_211_lstm_634_while_maximum_iterations#^sequential_211/lstm_634/while/NoOp*
T0*
_output_shapes
: А
(sequential_211/lstm_634/while/Identity_2Identity%sequential_211/lstm_634/while/add:z:0#^sequential_211/lstm_634/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_211/lstm_634/while/Identity_3IdentityRsequential_211/lstm_634/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_211/lstm_634/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_211/lstm_634/while/Identity_4Identity5sequential_211/lstm_634/while/lstm_cell_634/mul_2:z:0#^sequential_211/lstm_634/while/NoOp*
T0*'
_output_shapes
:         2┬
(sequential_211/lstm_634/while/Identity_5Identity5sequential_211/lstm_634/while/lstm_cell_634/add_1:z:0#^sequential_211/lstm_634/while/NoOp*
T0*'
_output_shapes
:         2│
"sequential_211/lstm_634/while/NoOpNoOpC^sequential_211/lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpB^sequential_211/lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpD^sequential_211/lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_211_lstm_634_while_identity/sequential_211/lstm_634/while/Identity:output:0"]
(sequential_211_lstm_634_while_identity_11sequential_211/lstm_634/while/Identity_1:output:0"]
(sequential_211_lstm_634_while_identity_21sequential_211/lstm_634/while/Identity_2:output:0"]
(sequential_211_lstm_634_while_identity_31sequential_211/lstm_634/while/Identity_3:output:0"]
(sequential_211_lstm_634_while_identity_41sequential_211/lstm_634/while/Identity_4:output:0"]
(sequential_211_lstm_634_while_identity_51sequential_211/lstm_634/while/Identity_5:output:0"ю
Ksequential_211_lstm_634_while_lstm_cell_634_biasadd_readvariableop_resourceMsequential_211_lstm_634_while_lstm_cell_634_biasadd_readvariableop_resource_0"ъ
Lsequential_211_lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resourceNsequential_211_lstm_634_while_lstm_cell_634_matmul_1_readvariableop_resource_0"џ
Jsequential_211_lstm_634_while_lstm_cell_634_matmul_readvariableop_resourceLsequential_211_lstm_634_while_lstm_cell_634_matmul_readvariableop_resource_0"љ
Esequential_211_lstm_634_while_sequential_211_lstm_634_strided_slice_1Gsequential_211_lstm_634_while_sequential_211_lstm_634_strided_slice_1_0"і
Ђsequential_211_lstm_634_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_634_tensorarrayunstack_tensorlistfromtensorЃsequential_211_lstm_634_while_tensorarrayv2read_tensorlistgetitem_sequential_211_lstm_634_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2ѕ
Bsequential_211/lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOpBsequential_211/lstm_634/while/lstm_cell_634/BiasAdd/ReadVariableOp2є
Asequential_211/lstm_634/while/lstm_cell_634/MatMul/ReadVariableOpAsequential_211/lstm_634/while/lstm_cell_634/MatMul/ReadVariableOp2і
Csequential_211/lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOpCsequential_211/lstm_634/while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_4075659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_634_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_634/BiasAdd/ReadVariableOpб)while/lstm_cell_634/MatMul/ReadVariableOpб+while/lstm_cell_634/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_634/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_634/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_634/addAddV2$while/lstm_cell_634/MatMul:product:0&while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_634/BiasAddBiasAddwhile/lstm_cell_634/add:z:02while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_634/splitSplit,while/lstm_cell_634/split/split_dim:output:0$while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_634/SigmoidSigmoid"while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_1Sigmoid"while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_634/mulMul!while/lstm_cell_634/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_634/ReluRelu"while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_634/mul_1Mulwhile/lstm_cell_634/Sigmoid:y:0&while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_634/add_1AddV2while/lstm_cell_634/mul:z:0while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_2Sigmoid"while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_634/Relu_1Reluwhile/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_634/mul_2Mul!while/lstm_cell_634/Sigmoid_2:y:0(while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_634/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_634/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_634/BiasAdd/ReadVariableOp*^while/lstm_cell_634/MatMul/ReadVariableOp,^while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_634_biasadd_readvariableop_resource5while_lstm_cell_634_biasadd_readvariableop_resource_0"n
4while_lstm_cell_634_matmul_1_readvariableop_resource6while_lstm_cell_634_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_634_matmul_readvariableop_resource4while_lstm_cell_634_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_634/BiasAdd/ReadVariableOp*while/lstm_cell_634/BiasAdd/ReadVariableOp2V
)while/lstm_cell_634/MatMul/ReadVariableOp)while/lstm_cell_634/MatMul/ReadVariableOp2Z
+while/lstm_cell_634/MatMul_1/ReadVariableOp+while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
╔	
э
F__inference_dense_211_layer_call_and_return_conditional_losses_4076807

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
љ
Х
*__inference_lstm_635_layer_call_fn_4076183
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_635_layer_call_and_return_conditional_losses_4072622o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
Л8
┌
while_body_4075945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_634_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_634_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_634_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_634_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_634_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_634_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_634/BiasAdd/ReadVariableOpб)while/lstm_cell_634/MatMul/ReadVariableOpб+while/lstm_cell_634/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_634/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_634_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_634/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_634/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_634/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_634_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_634/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_634/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_634/addAddV2$while/lstm_cell_634/MatMul:product:0&while/lstm_cell_634/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_634/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_634_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_634/BiasAddBiasAddwhile/lstm_cell_634/add:z:02while/lstm_cell_634/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_634/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_634/splitSplit,while/lstm_cell_634/split/split_dim:output:0$while/lstm_cell_634/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_634/SigmoidSigmoid"while/lstm_cell_634/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_1Sigmoid"while/lstm_cell_634/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_634/mulMul!while/lstm_cell_634/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_634/ReluRelu"while/lstm_cell_634/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_634/mul_1Mulwhile/lstm_cell_634/Sigmoid:y:0&while/lstm_cell_634/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_634/add_1AddV2while/lstm_cell_634/mul:z:0while/lstm_cell_634/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_634/Sigmoid_2Sigmoid"while/lstm_cell_634/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_634/Relu_1Reluwhile/lstm_cell_634/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_634/mul_2Mul!while/lstm_cell_634/Sigmoid_2:y:0(while/lstm_cell_634/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_634/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_634/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_634/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_634/BiasAdd/ReadVariableOp*^while/lstm_cell_634/MatMul/ReadVariableOp,^while/lstm_cell_634/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_634_biasadd_readvariableop_resource5while_lstm_cell_634_biasadd_readvariableop_resource_0"n
4while_lstm_cell_634_matmul_1_readvariableop_resource6while_lstm_cell_634_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_634_matmul_readvariableop_resource4while_lstm_cell_634_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_634/BiasAdd/ReadVariableOp*while/lstm_cell_634/BiasAdd/ReadVariableOp2V
)while/lstm_cell_634/MatMul/ReadVariableOp)while/lstm_cell_634/MatMul/ReadVariableOp2Z
+while/lstm_cell_634/MatMul_1/ReadVariableOp+while/lstm_cell_634/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
В
ш
/__inference_lstm_cell_635_layer_call_fn_4077020

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4072539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
█
е
*sequential_211_lstm_634_while_cond_4071542L
Hsequential_211_lstm_634_while_sequential_211_lstm_634_while_loop_counterR
Nsequential_211_lstm_634_while_sequential_211_lstm_634_while_maximum_iterations-
)sequential_211_lstm_634_while_placeholder/
+sequential_211_lstm_634_while_placeholder_1/
+sequential_211_lstm_634_while_placeholder_2/
+sequential_211_lstm_634_while_placeholder_3N
Jsequential_211_lstm_634_while_less_sequential_211_lstm_634_strided_slice_1e
asequential_211_lstm_634_while_sequential_211_lstm_634_while_cond_4071542___redundant_placeholder0e
asequential_211_lstm_634_while_sequential_211_lstm_634_while_cond_4071542___redundant_placeholder1e
asequential_211_lstm_634_while_sequential_211_lstm_634_while_cond_4071542___redundant_placeholder2e
asequential_211_lstm_634_while_sequential_211_lstm_634_while_cond_4071542___redundant_placeholder3*
&sequential_211_lstm_634_while_identity
┬
"sequential_211/lstm_634/while/LessLess)sequential_211_lstm_634_while_placeholderJsequential_211_lstm_634_while_less_sequential_211_lstm_634_strided_slice_1*
T0*
_output_shapes
: {
&sequential_211/lstm_634/while/IdentityIdentity&sequential_211/lstm_634/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_211_lstm_634_while_identity/sequential_211/lstm_634/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_4075328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4075328___redundant_placeholder05
1while_while_cond_4075328___redundant_placeholder15
1while_while_cond_4075328___redundant_placeholder25
1while_while_cond_4075328___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
M
lstm_633_input;
 serving_default_lstm_633_input:0         =
	dense_2110
StatefulPartitionedCall:0         tensorflow/serving/predict:н═
Ё
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
є__call__
+Є&call_and_return_all_conditional_losses
ѕ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
І__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
й

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
Ј__call__
+љ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ъ
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ"
	optimizer
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
є__call__
ѕ_default_save_signature
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
-
Љserving_default"
signature_map
с
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
с
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
І__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
с
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
ќ__call__
+Ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_211/kernel
:2dense_211/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
Ј__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	љ2lstm_633/lstm_cell_633/kernel
::8	dљ2'lstm_633/lstm_cell_633/recurrent_kernel
*:(љ2lstm_633/lstm_cell_633/bias
0:.	d╚2lstm_634/lstm_cell_634/kernel
::8	2╚2'lstm_634/lstm_cell_634/recurrent_kernel
*:(╚2lstm_634/lstm_cell_634/bias
/:-2(2lstm_635/lstm_cell_635/kernel
9:7
(2'lstm_635/lstm_cell_635/recurrent_kernel
):'(2lstm_635/lstm_cell_635/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
░
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	ltotal
	mcount
n	variables
o	keras_api"
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
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
':%
2Adam/dense_211/kernel/m
!:2Adam/dense_211/bias/m
5:3	љ2$Adam/lstm_633/lstm_cell_633/kernel/m
?:=	dљ2.Adam/lstm_633/lstm_cell_633/recurrent_kernel/m
/:-љ2"Adam/lstm_633/lstm_cell_633/bias/m
5:3	d╚2$Adam/lstm_634/lstm_cell_634/kernel/m
?:=	2╚2.Adam/lstm_634/lstm_cell_634/recurrent_kernel/m
/:-╚2"Adam/lstm_634/lstm_cell_634/bias/m
4:22(2$Adam/lstm_635/lstm_cell_635/kernel/m
>:<
(2.Adam/lstm_635/lstm_cell_635/recurrent_kernel/m
.:,(2"Adam/lstm_635/lstm_cell_635/bias/m
':%
2Adam/dense_211/kernel/v
!:2Adam/dense_211/bias/v
5:3	љ2$Adam/lstm_633/lstm_cell_633/kernel/v
?:=	dљ2.Adam/lstm_633/lstm_cell_633/recurrent_kernel/v
/:-љ2"Adam/lstm_633/lstm_cell_633/bias/v
5:3	d╚2$Adam/lstm_634/lstm_cell_634/kernel/v
?:=	2╚2.Adam/lstm_634/lstm_cell_634/recurrent_kernel/v
/:-╚2"Adam/lstm_634/lstm_cell_634/bias/v
4:22(2$Adam/lstm_635/lstm_cell_635/kernel/v
>:<
(2.Adam/lstm_635/lstm_cell_635/recurrent_kernel/v
.:,(2"Adam/lstm_635/lstm_cell_635/bias/v
ј2І
0__inference_sequential_211_layer_call_fn_4073321
0__inference_sequential_211_layer_call_fn_4074059
0__inference_sequential_211_layer_call_fn_4074086
0__inference_sequential_211_layer_call_fn_4073937└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Щ2э
K__inference_sequential_211_layer_call_and_return_conditional_losses_4074513
K__inference_sequential_211_layer_call_and_return_conditional_losses_4074940
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073967
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073997└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
нBЛ
"__inference__wrapped_model_4071772lstm_633_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
І2ѕ
*__inference_lstm_633_layer_call_fn_4074951
*__inference_lstm_633_layer_call_fn_4074962
*__inference_lstm_633_layer_call_fn_4074973
*__inference_lstm_633_layer_call_fn_4074984Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075127
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075270
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075413
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075556Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_634_layer_call_fn_4075567
*__inference_lstm_634_layer_call_fn_4075578
*__inference_lstm_634_layer_call_fn_4075589
*__inference_lstm_634_layer_call_fn_4075600Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_634_layer_call_and_return_conditional_losses_4075743
E__inference_lstm_634_layer_call_and_return_conditional_losses_4075886
E__inference_lstm_634_layer_call_and_return_conditional_losses_4076029
E__inference_lstm_634_layer_call_and_return_conditional_losses_4076172Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_635_layer_call_fn_4076183
*__inference_lstm_635_layer_call_fn_4076194
*__inference_lstm_635_layer_call_fn_4076205
*__inference_lstm_635_layer_call_fn_4076216Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076359
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076502
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076645
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076788Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Н2м
+__inference_dense_211_layer_call_fn_4076797б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_dense_211_layer_call_and_return_conditional_losses_4076807б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
МBл
%__inference_signature_wrapper_4074032lstm_633_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
д2Б
/__inference_lstm_cell_633_layer_call_fn_4076824
/__inference_lstm_cell_633_layer_call_fn_4076841Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4076873
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4076905Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_634_layer_call_fn_4076922
/__inference_lstm_cell_634_layer_call_fn_4076939Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4076971
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4077003Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_635_layer_call_fn_4077020
/__inference_lstm_cell_635_layer_call_fn_4077037Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4077069
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4077101Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 е
"__inference__wrapped_model_4071772Ђ()*+,-./0;б8
1б.
,і)
lstm_633_input         
ф "5ф2
0
	dense_211#і 
	dense_211         д
F__inference_dense_211_layer_call_and_return_conditional_losses_4076807\/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ ~
+__inference_dense_211_layer_call_fn_4076797O/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075127і()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  d
џ н
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075270і()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  d
џ ║
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075413q()*?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         d
џ ║
E__inference_lstm_633_layer_call_and_return_conditional_losses_4075556q()*?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         d
џ Ф
*__inference_lstm_633_layer_call_fn_4074951}()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  dФ
*__inference_lstm_633_layer_call_fn_4074962}()*OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  dњ
*__inference_lstm_633_layer_call_fn_4074973d()*?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_633_layer_call_fn_4074984d()*?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_634_layer_call_and_return_conditional_losses_4075743і+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "2б/
(і%
0                  2
џ н
E__inference_lstm_634_layer_call_and_return_conditional_losses_4075886і+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "2б/
(і%
0                  2
џ ║
E__inference_lstm_634_layer_call_and_return_conditional_losses_4076029q+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф ")б&
і
0         2
џ ║
E__inference_lstm_634_layer_call_and_return_conditional_losses_4076172q+,-?б<
5б2
$і!
inputs         d

 
p

 
ф ")б&
і
0         2
џ Ф
*__inference_lstm_634_layer_call_fn_4075567}+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "%і"                  2Ф
*__inference_lstm_634_layer_call_fn_4075578}+,-OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "%і"                  2њ
*__inference_lstm_634_layer_call_fn_4075589d+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_634_layer_call_fn_4075600d+,-?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076359}./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "%б"
і
0         

џ к
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076502}./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "%б"
і
0         

џ Х
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076645m./0?б<
5б2
$і!
inputs         2

 
p 

 
ф "%б"
і
0         

џ Х
E__inference_lstm_635_layer_call_and_return_conditional_losses_4076788m./0?б<
5б2
$і!
inputs         2

 
p

 
ф "%б"
і
0         

џ ъ
*__inference_lstm_635_layer_call_fn_4076183p./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "і         
ъ
*__inference_lstm_635_layer_call_fn_4076194p./0OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "і         
ј
*__inference_lstm_635_layer_call_fn_4076205`./0?б<
5б2
$і!
inputs         2

 
p 

 
ф "і         
ј
*__inference_lstm_635_layer_call_fn_4076216`./0?б<
5б2
$і!
inputs         2

 
p

 
ф "і         
╠
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4076873§()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ ╠
J__inference_lstm_cell_633_layer_call_and_return_conditional_losses_4076905§()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ А
/__inference_lstm_cell_633_layer_call_fn_4076824ь()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         dА
/__inference_lstm_cell_633_layer_call_fn_4076841ь()*ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         d╠
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4076971§+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ ╠
J__inference_lstm_cell_634_layer_call_and_return_conditional_losses_4077003§+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ А
/__inference_lstm_cell_634_layer_call_fn_4076922ь+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2А
/__inference_lstm_cell_634_layer_call_fn_4076939ь+,-ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2╠
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4077069§./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ ╠
J__inference_lstm_cell_635_layer_call_and_return_conditional_losses_4077101§./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ А
/__inference_lstm_cell_635_layer_call_fn_4077020ь./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
А
/__inference_lstm_cell_635_layer_call_fn_4077037ь./0ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
╚
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073967y()*+,-./0Cб@
9б6
,і)
lstm_633_input         
p 

 
ф "%б"
і
0         
џ ╚
K__inference_sequential_211_layer_call_and_return_conditional_losses_4073997y()*+,-./0Cб@
9б6
,і)
lstm_633_input         
p

 
ф "%б"
і
0         
џ └
K__inference_sequential_211_layer_call_and_return_conditional_losses_4074513q()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ └
K__inference_sequential_211_layer_call_and_return_conditional_losses_4074940q()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ а
0__inference_sequential_211_layer_call_fn_4073321l()*+,-./0Cб@
9б6
,і)
lstm_633_input         
p 

 
ф "і         а
0__inference_sequential_211_layer_call_fn_4073937l()*+,-./0Cб@
9б6
,і)
lstm_633_input         
p

 
ф "і         ў
0__inference_sequential_211_layer_call_fn_4074059d()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "і         ў
0__inference_sequential_211_layer_call_fn_4074086d()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "і         й
%__inference_signature_wrapper_4074032Њ()*+,-./0MбJ
б 
Cф@
>
lstm_633_input,і)
lstm_633_input         "5ф2
0
	dense_211#і 
	dense_211         