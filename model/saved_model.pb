สา
ไ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
ม
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
executor_typestring จ
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02unknown8๓ฦ
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:@*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
}
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:*
dtype0
s
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
l
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes	
:*
dtype0

conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_6/kernel
}
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*(
_output_shapes
:*
dtype0
s
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:*
dtype0
w
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense/kernel
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:?*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	|*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	|*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:|*
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

sequential/random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*0
shared_name!sequential/random_flip/StateVar

3sequential/random_flip/StateVar/Read/ReadVariableOpReadVariableOpsequential/random_flip/StateVar*
_output_shapes
:*
dtype0	

sequential/random_zoom/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*0
shared_name!sequential/random_zoom/StateVar

3sequential/random_zoom/StateVar/Read/ReadVariableOpReadVariableOpsequential/random_zoom/StateVar*
_output_shapes
:*
dtype0	
ค
&sequential/random_translation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*7
shared_name(&sequential/random_translation/StateVar

:sequential/random_translation/StateVar/Read/ReadVariableOpReadVariableOp&sequential/random_translation/StateVar*
_output_shapes
:*
dtype0	
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/m

*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_3/kernel/m

*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_4/kernel/m

*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_4/bias/m
z
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_5/kernel/m

*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_5/bias/m
z
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_6/kernel/m

*Adam/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_6/bias/m
z
(Adam/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/m*
_output_shapes	
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense/kernel/m
~
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*!
_output_shapes
:?*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	|*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	|*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:|*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_2/kernel/v

*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_3/kernel/v

*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_4/kernel/v

*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_4/bias/v
z
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_5/kernel/v

*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_5/bias/v
z
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_6/kernel/v

*Adam/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_6/bias/v
z
(Adam/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_6/bias/v*
_output_shapes	
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense/kernel/v
~
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*!
_output_shapes
:?*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	|*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	|*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:|*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:|*
dtype0

NoOpNoOp
?ฌ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ฺซ
valueฯซBหซ Bรซ

layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer-5
layer_with_weights-1
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer_with_weights-5
layer-14
layer-15
layer_with_weights-6
layer-16
layer-17
layer-18
layer-19
layer_with_weights-7
layer-20
layer_with_weights-8
layer-21
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature*
ฬ
#!_self_saveable_object_factories
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&_random_generator
'__call__
*(&call_and_return_all_conditional_losses*
ฬ
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
._random_generator
/__call__
*0&call_and_return_all_conditional_losses*
ฬ
#1_self_saveable_object_factories
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6_random_generator
7__call__
*8&call_and_return_all_conditional_losses*
ณ
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
ห

@kernel
Abias
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses*
ณ
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses* 
ห

Pkernel
Qbias
#R_self_saveable_object_factories
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses*
ณ
#Y_self_saveable_object_factories
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
ห

`kernel
abias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
ณ
#i_self_saveable_object_factories
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses* 
ห

pkernel
qbias
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses*
ณ
#y_self_saveable_object_factories
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses* 
ิ
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
บ
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
ิ
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
บ
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
ิ
?kernel
	กbias
$ข_self_saveable_object_factories
ฃ	variables
คtrainable_variables
ฅregularization_losses
ฆ	keras_api
ง__call__
+จ&call_and_return_all_conditional_losses*
บ
$ฉ_self_saveable_object_factories
ช	variables
ซtrainable_variables
ฌregularization_losses
ญ	keras_api
ฎ__call__
+ฏ&call_and_return_all_conditional_losses* 
า
$ฐ_self_saveable_object_factories
ฑ	variables
ฒtrainable_variables
ณregularization_losses
ด	keras_api
ต_random_generator
ถ__call__
+ท&call_and_return_all_conditional_losses* 
บ
$ธ_self_saveable_object_factories
น	variables
บtrainable_variables
ปregularization_losses
ผ	keras_api
ฝ__call__
+พ&call_and_return_all_conditional_losses* 
ิ
ฟkernel
	ภbias
$ม_self_saveable_object_factories
ย	variables
รtrainable_variables
ฤregularization_losses
ล	keras_api
ฦ__call__
+ว&call_and_return_all_conditional_losses*
ิ
ศkernel
	ษbias
$ส_self_saveable_object_factories
ห	variables
ฬtrainable_variables
อregularization_losses
ฮ	keras_api
ฯ__call__
+ะ&call_and_return_all_conditional_losses*
ล
	ัiter
าbeta_1
ำbeta_2

ิdecay
ีlearning_rate@m?Am?Pm?Qm?`m฿amเpmแqmโ	mใ	mไ	mๅ	mๆ	?m็	กm่	ฟm้	ภm๊	ศm๋	ษm์@vํAv๎Pv๏Qv๐`v๑av๒pv๓qv๔	v๕	v๖	v๗	v๘	?v๙	กv๚	ฟv๛	ภv?	ศv?	ษv?*

ึserving_default* 
* 

@0
A1
P2
Q3
`4
a5
p6
q7
8
9
10
11
?12
ก13
ฟ14
ภ15
ศ16
ษ17*

@0
A1
P2
Q3
`4
a5
p6
q7
8
9
10
11
?12
ก13
ฟ14
ภ15
ศ16
ษ17*
* 
ต
ืnon_trainable_variables
ุlayers
ูmetrics
 ฺlayer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

?non_trainable_variables
?layers
?metrics
 ฿layer_regularization_losses
เlayer_metrics
"	variables
#trainable_variables
$regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

แ
_generator*
* 
* 
* 
* 
* 
* 

โnon_trainable_variables
ใlayers
ไmetrics
 ๅlayer_regularization_losses
ๆlayer_metrics
*	variables
+trainable_variables
,regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

็
_generator*
* 
* 
* 
* 
* 
* 

่non_trainable_variables
้layers
๊metrics
 ๋layer_regularization_losses
์layer_metrics
2	variables
3trainable_variables
4regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

ํ
_generator*
* 
* 
* 
* 
* 
* 

๎non_trainable_variables
๏layers
๐metrics
 ๑layer_regularization_losses
๒layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

@0
A1*

@0
A1*
* 

๓non_trainable_variables
๔layers
๕metrics
 ๖layer_regularization_losses
๗layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

๘non_trainable_variables
๙layers
๚metrics
 ๛layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

P0
Q1*

P0
Q1*
* 

?non_trainable_variables
?layers
?metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

`0
a1*

`0
a1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

p0
q1*

p0
q1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

?non_trainable_variables
กlayers
ขmetrics
 ฃlayer_regularization_losses
คlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

ฅnon_trainable_variables
ฆlayers
งmetrics
 จlayer_regularization_losses
ฉlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ชnon_trainable_variables
ซlayers
ฌmetrics
 ญlayer_regularization_losses
ฎlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
ก1*

?0
ก1*
* 

ฏnon_trainable_variables
ฐlayers
ฑmetrics
 ฒlayer_regularization_losses
ณlayer_metrics
ฃ	variables
คtrainable_variables
ฅregularization_losses
ง__call__
+จ&call_and_return_all_conditional_losses
'จ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ดnon_trainable_variables
ตlayers
ถmetrics
 ทlayer_regularization_losses
ธlayer_metrics
ช	variables
ซtrainable_variables
ฌregularization_losses
ฎ__call__
+ฏ&call_and_return_all_conditional_losses
'ฏ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

นnon_trainable_variables
บlayers
ปmetrics
 ผlayer_regularization_losses
ฝlayer_metrics
ฑ	variables
ฒtrainable_variables
ณregularization_losses
ถ__call__
+ท&call_and_return_all_conditional_losses
'ท"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 

พnon_trainable_variables
ฟlayers
ภmetrics
 มlayer_regularization_losses
ยlayer_metrics
น	variables
บtrainable_variables
ปregularization_losses
ฝ__call__
+พ&call_and_return_all_conditional_losses
'พ"call_and_return_conditional_losses* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

ฟ0
ภ1*

ฟ0
ภ1*
* 

รnon_trainable_variables
ฤlayers
ลmetrics
 ฦlayer_regularization_losses
วlayer_metrics
ย	variables
รtrainable_variables
ฤregularization_losses
ฦ__call__
+ว&call_and_return_all_conditional_losses
'ว"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

ศ0
ษ1*

ศ0
ษ1*
* 

ศnon_trainable_variables
ษlayers
สmetrics
 หlayer_regularization_losses
ฬlayer_metrics
ห	variables
ฬtrainable_variables
อregularization_losses
ฯ__call__
+ะ&call_and_return_all_conditional_losses
'ะ"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
ช
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21*

อ0
ฮ1*
* 
* 
* 
* 
* 
* 
* 

ฯ
_state_var*
* 
* 
* 
* 
* 

ะ
_state_var*
* 
* 
* 
* 
* 

ั
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

าtotal

ำcount
ิ	variables
ี	keras_api*
M

ึtotal

ืcount
ุ
_fn_kwargs
ู	variables
ฺ	keras_api*
}
VARIABLE_VALUEsequential/random_flip/StateVarJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEsequential/random_zoom/StateVarJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE&sequential/random_translation/StateVarJlayer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

า0
ำ1*

ิ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ึ0
ื1*

ู	variables*
z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

!serving_default_random_flip_inputPlaceholder*1
_output_shapes
:?????????๐*
dtype0*&
shape:?????????๐
๖
StatefulPartitionedCallStatefulPartitionedCall!serving_default_random_flip_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_91377
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp3sequential/random_flip/StateVar/Read/ReadVariableOp3sequential/random_zoom/StateVar/Read/ReadVariableOp:sequential/random_translation/StateVar/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp*Adam/conv2d_6/kernel/m/Read/ReadVariableOp(Adam/conv2d_6/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp*Adam/conv2d_6/kernel/v/Read/ReadVariableOp(Adam/conv2d_6/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*O
TinH
F2D				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_92238
แ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratesequential/random_flip/StateVarsequential/random_zoom/StateVar&sequential/random_translation/StateVartotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/conv2d_6/kernel/mAdam/conv2d_6/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/conv2d_6/kernel/vAdam/conv2d_6/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*N
TinG
E2C*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_92446ผํ
ง

๕
@__inference_dense_layer_call_and_return_conditional_losses_91982

inputs3
matmul_readvariableop_resource:?.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขMatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:??????????
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_89721

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ศ
E
)__inference_rescaling_layer_call_fn_91706

inputs
identityผ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_89817j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ข

๔
B__inference_dense_1_layer_call_and_return_conditional_losses_92002

inputs1
matmul_readvariableop_resource:	|-
biasadd_readvariableop_resource:|
identityขBiasAdd/ReadVariableOpขMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	|*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????|`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????|w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
๒
ก
*__inference_sequential_layer_call_fn_90034
random_flip_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:?

unknown_14:	

unknown_15:	|

unknown_16:|
identityขStatefulPartitionedCallฟ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_89995o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????๐: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:?????????๐
+
_user_specified_namerandom_flip_input
ม
{
+__inference_random_flip_layer_call_fn_91389

inputs
unknown:	
identityขStatefulPartitionedCallุ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_90469y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????๐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ฬ
G
+__inference_random_zoom_layer_call_fn_91456

inputs
identityพ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_89801j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ฬ
ไ
*__inference_sequential_layer_call_fn_90901

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@$
	unknown_8:@
	unknown_9:	&

unknown_10:

unknown_11:	&

unknown_12:

unknown_13:	&

unknown_14:

unknown_15:	

unknown_16:?

unknown_17:	

unknown_18:	|

unknown_19:|
identityขStatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_90585o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????๐: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

๚
A__inference_conv2d_layer_call_and_return_conditional_losses_91734

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????๐k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????๐w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????๐: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

b
F__inference_random_flip_layer_call_and_return_conditional_losses_91393

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_91794

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????ฅ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????ฅ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????ฅ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????ฅ 
 
_user_specified_nameinputs
ม
{
+__inference_random_zoom_layer_call_fn_91463

inputs
unknown:	
identityขStatefulPartitionedCallุ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_90398y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????๐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ว

%__inference_dense_layer_call_fn_91971

inputs
unknown:?
	unknown_0:	
identityขStatefulPartitionedCallู
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_89971p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:??????????
 
_user_specified_nameinputs
ํ
๏
*__inference_sequential_layer_call_fn_90677
random_flip_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4: 
	unknown_5: #
	unknown_6: @
	unknown_7:@$
	unknown_8:@
	unknown_9:	&

unknown_10:

unknown_11:	&

unknown_12:

unknown_13:	&

unknown_14:

unknown_15:	

unknown_16:?

unknown_17:	

unknown_18:	|

unknown_19:|
identityขStatefulPartitionedCallๆ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_90585o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????๐: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:?????????๐
+
_user_specified_namerandom_flip_input

?
C__inference_conv2d_6_layer_call_and_return_conditional_losses_89938

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????
j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????

 
_user_specified_nameinputs
ฉโ
ง
E__inference_sequential_layer_call_and_return_conditional_losses_91334

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	B
4random_zoom_stateful_uniform_rngreadandskip_resource:	I
;random_translation_stateful_uniform_rngreadandskip_resource:	?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@7
(conv2d_3_biasadd_readvariableop_resource:	C
'conv2d_4_conv2d_readvariableop_resource:7
(conv2d_4_biasadd_readvariableop_resource:	C
'conv2d_5_conv2d_readvariableop_resource:7
(conv2d_5_biasadd_readvariableop_resource:	C
'conv2d_6_conv2d_readvariableop_resource:7
(conv2d_6_biasadd_readvariableop_resource:	9
$dense_matmul_readvariableop_resource:?4
%dense_biasadd_readvariableop_resource:	9
&dense_1_matmul_readvariableop_resource:	|5
'dense_1_biasadd_readvariableop_resource:|
identityขconv2d/BiasAdd/ReadVariableOpขconv2d/Conv2D/ReadVariableOpขconv2d_1/BiasAdd/ReadVariableOpขconv2d_1/Conv2D/ReadVariableOpขconv2d_2/BiasAdd/ReadVariableOpขconv2d_2/Conv2D/ReadVariableOpขconv2d_3/BiasAdd/ReadVariableOpขconv2d_3/Conv2D/ReadVariableOpขconv2d_4/BiasAdd/ReadVariableOpขconv2d_4/Conv2D/ReadVariableOpขconv2d_5/BiasAdd/ReadVariableOpขconv2d_5/Conv2D/ReadVariableOpขconv2d_6/BiasAdd/ReadVariableOpขconv2d_6/Conv2D/ReadVariableOpขdense/BiasAdd/ReadVariableOpขdense/MatMul/ReadVariableOpขdense_1/BiasAdd/ReadVariableOpขdense_1/MatMul/ReadVariableOpข4random_flip/stateful_uniform_full_int/RngReadAndSkipข2random_translation/stateful_uniform/RngReadAndSkipข4random_translation/stateful_uniform_1/RngReadAndSkipข+random_zoom/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ฟ
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskง
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ซ
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :อ
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R 
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ณ
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskช
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:?????????๐ช
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฒ
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskฦ
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ศ
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::ค
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :บ
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ถ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????ด
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????๐์
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:?????????๐w
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ๆ
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????๕
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:?????????๐ใ
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:?????????๐u
random_zoom/ShapeShape4random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:i
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????m
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: t
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????v
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????m
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: f
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ซ
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:e
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?e
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ffฆ?l
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ค
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: e
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ๆ
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:z
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:่
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0|
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0{
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ห
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: ฟ
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????จ
random_zoom/stateful_uniformAddV2$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????Y
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ฟ
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????h
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
:u
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ษ
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: f
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ฒ
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????d
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: h
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ฒ
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:??????????
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskh
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ป
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ด
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????j
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฟ
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    บ
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฟ
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    บ
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????e
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ท
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
random_zoom/transform/ShapeShape4random_flip/stateless_random_flip_left_right/add:z:0*
T0*
_output_shapes
:s
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ซ
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:e
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ๛
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV34random_flip/stateless_random_flip_left_right/add:z:0'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*1
_output_shapes
:?????????๐*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
random_translation/ShapeShapeErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:p
&random_translation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(random_translation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(random_translation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฐ
 random_translation/strided_sliceStridedSlice!random_translation/Shape:output:0/random_translation/strided_slice/stack:output:01random_translation/strided_slice/stack_1:output:01random_translation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
(random_translation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????}
*random_translation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????t
*random_translation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ธ
"random_translation/strided_slice_1StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_1/stack:output:03random_translation/strided_slice_1/stack_1:output:03random_translation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_translation/CastCast+random_translation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: {
(random_translation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????}
*random_translation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????t
*random_translation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ธ
"random_translation/strided_slice_2StridedSlice!random_translation/Shape:output:01random_translation/strided_slice_2/stack:output:03random_translation/strided_slice_2/stack_1:output:03random_translation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
random_translation/Cast_1Cast+random_translation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+random_translation/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ภ
)random_translation/stateful_uniform/shapePack)random_translation/strided_slice:output:04random_translation/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:l
'random_translation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    l
'random_translation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    s
)random_translation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: น
(random_translation/stateful_uniform/ProdProd2random_translation/stateful_uniform/shape:output:02random_translation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: l
*random_translation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
*random_translation/stateful_uniform/Cast_1Cast1random_translation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
2random_translation/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource3random_translation/stateful_uniform/Cast/x:output:0.random_translation/stateful_uniform/Cast_1:y:0*
_output_shapes
:
7random_translation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9random_translation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9random_translation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1random_translation/stateful_uniform/strided_sliceStridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0@random_translation/stateful_uniform/strided_slice/stack:output:0Brandom_translation/stateful_uniform/strided_slice/stack_1:output:0Brandom_translation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskฃ
+random_translation/stateful_uniform/BitcastBitcast:random_translation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
9random_translation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;random_translation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;random_translation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3random_translation/stateful_uniform/strided_slice_1StridedSlice:random_translation/stateful_uniform/RngReadAndSkip:value:0Brandom_translation/stateful_uniform/strided_slice_1/stack:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_translation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ง
-random_translation/stateful_uniform/Bitcast_1Bitcast<random_translation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
@random_translation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :๎
<random_translation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_translation/stateful_uniform/shape:output:06random_translation/stateful_uniform/Bitcast_1:output:04random_translation/stateful_uniform/Bitcast:output:0Irandom_translation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????ณ
'random_translation/stateful_uniform/subSub0random_translation/stateful_uniform/max:output:00random_translation/stateful_uniform/min:output:0*
T0*
_output_shapes
: ิ
'random_translation/stateful_uniform/mulMulErandom_translation/stateful_uniform/StatelessRandomUniformV2:output:0+random_translation/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????ฝ
#random_translation/stateful_uniformAddV2+random_translation/stateful_uniform/mul:z:00random_translation/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????
random_translation/mulMul'random_translation/stateful_uniform:z:0random_translation/Cast:y:0*
T0*'
_output_shapes
:?????????o
-random_translation/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ฤ
+random_translation/stateful_uniform_1/shapePack)random_translation/strided_slice:output:06random_translation/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:n
)random_translation/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *   ฟn
)random_translation/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *   ?u
+random_translation/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ฟ
*random_translation/stateful_uniform_1/ProdProd4random_translation/stateful_uniform_1/shape:output:04random_translation/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: n
,random_translation/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
,random_translation/stateful_uniform_1/Cast_1Cast3random_translation/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ฝ
4random_translation/stateful_uniform_1/RngReadAndSkipRngReadAndSkip;random_translation_stateful_uniform_rngreadandskip_resource5random_translation/stateful_uniform_1/Cast/x:output:00random_translation/stateful_uniform_1/Cast_1:y:03^random_translation/stateful_uniform/RngReadAndSkip*
_output_shapes
:
9random_translation/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;random_translation/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;random_translation/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3random_translation/stateful_uniform_1/strided_sliceStridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Brandom_translation/stateful_uniform_1/strided_slice/stack:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_1:output:0Drandom_translation/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskง
-random_translation/stateful_uniform_1/BitcastBitcast<random_translation/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
;random_translation/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
=random_translation/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=random_translation/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5random_translation/stateful_uniform_1/strided_slice_1StridedSlice<random_translation/stateful_uniform_1/RngReadAndSkip:value:0Drandom_translation/stateful_uniform_1/strided_slice_1/stack:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_1:output:0Frandom_translation/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ซ
/random_translation/stateful_uniform_1/Bitcast_1Bitcast>random_translation/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Brandom_translation/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :๘
>random_translation/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV24random_translation/stateful_uniform_1/shape:output:08random_translation/stateful_uniform_1/Bitcast_1:output:06random_translation/stateful_uniform_1/Bitcast:output:0Krandom_translation/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????น
)random_translation/stateful_uniform_1/subSub2random_translation/stateful_uniform_1/max:output:02random_translation/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: ฺ
)random_translation/stateful_uniform_1/mulMulGrandom_translation/stateful_uniform_1/StatelessRandomUniformV2:output:0-random_translation/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????ร
%random_translation/stateful_uniform_1AddV2-random_translation/stateful_uniform_1/mul:z:02random_translation/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????
random_translation/mul_1Mul)random_translation/stateful_uniform_1:z:0random_translation/Cast_1:y:0*
T0*'
_output_shapes
:?????????`
random_translation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ร
random_translation/concatConcatV2random_translation/mul_1:z:0random_translation/mul:z:0'random_translation/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????}
+random_translation/translation_matrix/ShapeShape"random_translation/concat:output:0*
T0*
_output_shapes
:
9random_translation/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;random_translation/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;random_translation/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3random_translation/translation_matrix/strided_sliceStridedSlice4random_translation/translation_matrix/Shape:output:0Brandom_translation/translation_matrix/strided_slice/stack:output:0Drandom_translation/translation_matrix/strided_slice/stack_1:output:0Drandom_translation/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3random_translation/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ใ
1random_translation/translation_matrix/ones/packedPack<random_translation/translation_matrix/strided_slice:output:0<random_translation/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:u
0random_translation/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
*random_translation/translation_matrix/onesFill:random_translation/translation_matrix/ones/packed:output:09random_translation/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????v
4random_translation/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ๅ
2random_translation/translation_matrix/zeros/packedPack<random_translation/translation_matrix/strided_slice:output:0=random_translation/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1random_translation/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
+random_translation/translation_matrix/zerosFill;random_translation/translation_matrix/zeros/packed:output:0:random_translation/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
;random_translation/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
=random_translation/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
=random_translation/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         อ
5random_translation/translation_matrix/strided_slice_1StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_1/stack:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskข
)random_translation/translation_matrix/NegNeg>random_translation/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????x
6random_translation/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :้
4random_translation/translation_matrix/zeros_1/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:x
3random_translation/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ไ
-random_translation/translation_matrix/zeros_1Fill=random_translation/translation_matrix/zeros_1/packed:output:0<random_translation/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????w
5random_translation/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :็
3random_translation/translation_matrix/ones_1/packedPack<random_translation/translation_matrix/strided_slice:output:0>random_translation/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:w
2random_translation/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?แ
,random_translation/translation_matrix/ones_1Fill<random_translation/translation_matrix/ones_1/packed:output:0;random_translation/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????
;random_translation/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
=random_translation/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
=random_translation/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         อ
5random_translation/translation_matrix/strided_slice_2StridedSlice"random_translation/concat:output:0Drandom_translation/translation_matrix/strided_slice_2/stack:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_1:output:0Frandom_translation/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskค
+random_translation/translation_matrix/Neg_1Neg>random_translation/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????x
6random_translation/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :้
4random_translation/translation_matrix/zeros_2/packedPack<random_translation/translation_matrix/strided_slice:output:0?random_translation/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:x
3random_translation/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ไ
-random_translation/translation_matrix/zeros_2Fill=random_translation/translation_matrix/zeros_2/packed:output:0<random_translation/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????s
1random_translation/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ก
,random_translation/translation_matrix/concatConcatV23random_translation/translation_matrix/ones:output:04random_translation/translation_matrix/zeros:output:0-random_translation/translation_matrix/Neg:y:06random_translation/translation_matrix/zeros_1:output:05random_translation/translation_matrix/ones_1:output:0/random_translation/translation_matrix/Neg_1:y:06random_translation/translation_matrix/zeros_2:output:0:random_translation/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
"random_translation/transform/ShapeShapeErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:z
0random_translation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2random_translation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_translation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฮ
*random_translation/transform/strided_sliceStridedSlice+random_translation/transform/Shape:output:09random_translation/transform/strided_slice/stack:output:0;random_translation/transform/strided_slice/stack_1:output:0;random_translation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:l
'random_translation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ฏ
7random_translation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Erandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:05random_translation/translation_matrix/concat:output:03random_translation/transform/strided_slice:output:00random_translation/transform/fill_value:output:0*1
_output_shapes
:?????????๐*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    น
rescaling/mulMulLrandom_translation/transform/ImageProjectiveTransformV3:transformed_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????๐
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????๐
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ด
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐*
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:?????????๐ช
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*1
_output_shapes
:?????????หธ*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ล
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ *
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ l
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:?????????หธ ฎ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*1
_output_shapes
:?????????ฅ *
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ว
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@l
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ฅ@ญ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:?????????R@*
ksize
*
paddingVALID*
strides

conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0ว
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????R*
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Rl
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:?????????Rญ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:?????????)G*
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ฦ
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)G*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)Gk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:?????????)Gญ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:?????????#*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ฦ
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#k
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:?????????#ญ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*0
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides

conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ฦ
conv2d_6/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
k
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
ญ
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ไ8?
dropout/dropout/MulMul max_pooling2d_6/MaxPool:output:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:?????????e
dropout/dropout/ShapeShape max_pooling2d_6/MaxPool:output:0*
T0*
_output_shapes
:ฅ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬฬ=ว
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? P  
flatten/ReshapeReshapedropout/dropout/Mul_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:?*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	|*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????|h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????|ๆ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip3^random_translation/stateful_uniform/RngReadAndSkip5^random_translation/stateful_uniform_1/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????๐: : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2h
2random_translation/stateful_uniform/RngReadAndSkip2random_translation/stateful_uniform/RngReadAndSkip2l
4random_translation/stateful_uniform_1/RngReadAndSkip4random_translation/stateful_uniform_1/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
๒
?
(__inference_conv2d_6_layer_call_fn_91903

inputs#
unknown:
	unknown_0:	
identityขStatefulPartitionedCallไ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_89938x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????

 
_user_specified_nameinputs
น
K
/__inference_max_pooling2d_4_layer_call_fn_91859

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_89757
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_89866

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????ฅ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????ฅ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????ฅ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????ฅ 
 
_user_specified_nameinputs
n
ฟ
F__inference_random_zoom_layer_call_and_return_conditional_losses_90398

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityขstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:ั
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ffฆ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ถ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฌ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ข
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ห
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๏
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????๐*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????๐h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ฦ

#__inference_signature_wrapper_91377
random_flip_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:?

unknown_14:	

unknown_15:	|

unknown_16:|
identityขStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_89700o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????๐: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:?????????๐
+
_user_specified_namerandom_flip_input
น
K
/__inference_max_pooling2d_5_layer_call_fn_91889

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_89769
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

?
C__inference_conv2d_5_layer_call_and_return_conditional_losses_89920

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????#j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????#w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????#
 
_user_specified_nameinputs
ต
I
-__inference_max_pooling2d_layer_call_fn_91739

inputs
identityู
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_89709
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ศ
^
B__inference_flatten_layer_call_and_return_conditional_losses_89958

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? P  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:??????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_89757

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

๐
__inference__traced_save_92238
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop>
:savev2_sequential_random_flip_statevar_read_readvariableop	>
:savev2_sequential_random_zoom_statevar_read_readvariableop	E
Asavev2_sequential_random_translation_statevar_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop5
1savev2_adam_conv2d_6_kernel_m_read_readvariableop3
/savev2_adam_conv2d_6_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop5
1savev2_adam_conv2d_6_kernel_v_read_readvariableop3
/savev2_adam_conv2d_6_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1ขMergeV2Checkpointsw
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
: ต%
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*?$
valueิ$Bั$CB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH๖
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*
valueBCB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ๏
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop:savev2_sequential_random_flip_statevar_read_readvariableop:savev2_sequential_random_zoom_statevar_read_readvariableopAsavev2_sequential_random_translation_statevar_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop1savev2_adam_conv2d_6_kernel_m_read_readvariableop/savev2_adam_conv2d_6_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop1savev2_adam_conv2d_6_kernel_v_read_readvariableop/savev2_adam_conv2d_6_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Q
dtypesG
E2C				
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

identity_1Identity_1:output:0*ล
_input_shapesณ
ฐ: ::: : : @:@:@::::::::?::	|:|: : : : : :::: : : : ::: : : @:@:@::::::::?::	|:|::: : : @:@:@::::::::?::	|:|: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.	*
(
_output_shapes
::!


_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::'#
!
_output_shapes
:?:!

_output_shapes	
::%!

_output_shapes
:	|: 

_output_shapes
:|:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::  

_output_shapes
::,!(
&
_output_shapes
: : "

_output_shapes
: :,#(
&
_output_shapes
: @: $

_output_shapes
:@:-%)
'
_output_shapes
:@:!&

_output_shapes	
::.'*
(
_output_shapes
::!(

_output_shapes	
::.)*
(
_output_shapes
::!*

_output_shapes	
::.+*
(
_output_shapes
::!,

_output_shapes	
::'-#
!
_output_shapes
:?:!.

_output_shapes	
::%/!

_output_shapes
:	|: 0

_output_shapes
:|:,1(
&
_output_shapes
:: 2

_output_shapes
::,3(
&
_output_shapes
: : 4

_output_shapes
: :,5(
&
_output_shapes
: @: 6

_output_shapes
:@:-7)
'
_output_shapes
:@:!8

_output_shapes	
::.9*
(
_output_shapes
::!:

_output_shapes	
::.;*
(
_output_shapes
::!<

_output_shapes	
::.=*
(
_output_shapes
::!>

_output_shapes	
::'?#
!
_output_shapes
:?:!@

_output_shapes	
::%A!

_output_shapes
:	|: B

_output_shapes
:|:C

_output_shapes
: 

?
C__inference_conv2d_3_layer_call_and_return_conditional_losses_91824

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????R*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????RZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????Rk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????R@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????R@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_89745

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

?
C__inference_conv2d_5_layer_call_and_return_conditional_losses_91884

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????#j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????#w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????#
 
_user_specified_nameinputs
๒
?
(__inference_conv2d_4_layer_call_fn_91843

inputs#
unknown:
	unknown_0:	
identityขStatefulPartitionedCallไ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_89902x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????)G`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????)G: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????)G
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_89769

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
๓

(__inference_conv2d_3_layer_call_fn_91813

inputs"
unknown:@
	unknown_0:	
identityขStatefulPartitionedCallๅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_89884y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????R`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????R@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????R@
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_91744

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
น
K
/__inference_max_pooling2d_3_layer_call_fn_91829

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_89745
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
๓

(__inference_conv2d_2_layer_call_fn_91783

inputs!
unknown: @
	unknown_0:@
identityขStatefulPartitionedCallๅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_89866y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ฅ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????ฅ : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????ฅ 
 
_user_specified_nameinputs
ธ

a
B__inference_dropout_layer_call_and_return_conditional_losses_91951

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ไ8?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬฬ=ฏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
?M
ั
F__inference_random_flip_layer_call_and_return_conditional_losses_91451

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityข(stateful_uniform_full_int/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ฺ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฯ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ๗
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:?????????๐
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๖
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskฎ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ฐ
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :?
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????๕
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????๛
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ฮ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:ๅ
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:๋
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????๐ศ
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:?????????๐k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ย
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????ั
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:?????????๐ฟ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:?????????๐
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:?????????๐q
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

i
M__inference_random_translation_layer_call_and_return_conditional_losses_89807

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

b
F__inference_random_zoom_layer_call_and_return_conditional_losses_89801

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

?
C__inference_conv2d_4_layer_call_and_return_conditional_losses_91854

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)G*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)GY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????)Gj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????)Gw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????)G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????)G
 
_user_specified_nameinputs
n
ฟ
F__inference_random_zoom_layer_call_and_return_conditional_losses_91569

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityขstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:ั
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ffฆ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ถ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฌ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ข
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         า
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ห
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๏
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????๐*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????๐h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_91894

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ใT

E__inference_sequential_layer_call_and_return_conditional_losses_89995

inputs&
conv2d_89831:
conv2d_89833:(
conv2d_1_89849: 
conv2d_1_89851: (
conv2d_2_89867: @
conv2d_2_89869:@)
conv2d_3_89885:@
conv2d_3_89887:	*
conv2d_4_89903:
conv2d_4_89905:	*
conv2d_5_89921:
conv2d_5_89923:	*
conv2d_6_89939:
conv2d_6_89941:	 
dense_89972:?
dense_89974:	 
dense_1_89989:	|
dense_1_89991:|
identityขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCallข conv2d_5/StatefulPartitionedCallข conv2d_6/StatefulPartitionedCallขdense/StatefulPartitionedCallขdense_1/StatefulPartitionedCallส
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_89795่
random_zoom/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_89801๖
"random_translation/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_89807๋
rescaling/PartitionedCallPartitionedCall+random_translation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_89817
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_89831conv2d_89833*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_89830๏
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_89709
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_89849conv2d_1_89851*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_89848๕
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_89721
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_89867conv2d_2_89869*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_89866๔
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????R@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_89733
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_89885conv2d_3_89887*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_89884๔
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_89745
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_89903conv2d_4_89905*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_89902๔
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_89757
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_89921conv2d_5_89923*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_89920๔
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_89769
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_6_89939conv2d_6_89941*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_89938๔
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_89781ใ
dropout/PartitionedCallPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_89950ิ
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_89958?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_89972dense_89974*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_89971
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_89989dense_1_89991*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_89988w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|๛
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????๐: : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ฺ
N
2__inference_random_translation_layer_call_fn_91574

inputs
identityล
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_89807j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ง

๕
@__inference_dense_layer_call_and_return_conditional_losses_89971

inputs3
matmul_readvariableop_resource:?.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขMatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:??????????
 
_user_specified_nameinputs

?
C__inference_conv2d_3_layer_call_and_return_conditional_losses_89884

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????R*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????RZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????Rk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????R@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????R@
 
_user_specified_nameinputs

?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_91764

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????หธ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????หธ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????หธ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????หธ
 
_user_specified_nameinputs

`
'__inference_dropout_layer_call_fn_91934

inputs
identityขStatefulPartitionedCallษ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_90080x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
\
ฅ

E__inference_sequential_layer_call_and_return_conditional_losses_90807
random_flip_input
random_flip_90742:	
random_zoom_90745:	&
random_translation_90748:	&
conv2d_90752:
conv2d_90754:(
conv2d_1_90758: 
conv2d_1_90760: (
conv2d_2_90764: @
conv2d_2_90766:@)
conv2d_3_90770:@
conv2d_3_90772:	*
conv2d_4_90776:
conv2d_4_90778:	*
conv2d_5_90782:
conv2d_5_90784:	*
conv2d_6_90788:
conv2d_6_90790:	 
dense_90796:?
dense_90798:	 
dense_1_90801:	|
dense_1_90803:|
identityขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCallข conv2d_5/StatefulPartitionedCallข conv2d_6/StatefulPartitionedCallขdense/StatefulPartitionedCallขdense_1/StatefulPartitionedCallขdropout/StatefulPartitionedCallข#random_flip/StatefulPartitionedCallข*random_translation/StatefulPartitionedCallข#random_zoom/StatefulPartitionedCall๙
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_90742*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_90469
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_zoom_90745*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_90398ฉ
*random_translation/StatefulPartitionedCallStatefulPartitionedCall,random_zoom/StatefulPartitionedCall:output:0random_translation_90748*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_90283๓
rescaling/PartitionedCallPartitionedCall3random_translation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_89817
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_90752conv2d_90754*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_89830๏
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_89709
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_90758conv2d_1_90760*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_89848๕
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_89721
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_90764conv2d_2_90766*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_89866๔
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????R@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_89733
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_90770conv2d_3_90772*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_89884๔
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_89745
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_90776conv2d_4_90778*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_89902๔
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_89757
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_90782conv2d_5_90784*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_89920๔
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_89769
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_6_90788conv2d_6_90790*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_89938๔
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_89781๓
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_90080?
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_89958?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_90796dense_90798*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_89971
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_90801dense_1_90803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_89988w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall$^random_flip/StatefulPartitionedCall+^random_translation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????๐: : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2X
*random_translation/StatefulPartitionedCall*random_translation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:d `
1
_output_shapes
:?????????๐
+
_user_specified_namerandom_flip_input
น
K
/__inference_max_pooling2d_1_layer_call_fn_91769

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_89721
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ฬ
G
+__inference_random_flip_layer_call_fn_91382

inputs
identityพ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_89795j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

๚
A__inference_conv2d_layer_call_and_return_conditional_losses_89830

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????๐k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????๐w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????๐: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

b
F__inference_random_flip_layer_call_and_return_conditional_losses_89795

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
โ[


E__inference_sequential_layer_call_and_return_conditional_losses_90585

inputs
random_flip_90520:	
random_zoom_90523:	&
random_translation_90526:	&
conv2d_90530:
conv2d_90532:(
conv2d_1_90536: 
conv2d_1_90538: (
conv2d_2_90542: @
conv2d_2_90544:@)
conv2d_3_90548:@
conv2d_3_90550:	*
conv2d_4_90554:
conv2d_4_90556:	*
conv2d_5_90560:
conv2d_5_90562:	*
conv2d_6_90566:
conv2d_6_90568:	 
dense_90574:?
dense_90576:	 
dense_1_90579:	|
dense_1_90581:|
identityขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCallข conv2d_5/StatefulPartitionedCallข conv2d_6/StatefulPartitionedCallขdense/StatefulPartitionedCallขdense_1/StatefulPartitionedCallขdropout/StatefulPartitionedCallข#random_flip/StatefulPartitionedCallข*random_translation/StatefulPartitionedCallข#random_zoom/StatefulPartitionedCall๎
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_90520*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_90469
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_zoom_90523*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_90398ฉ
*random_translation/StatefulPartitionedCallStatefulPartitionedCall,random_zoom/StatefulPartitionedCall:output:0random_translation_90526*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_90283๓
rescaling/PartitionedCallPartitionedCall3random_translation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_89817
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_90530conv2d_90532*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_89830๏
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_89709
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_90536conv2d_1_90538*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_89848๕
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_89721
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_90542conv2d_2_90544*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_89866๔
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????R@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_89733
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_90548conv2d_3_90550*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_89884๔
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_89745
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_90554conv2d_4_90556*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_89902๔
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_89757
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_90560conv2d_5_90562*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_89920๔
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_89769
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_6_90566conv2d_6_90568*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_89938๔
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_89781๓
dropout/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_90080?
flatten/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_89958?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_90574dense_90576*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_89971
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_90579dense_1_90581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_89988w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall$^random_flip/StatefulPartitionedCall+^random_translation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????๐: : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2X
*random_translation/StatefulPartitionedCall*random_translation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
๙
`
B__inference_dropout_layer_call_and_return_conditional_losses_89950

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
๖
`
D__inference_rescaling_layer_call_and_return_conditional_losses_89817

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????๐d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????๐Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ธ

a
B__inference_dropout_layer_call_and_return_conditional_losses_90080

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ไ8?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *อฬฬ=ฏ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ข

๔
B__inference_dense_1_layer_call_and_return_conditional_losses_89988

inputs1
matmul_readvariableop_resource:	|-
biasadd_readvariableop_resource:|
identityขBiasAdd/ReadVariableOpขMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	|*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:|*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????|`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????|w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

?
C__inference_conv2d_6_layer_call_and_return_conditional_losses_91914

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????
j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????

 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_91774

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
๓

(__inference_conv2d_1_layer_call_fn_91753

inputs!
unknown: 
	unknown_0: 
identityขStatefulPartitionedCallๅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_89848y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????หธ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????หธ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????หธ
 
_user_specified_nameinputs
๖
`
D__inference_rescaling_layer_call_and_return_conditional_losses_91714

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????๐d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????๐Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
ฤ

'__inference_dense_1_layer_call_fn_91991

inputs
unknown:	|
	unknown_0:|
identityขStatefulPartitionedCallฺ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_89988o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_89781

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ภ
C
'__inference_dropout_layer_call_fn_91929

inputs
identityน
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_89950i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs

b
F__inference_random_zoom_layer_call_and_return_conditional_losses_91467

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

?
C__inference_conv2d_4_layer_call_and_return_conditional_losses_89902

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)G*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)GY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????)Gj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????)Gw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????)G: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????)G
 
_user_specified_nameinputs
U
?
E__inference_sequential_layer_call_and_return_conditional_losses_90739
random_flip_input&
conv2d_90684:
conv2d_90686:(
conv2d_1_90690: 
conv2d_1_90692: (
conv2d_2_90696: @
conv2d_2_90698:@)
conv2d_3_90702:@
conv2d_3_90704:	*
conv2d_4_90708:
conv2d_4_90710:	*
conv2d_5_90714:
conv2d_5_90716:	*
conv2d_6_90720:
conv2d_6_90722:	 
dense_90728:?
dense_90730:	 
dense_1_90733:	|
dense_1_90735:|
identityขconv2d/StatefulPartitionedCallข conv2d_1/StatefulPartitionedCallข conv2d_2/StatefulPartitionedCallข conv2d_3/StatefulPartitionedCallข conv2d_4/StatefulPartitionedCallข conv2d_5/StatefulPartitionedCallข conv2d_6/StatefulPartitionedCallขdense/StatefulPartitionedCallขdense_1/StatefulPartitionedCallี
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_89795่
random_zoom/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_89801๖
"random_translation/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_89807๋
rescaling/PartitionedCallPartitionedCall+random_translation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_89817
conv2d/StatefulPartitionedCallStatefulPartitionedCall"rescaling/PartitionedCall:output:0conv2d_90684conv2d_90686*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_89830๏
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_89709
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_90690conv2d_1_90692*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????หธ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_89848๕
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_89721
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_90696conv2d_2_90698*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ฅ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_89866๔
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????R@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_89733
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_90702conv2d_3_90704*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_89884๔
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_89745
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_90708conv2d_4_90710*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????)G*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_89902๔
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_89757
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_90714conv2d_5_90716*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_89920๔
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_89769
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_6_90720conv2d_6_90722*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_89938๔
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_89781ใ
dropout/PartitionedCallPartitionedCall(max_pooling2d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_89950ิ
flatten/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_89958?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_90728dense_90730*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_89971
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_90733dense_1_90735*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_89988w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|๛
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????๐: : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:d `
1
_output_shapes
:?????????๐
+
_user_specified_namerandom_flip_input

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_91804

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
u
์
 __inference__wrapped_model_89700
random_flip_inputJ
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:L
2sequential_conv2d_1_conv2d_readvariableop_resource: A
3sequential_conv2d_1_biasadd_readvariableop_resource: L
2sequential_conv2d_2_conv2d_readvariableop_resource: @A
3sequential_conv2d_2_biasadd_readvariableop_resource:@M
2sequential_conv2d_3_conv2d_readvariableop_resource:@B
3sequential_conv2d_3_biasadd_readvariableop_resource:	N
2sequential_conv2d_4_conv2d_readvariableop_resource:B
3sequential_conv2d_4_biasadd_readvariableop_resource:	N
2sequential_conv2d_5_conv2d_readvariableop_resource:B
3sequential_conv2d_5_biasadd_readvariableop_resource:	N
2sequential_conv2d_6_conv2d_readvariableop_resource:B
3sequential_conv2d_6_biasadd_readvariableop_resource:	D
/sequential_dense_matmul_readvariableop_resource:??
0sequential_dense_biasadd_readvariableop_resource:	D
1sequential_dense_1_matmul_readvariableop_resource:	|@
2sequential_dense_1_biasadd_readvariableop_resource:|
identityข(sequential/conv2d/BiasAdd/ReadVariableOpข'sequential/conv2d/Conv2D/ReadVariableOpข*sequential/conv2d_1/BiasAdd/ReadVariableOpข)sequential/conv2d_1/Conv2D/ReadVariableOpข*sequential/conv2d_2/BiasAdd/ReadVariableOpข)sequential/conv2d_2/Conv2D/ReadVariableOpข*sequential/conv2d_3/BiasAdd/ReadVariableOpข)sequential/conv2d_3/Conv2D/ReadVariableOpข*sequential/conv2d_4/BiasAdd/ReadVariableOpข)sequential/conv2d_4/Conv2D/ReadVariableOpข*sequential/conv2d_5/BiasAdd/ReadVariableOpข)sequential/conv2d_5/Conv2D/ReadVariableOpข*sequential/conv2d_6/BiasAdd/ReadVariableOpข)sequential/conv2d_6/Conv2D/ReadVariableOpข'sequential/dense/BiasAdd/ReadVariableOpข&sequential/dense/MatMul/ReadVariableOpข)sequential/dense_1/BiasAdd/ReadVariableOpข(sequential/dense_1/MatMul/ReadVariableOp`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/rescaling/mulMulrandom_flip_input$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????๐ฃ
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????๐?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ี
sequential/conv2d/Conv2DConv2Dsequential/rescaling/add:z:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐*
paddingSAME*
strides

(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ต
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐~
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:?????????๐ภ
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*1
_output_shapes
:?????????หธ*
ksize
*
paddingVALID*
strides
ค
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ๆ
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ *
paddingSAME*
strides

*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ป
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ 
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:?????????หธ ฤ
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*1
_output_shapes
:?????????ฅ *
ksize
*
paddingVALID*
strides
ค
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0่
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@*
paddingSAME*
strides

*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ป
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ฅ@ร
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*0
_output_shapes
:?????????R@*
ksize
*
paddingVALID*
strides
ฅ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0่
sequential/conv2d_3/Conv2DConv2D+sequential/max_pooling2d_2/MaxPool:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????R*
paddingSAME*
strides

*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ป
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????R
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:?????????Rร
"sequential/max_pooling2d_3/MaxPoolMaxPool&sequential/conv2d_3/Relu:activations:0*0
_output_shapes
:?????????)G*
ksize
*
paddingVALID*
strides
ฆ
)sequential/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0็
sequential/conv2d_4/Conv2DConv2D+sequential/max_pooling2d_3/MaxPool:output:01sequential/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)G*
paddingSAME*
strides

*sequential/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0บ
sequential/conv2d_4/BiasAddBiasAdd#sequential/conv2d_4/Conv2D:output:02sequential/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)G
sequential/conv2d_4/ReluRelu$sequential/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:?????????)Gร
"sequential/max_pooling2d_4/MaxPoolMaxPool&sequential/conv2d_4/Relu:activations:0*0
_output_shapes
:?????????#*
ksize
*
paddingVALID*
strides
ฆ
)sequential/conv2d_5/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0็
sequential/conv2d_5/Conv2DConv2D+sequential/max_pooling2d_4/MaxPool:output:01sequential/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#*
paddingSAME*
strides

*sequential/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0บ
sequential/conv2d_5/BiasAddBiasAdd#sequential/conv2d_5/Conv2D:output:02sequential/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#
sequential/conv2d_5/ReluRelu$sequential/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:?????????#ร
"sequential/max_pooling2d_5/MaxPoolMaxPool&sequential/conv2d_5/Relu:activations:0*0
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
ฆ
)sequential/conv2d_6/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0็
sequential/conv2d_6/Conv2DConv2D+sequential/max_pooling2d_5/MaxPool:output:01sequential/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
*
paddingSAME*
strides

*sequential/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0บ
sequential/conv2d_6/BiasAddBiasAdd#sequential/conv2d_6/Conv2D:output:02sequential/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????

sequential/conv2d_6/ReluRelu$sequential/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
ร
"sequential/max_pooling2d_6/MaxPoolMaxPool&sequential/conv2d_6/Relu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides

sequential/dropout/IdentityIdentity+sequential/max_pooling2d_6/MaxPool:output:0*
T0*0
_output_shapes
:?????????i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? P  ข
sequential/flatten/ReshapeReshape$sequential/dropout/Identity:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:??????????
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:?*
dtype0ฉ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ช
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	|*
dtype0ฌ
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0ฏ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????||
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????|s
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????|?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp+^sequential/conv2d_4/BiasAdd/ReadVariableOp*^sequential/conv2d_4/Conv2D/ReadVariableOp+^sequential/conv2d_5/BiasAdd/ReadVariableOp*^sequential/conv2d_5/Conv2D/ReadVariableOp+^sequential/conv2d_6/BiasAdd/ReadVariableOp*^sequential/conv2d_6/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????๐: : : : : : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2X
*sequential/conv2d_4/BiasAdd/ReadVariableOp*sequential/conv2d_4/BiasAdd/ReadVariableOp2V
)sequential/conv2d_4/Conv2D/ReadVariableOp)sequential/conv2d_4/Conv2D/ReadVariableOp2X
*sequential/conv2d_5/BiasAdd/ReadVariableOp*sequential/conv2d_5/BiasAdd/ReadVariableOp2V
)sequential/conv2d_5/Conv2D/ReadVariableOp)sequential/conv2d_5/Conv2D/ReadVariableOp2X
*sequential/conv2d_6/BiasAdd/ReadVariableOp*sequential/conv2d_6/BiasAdd/ReadVariableOp2V
)sequential/conv2d_6/Conv2D/ReadVariableOp)sequential/conv2d_6/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:d `
1
_output_shapes
:?????????๐
+
_user_specified_namerandom_flip_input
ะ

2__inference_random_translation_layer_call_fn_91581

inputs
unknown:	
identityขStatefulPartitionedCall฿
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_random_translation_layer_call_and_return_conditional_losses_90283y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????๐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
?M
ั
F__inference_random_flip_layer_call_and_return_conditional_losses_90469

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityข(stateful_uniform_full_int/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ฺ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฯ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ๗
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:?????????๐
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๖
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskฎ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ฐ
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :?
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????๕
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????๛
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ฮ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:ๅ
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:๋
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????๐ศ
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:?????????๐k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ย
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????ั
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:?????????๐ฟ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:?????????๐
IdentityIdentity(stateless_random_flip_left_right/add:z:0^NoOp*
T0*1
_output_shapes
:?????????๐q
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
๏

&__inference_conv2d_layer_call_fn_91723

inputs!
unknown:
	unknown_0:
identityขStatefulPartitionedCallใ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????๐*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_89830y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????๐`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????๐: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_89709

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ั
๊
M__inference_random_translation_layer_call_and_return_conditional_losses_90283

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityขstateful_uniform/RngReadAndSkipข!stateful_uniform_1/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:ั
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    `
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ถ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฌ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ข
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:?????????\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *   ฟ[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *   ?b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ถ
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฌ
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: ก
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:p
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฐ
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ช
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ข
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฌ
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ฅ
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ๎
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฐ
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ซ
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฎ
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?จ
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ๎
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฐ
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ซ
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :๖
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๏
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ค
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????๐*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????๐
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_91834

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

i
M__inference_random_translation_layer_call_and_return_conditional_losses_91585

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????๐"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????๐:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
น
K
/__inference_max_pooling2d_6_layer_call_fn_91919

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_89781
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ศ
^
B__inference_flatten_layer_call_and_return_conditional_losses_91962

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? P  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:??????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ฒ
C
'__inference_flatten_layer_call_fn_91956

inputs
identityฒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_89958b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs
ั

*__inference_sequential_layer_call_fn_90854

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	

unknown_13:?

unknown_14:	

unknown_15:	|

unknown_16:|
identityขStatefulPartitionedCallด
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????|*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_89995o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????|`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????๐: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

ว)
!__inference__traced_restore_92446
file_prefix8
assignvariableop_conv2d_kernel:,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel: .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel: @.
 assignvariableop_5_conv2d_2_bias:@=
"assignvariableop_6_conv2d_3_kernel:@/
 assignvariableop_7_conv2d_3_bias:	>
"assignvariableop_8_conv2d_4_kernel:/
 assignvariableop_9_conv2d_4_bias:	?
#assignvariableop_10_conv2d_5_kernel:0
!assignvariableop_11_conv2d_5_bias:	?
#assignvariableop_12_conv2d_6_kernel:0
!assignvariableop_13_conv2d_6_bias:	5
 assignvariableop_14_dense_kernel:?-
assignvariableop_15_dense_bias:	5
"assignvariableop_16_dense_1_kernel:	|.
 assignvariableop_17_dense_1_bias:|'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: A
3assignvariableop_23_sequential_random_flip_statevar:	A
3assignvariableop_24_sequential_random_zoom_statevar:	H
:assignvariableop_25_sequential_random_translation_statevar:	#
assignvariableop_26_total: #
assignvariableop_27_count: %
assignvariableop_28_total_1: %
assignvariableop_29_count_1: B
(assignvariableop_30_adam_conv2d_kernel_m:4
&assignvariableop_31_adam_conv2d_bias_m:D
*assignvariableop_32_adam_conv2d_1_kernel_m: 6
(assignvariableop_33_adam_conv2d_1_bias_m: D
*assignvariableop_34_adam_conv2d_2_kernel_m: @6
(assignvariableop_35_adam_conv2d_2_bias_m:@E
*assignvariableop_36_adam_conv2d_3_kernel_m:@7
(assignvariableop_37_adam_conv2d_3_bias_m:	F
*assignvariableop_38_adam_conv2d_4_kernel_m:7
(assignvariableop_39_adam_conv2d_4_bias_m:	F
*assignvariableop_40_adam_conv2d_5_kernel_m:7
(assignvariableop_41_adam_conv2d_5_bias_m:	F
*assignvariableop_42_adam_conv2d_6_kernel_m:7
(assignvariableop_43_adam_conv2d_6_bias_m:	<
'assignvariableop_44_adam_dense_kernel_m:?4
%assignvariableop_45_adam_dense_bias_m:	<
)assignvariableop_46_adam_dense_1_kernel_m:	|5
'assignvariableop_47_adam_dense_1_bias_m:|B
(assignvariableop_48_adam_conv2d_kernel_v:4
&assignvariableop_49_adam_conv2d_bias_v:D
*assignvariableop_50_adam_conv2d_1_kernel_v: 6
(assignvariableop_51_adam_conv2d_1_bias_v: D
*assignvariableop_52_adam_conv2d_2_kernel_v: @6
(assignvariableop_53_adam_conv2d_2_bias_v:@E
*assignvariableop_54_adam_conv2d_3_kernel_v:@7
(assignvariableop_55_adam_conv2d_3_bias_v:	F
*assignvariableop_56_adam_conv2d_4_kernel_v:7
(assignvariableop_57_adam_conv2d_4_bias_v:	F
*assignvariableop_58_adam_conv2d_5_kernel_v:7
(assignvariableop_59_adam_conv2d_5_bias_v:	F
*assignvariableop_60_adam_conv2d_6_kernel_v:7
(assignvariableop_61_adam_conv2d_6_bias_v:	<
'assignvariableop_62_adam_dense_kernel_v:?4
%assignvariableop_63_adam_dense_bias_v:	<
)assignvariableop_64_adam_dense_1_kernel_v:	|5
'assignvariableop_65_adam_dense_1_bias_v:|
identity_67ขAssignVariableOpขAssignVariableOp_1ขAssignVariableOp_10ขAssignVariableOp_11ขAssignVariableOp_12ขAssignVariableOp_13ขAssignVariableOp_14ขAssignVariableOp_15ขAssignVariableOp_16ขAssignVariableOp_17ขAssignVariableOp_18ขAssignVariableOp_19ขAssignVariableOp_2ขAssignVariableOp_20ขAssignVariableOp_21ขAssignVariableOp_22ขAssignVariableOp_23ขAssignVariableOp_24ขAssignVariableOp_25ขAssignVariableOp_26ขAssignVariableOp_27ขAssignVariableOp_28ขAssignVariableOp_29ขAssignVariableOp_3ขAssignVariableOp_30ขAssignVariableOp_31ขAssignVariableOp_32ขAssignVariableOp_33ขAssignVariableOp_34ขAssignVariableOp_35ขAssignVariableOp_36ขAssignVariableOp_37ขAssignVariableOp_38ขAssignVariableOp_39ขAssignVariableOp_4ขAssignVariableOp_40ขAssignVariableOp_41ขAssignVariableOp_42ขAssignVariableOp_43ขAssignVariableOp_44ขAssignVariableOp_45ขAssignVariableOp_46ขAssignVariableOp_47ขAssignVariableOp_48ขAssignVariableOp_49ขAssignVariableOp_5ขAssignVariableOp_50ขAssignVariableOp_51ขAssignVariableOp_52ขAssignVariableOp_53ขAssignVariableOp_54ขAssignVariableOp_55ขAssignVariableOp_56ขAssignVariableOp_57ขAssignVariableOp_58ขAssignVariableOp_59ขAssignVariableOp_6ขAssignVariableOp_60ขAssignVariableOp_61ขAssignVariableOp_62ขAssignVariableOp_63ขAssignVariableOp_64ขAssignVariableOp_65ขAssignVariableOp_7ขAssignVariableOp_8ขAssignVariableOp_9ธ%
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*?$
valueิ$Bั$CB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH๙
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*
valueBCB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ๐
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ข
_output_shapes
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Q
dtypesG
E2C				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv2d_5_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv2d_5_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv2d_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp assignvariableop_14_dense_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_dense_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:ค
AssignVariableOp_23AssignVariableOp3assignvariableop_23_sequential_random_flip_statevarIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:ค
AssignVariableOp_24AssignVariableOp3assignvariableop_24_sequential_random_zoom_statevarIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:ซ
AssignVariableOp_25AssignVariableOp:assignvariableop_25_sequential_random_translation_statevarIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_total_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp&assignvariableop_31_adam_conv2d_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_1_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_1_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_2_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_conv2d_2_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_3_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_conv2d_3_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_4_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_conv2d_4_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_5_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv2d_5_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_6_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv2d_6_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp%assignvariableop_45_adam_dense_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_1_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_1_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_conv2d_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp&assignvariableop_49_adam_conv2d_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_conv2d_1_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_conv2d_1_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_conv2d_2_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_conv2d_2_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_conv2d_3_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_conv2d_3_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_conv2d_4_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_conv2d_4_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_conv2d_5_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_conv2d_5_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_conv2d_6_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_conv2d_6_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp%assignvariableop_63_adam_dense_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_dense_1_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_dense_1_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ๛
Identity_66Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_67IdentityIdentity_66:output:0^NoOp_1*
T0*
_output_shapes
: ่
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_67Identity_67:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ั
๊
M__inference_random_translation_layer_call_and_return_conditional_losses_91701

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityขstateful_uniform/RngReadAndSkipข!stateful_uniform_1/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:ั
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ู
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *    `
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ถ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฌ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ข
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:?????????\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *   ฟ[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *   ?b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ถ
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฌ
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: ก
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????W
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:p
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ฐ
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ช
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ข
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:?????????c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฌ
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ฅ
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ๎
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฐ
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ซ
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฎ
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?จ
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:?????????}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ๎
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ฐ
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ซ
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :๖
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:๏
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ค
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????๐*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????๐
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????๐: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs
๙
`
B__inference_dropout_layer_call_and_return_conditional_losses_91939

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????:X T
0
_output_shapes
:?????????
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_91924

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
๒
?
(__inference_conv2d_5_layer_call_fn_91873

inputs#
unknown:
	unknown_0:	
identityขStatefulPartitionedCallไ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????#*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_89920x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????#: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????#
 
_user_specified_nameinputs
น
K
/__inference_max_pooling2d_2_layer_call_fn_91799

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_89733
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ีa
๚
E__inference_sequential_layer_call_and_return_conditional_losses_90982

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@7
(conv2d_3_biasadd_readvariableop_resource:	C
'conv2d_4_conv2d_readvariableop_resource:7
(conv2d_4_biasadd_readvariableop_resource:	C
'conv2d_5_conv2d_readvariableop_resource:7
(conv2d_5_biasadd_readvariableop_resource:	C
'conv2d_6_conv2d_readvariableop_resource:7
(conv2d_6_biasadd_readvariableop_resource:	9
$dense_matmul_readvariableop_resource:?4
%dense_biasadd_readvariableop_resource:	9
&dense_1_matmul_readvariableop_resource:	|5
'dense_1_biasadd_readvariableop_resource:|
identityขconv2d/BiasAdd/ReadVariableOpขconv2d/Conv2D/ReadVariableOpขconv2d_1/BiasAdd/ReadVariableOpขconv2d_1/Conv2D/ReadVariableOpขconv2d_2/BiasAdd/ReadVariableOpขconv2d_2/Conv2D/ReadVariableOpขconv2d_3/BiasAdd/ReadVariableOpขconv2d_3/Conv2D/ReadVariableOpขconv2d_4/BiasAdd/ReadVariableOpขconv2d_4/Conv2D/ReadVariableOpขconv2d_5/BiasAdd/ReadVariableOpขconv2d_5/Conv2D/ReadVariableOpขconv2d_6/BiasAdd/ReadVariableOpขconv2d_6/Conv2D/ReadVariableOpขdense/BiasAdd/ReadVariableOpขdense/MatMul/ReadVariableOpขdense_1/BiasAdd/ReadVariableOpขdense_1/MatMul/ReadVariableOpU
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    s
rescaling/mulMulinputsrescaling/Cast/x:output:0*
T0*1
_output_shapes
:?????????๐
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????๐
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ด
conv2d/Conv2DConv2Drescaling/add:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐*
paddingSAME*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????๐h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:?????????๐ช
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*1
_output_shapes
:?????????หธ*
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ล
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ *
paddingSAME*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ l
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:?????????หธ ฎ
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*1
_output_shapes
:?????????ฅ *
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ว
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@*
paddingSAME*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ฅ@l
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:?????????ฅ@ญ
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:?????????R@*
ksize
*
paddingVALID*
strides

conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0ว
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????R*
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Rl
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:?????????Rญ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:?????????)G*
ksize
*
paddingVALID*
strides

conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ฦ
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)G*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????)Gk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:?????????)Gญ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:?????????#*
ksize
*
paddingVALID*
strides

conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ฦ
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????#k
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:?????????#ญ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*0
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides

conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ฦ
conv2d_6/Conv2DConv2D max_pooling2d_5/MaxPool:output:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
*
paddingSAME*
strides

conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
k
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
ญ
max_pooling2d_6/MaxPoolMaxPoolconv2d_6/Relu:activations:0*0
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
y
dropout/IdentityIdentity max_pooling2d_6/MaxPool:output:0*
T0*0
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? P  
flatten/ReshapeReshapedropout/Identity:output:0flatten/Const:output:0*
T0*)
_output_shapes
:??????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:?*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	|*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:|*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????|h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????|
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????๐: : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:?????????๐
 
_user_specified_nameinputs

?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_89848

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityขBiasAdd/ReadVariableOpขConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????หธ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:?????????หธ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:?????????หธ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????หธ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:?????????หธ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_89733

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_91864

inputs
identityข
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ศ
serving_defaultด
Y
random_flip_inputD
#serving_default_random_flip_input:0?????????๐;
dense_10
StatefulPartitionedCall:0?????????|tensorflow/serving/predict:า๔

layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer-5
layer_with_weights-1
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer_with_weights-5
layer-14
layer-15
layer_with_weights-6
layer-16
layer-17
layer-18
layer-19
layer_with_weights-7
layer-20
layer_with_weights-8
layer-21
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature"
_tf_keras_sequential
แ
#!_self_saveable_object_factories
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&_random_generator
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
แ
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
._random_generator
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
แ
#1_self_saveable_object_factories
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6_random_generator
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
ส
#9_self_saveable_object_factories
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
เ

@kernel
Abias
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
ส
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
เ

Pkernel
Qbias
#R_self_saveable_object_factories
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
ส
#Y_self_saveable_object_factories
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
เ

`kernel
abias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
ส
#i_self_saveable_object_factories
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
เ

pkernel
qbias
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
ส
#y_self_saveable_object_factories
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
้
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ั
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
้
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ั
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
้
?kernel
	กbias
$ข_self_saveable_object_factories
ฃ	variables
คtrainable_variables
ฅregularization_losses
ฆ	keras_api
ง__call__
+จ&call_and_return_all_conditional_losses"
_tf_keras_layer
ั
$ฉ_self_saveable_object_factories
ช	variables
ซtrainable_variables
ฌregularization_losses
ญ	keras_api
ฎ__call__
+ฏ&call_and_return_all_conditional_losses"
_tf_keras_layer
้
$ฐ_self_saveable_object_factories
ฑ	variables
ฒtrainable_variables
ณregularization_losses
ด	keras_api
ต_random_generator
ถ__call__
+ท&call_and_return_all_conditional_losses"
_tf_keras_layer
ั
$ธ_self_saveable_object_factories
น	variables
บtrainable_variables
ปregularization_losses
ผ	keras_api
ฝ__call__
+พ&call_and_return_all_conditional_losses"
_tf_keras_layer
้
ฟkernel
	ภbias
$ม_self_saveable_object_factories
ย	variables
รtrainable_variables
ฤregularization_losses
ล	keras_api
ฦ__call__
+ว&call_and_return_all_conditional_losses"
_tf_keras_layer
้
ศkernel
	ษbias
$ส_self_saveable_object_factories
ห	variables
ฬtrainable_variables
อregularization_losses
ฮ	keras_api
ฯ__call__
+ะ&call_and_return_all_conditional_losses"
_tf_keras_layer
ิ
	ัiter
าbeta_1
ำbeta_2

ิdecay
ีlearning_rate@m?Am?Pm?Qm?`m฿amเpmแqmโ	mใ	mไ	mๅ	mๆ	?m็	กm่	ฟm้	ภm๊	ศm๋	ษm์@vํAv๎Pv๏Qv๐`v๑av๒pv๓qv๔	v๕	v๖	v๗	v๘	?v๙	กv๚	ฟv๛	ภv?	ศv?	ษv?"
	optimizer
-
ึserving_default"
signature_map
 "
trackable_dict_wrapper
ฐ
@0
A1
P2
Q3
`4
a5
p6
q7
8
9
10
11
?12
ก13
ฟ14
ภ15
ศ16
ษ17"
trackable_list_wrapper
ฐ
@0
A1
P2
Q3
`4
a5
p6
q7
8
9
10
11
?12
ก13
ฟ14
ภ15
ศ16
ษ17"
trackable_list_wrapper
 "
trackable_list_wrapper
ฯ
ืnon_trainable_variables
ุlayers
ูmetrics
 ฺlayer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
๖2๓
*__inference_sequential_layer_call_fn_90034
*__inference_sequential_layer_call_fn_90854
*__inference_sequential_layer_call_fn_90901
*__inference_sequential_layer_call_fn_90677ภ
ทฒณ
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
kwonlydefaultsช 
annotationsช *
 
โ2฿
E__inference_sequential_layer_call_and_return_conditional_losses_90982
E__inference_sequential_layer_call_and_return_conditional_losses_91334
E__inference_sequential_layer_call_and_return_conditional_losses_90739
E__inference_sequential_layer_call_and_return_conditional_losses_90807ภ
ทฒณ
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
kwonlydefaultsช 
annotationsช *
 
ีBา
 __inference__wrapped_model_89700random_flip_input"
ฒ
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
?non_trainable_variables
?layers
?metrics
 ฿layer_regularization_losses
เlayer_metrics
"	variables
#trainable_variables
$regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
/
แ
_generator"
_generic_user_object
2
+__inference_random_flip_layer_call_fn_91382
+__inference_random_flip_layer_call_fn_91389ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
ส2ว
F__inference_random_flip_layer_call_and_return_conditional_losses_91393
F__inference_random_flip_layer_call_and_return_conditional_losses_91451ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
โnon_trainable_variables
ใlayers
ไmetrics
 ๅlayer_regularization_losses
ๆlayer_metrics
*	variables
+trainable_variables
,regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
/
็
_generator"
_generic_user_object
2
+__inference_random_zoom_layer_call_fn_91456
+__inference_random_zoom_layer_call_fn_91463ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
ส2ว
F__inference_random_zoom_layer_call_and_return_conditional_losses_91467
F__inference_random_zoom_layer_call_and_return_conditional_losses_91569ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
่non_trainable_variables
้layers
๊metrics
 ๋layer_regularization_losses
์layer_metrics
2	variables
3trainable_variables
4regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
/
ํ
_generator"
_generic_user_object
ข2
2__inference_random_translation_layer_call_fn_91574
2__inference_random_translation_layer_call_fn_91581ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
ุ2ี
M__inference_random_translation_layer_call_and_return_conditional_losses_91585
M__inference_random_translation_layer_call_and_return_conditional_losses_91701ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
๎non_trainable_variables
๏layers
๐metrics
 ๑layer_regularization_losses
๒layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ำ2ะ
)__inference_rescaling_layer_call_fn_91706ข
ฒ
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
annotationsช *
 
๎2๋
D__inference_rescaling_layer_call_and_return_conditional_losses_91714ข
ฒ
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
annotationsช *
 
':%2conv2d/kernel
:2conv2d/bias
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
๓non_trainable_variables
๔layers
๕metrics
 ๖layer_regularization_losses
๗layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ะ2อ
&__inference_conv2d_layer_call_fn_91723ข
ฒ
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
annotationsช *
 
๋2่
A__inference_conv2d_layer_call_and_return_conditional_losses_91734ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
๘non_trainable_variables
๙layers
๚metrics
 ๛layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
ื2ิ
-__inference_max_pooling2d_layer_call_fn_91739ข
ฒ
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
annotationsช *
 
๒2๏
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_91744ข
ฒ
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
annotationsช *
 
):' 2conv2d_1/kernel
: 2conv2d_1/bias
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
?non_trainable_variables
?layers
?metrics
 layer_regularization_losses
layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
า2ฯ
(__inference_conv2d_1_layer_call_fn_91753ข
ฒ
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
annotationsช *
 
ํ2๊
C__inference_conv2d_1_layer_call_and_return_conditional_losses_91764ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
ู2ึ
/__inference_max_pooling2d_1_layer_call_fn_91769ข
ฒ
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
annotationsช *
 
๔2๑
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_91774ข
ฒ
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
annotationsช *
 
):' @2conv2d_2/kernel
:@2conv2d_2/bias
 "
trackable_dict_wrapper
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
า2ฯ
(__inference_conv2d_2_layer_call_fn_91783ข
ฒ
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
annotationsช *
 
ํ2๊
C__inference_conv2d_2_layer_call_and_return_conditional_losses_91794ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
ู2ึ
/__inference_max_pooling2d_2_layer_call_fn_91799ข
ฒ
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
annotationsช *
 
๔2๑
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_91804ข
ฒ
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
annotationsช *
 
*:(@2conv2d_3/kernel
:2conv2d_3/bias
 "
trackable_dict_wrapper
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
า2ฯ
(__inference_conv2d_3_layer_call_fn_91813ข
ฒ
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
annotationsช *
 
ํ2๊
C__inference_conv2d_3_layer_call_and_return_conditional_losses_91824ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ฒ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ู2ึ
/__inference_max_pooling2d_3_layer_call_fn_91829ข
ฒ
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
annotationsช *
 
๔2๑
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_91834ข
ฒ
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
annotationsช *
 
+:)2conv2d_4/kernel
:2conv2d_4/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
า2ฯ
(__inference_conv2d_4_layer_call_fn_91843ข
ฒ
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
annotationsช *
 
ํ2๊
C__inference_conv2d_4_layer_call_and_return_conditional_losses_91854ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
?non_trainable_variables
กlayers
ขmetrics
 ฃlayer_regularization_losses
คlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ู2ึ
/__inference_max_pooling2d_4_layer_call_fn_91859ข
ฒ
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
annotationsช *
 
๔2๑
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_91864ข
ฒ
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
annotationsช *
 
+:)2conv2d_5/kernel
:2conv2d_5/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ฅnon_trainable_variables
ฆlayers
งmetrics
 จlayer_regularization_losses
ฉlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
า2ฯ
(__inference_conv2d_5_layer_call_fn_91873ข
ฒ
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
annotationsช *
 
ํ2๊
C__inference_conv2d_5_layer_call_and_return_conditional_losses_91884ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ชnon_trainable_variables
ซlayers
ฌmetrics
 ญlayer_regularization_losses
ฎlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ู2ึ
/__inference_max_pooling2d_5_layer_call_fn_91889ข
ฒ
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
annotationsช *
 
๔2๑
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_91894ข
ฒ
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
annotationsช *
 
+:)2conv2d_6/kernel
:2conv2d_6/bias
 "
trackable_dict_wrapper
0
?0
ก1"
trackable_list_wrapper
0
?0
ก1"
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ฏnon_trainable_variables
ฐlayers
ฑmetrics
 ฒlayer_regularization_losses
ณlayer_metrics
ฃ	variables
คtrainable_variables
ฅregularization_losses
ง__call__
+จ&call_and_return_all_conditional_losses
'จ"call_and_return_conditional_losses"
_generic_user_object
า2ฯ
(__inference_conv2d_6_layer_call_fn_91903ข
ฒ
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
annotationsช *
 
ํ2๊
C__inference_conv2d_6_layer_call_and_return_conditional_losses_91914ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ดnon_trainable_variables
ตlayers
ถmetrics
 ทlayer_regularization_losses
ธlayer_metrics
ช	variables
ซtrainable_variables
ฌregularization_losses
ฎ__call__
+ฏ&call_and_return_all_conditional_losses
'ฏ"call_and_return_conditional_losses"
_generic_user_object
ู2ึ
/__inference_max_pooling2d_6_layer_call_fn_91919ข
ฒ
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
annotationsช *
 
๔2๑
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_91924ข
ฒ
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
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
นnon_trainable_variables
บlayers
ปmetrics
 ผlayer_regularization_losses
ฝlayer_metrics
ฑ	variables
ฒtrainable_variables
ณregularization_losses
ถ__call__
+ท&call_and_return_all_conditional_losses
'ท"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
'__inference_dropout_layer_call_fn_91929
'__inference_dropout_layer_call_fn_91934ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
ย2ฟ
B__inference_dropout_layer_call_and_return_conditional_losses_91939
B__inference_dropout_layer_call_and_return_conditional_losses_91951ด
ซฒง
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsช 
annotationsช *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
พnon_trainable_variables
ฟlayers
ภmetrics
 มlayer_regularization_losses
ยlayer_metrics
น	variables
บtrainable_variables
ปregularization_losses
ฝ__call__
+พ&call_and_return_all_conditional_losses
'พ"call_and_return_conditional_losses"
_generic_user_object
ั2ฮ
'__inference_flatten_layer_call_fn_91956ข
ฒ
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
annotationsช *
 
์2้
B__inference_flatten_layer_call_and_return_conditional_losses_91962ข
ฒ
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
annotationsช *
 
!:?2dense/kernel
:2
dense/bias
 "
trackable_dict_wrapper
0
ฟ0
ภ1"
trackable_list_wrapper
0
ฟ0
ภ1"
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
รnon_trainable_variables
ฤlayers
ลmetrics
 ฦlayer_regularization_losses
วlayer_metrics
ย	variables
รtrainable_variables
ฤregularization_losses
ฦ__call__
+ว&call_and_return_all_conditional_losses
'ว"call_and_return_conditional_losses"
_generic_user_object
ฯ2ฬ
%__inference_dense_layer_call_fn_91971ข
ฒ
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
annotationsช *
 
๊2็
@__inference_dense_layer_call_and_return_conditional_losses_91982ข
ฒ
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
annotationsช *
 
!:	|2dense_1/kernel
:|2dense_1/bias
 "
trackable_dict_wrapper
0
ศ0
ษ1"
trackable_list_wrapper
0
ศ0
ษ1"
trackable_list_wrapper
 "
trackable_list_wrapper
ธ
ศnon_trainable_variables
ษlayers
สmetrics
 หlayer_regularization_losses
ฬlayer_metrics
ห	variables
ฬtrainable_variables
อregularization_losses
ฯ__call__
+ะ&call_and_return_all_conditional_losses
'ะ"call_and_return_conditional_losses"
_generic_user_object
ั2ฮ
'__inference_dense_1_layer_call_fn_91991ข
ฒ
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
annotationsช *
 
์2้
B__inference_dense_1_layer_call_and_return_conditional_losses_92002ข
ฒ
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
annotationsช *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ิBั
#__inference_signature_wrapper_91377random_flip_input"
ฒ
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
annotationsช *
 
 "
trackable_list_wrapper
ฦ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
0
อ0
ฮ1"
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
/
ฯ
_state_var"
_generic_user_object
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
/
ะ
_state_var"
_generic_user_object
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
/
ั
_state_var"
_generic_user_object
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
R

าtotal

ำcount
ิ	variables
ี	keras_api"
_tf_keras_metric
c

ึtotal

ืcount
ุ
_fn_kwargs
ู	variables
ฺ	keras_api"
_tf_keras_metric
+:)	2sequential/random_flip/StateVar
+:)	2sequential/random_zoom/StateVar
2:0	2&sequential/random_translation/StateVar
:  (2total
:  (2count
0
า0
ำ1"
trackable_list_wrapper
.
ิ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ึ0
ื1"
trackable_list_wrapper
.
ู	variables"
_generic_user_object
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
.:, 2Adam/conv2d_1/kernel/m
 : 2Adam/conv2d_1/bias/m
.:, @2Adam/conv2d_2/kernel/m
 :@2Adam/conv2d_2/bias/m
/:-@2Adam/conv2d_3/kernel/m
!:2Adam/conv2d_3/bias/m
0:.2Adam/conv2d_4/kernel/m
!:2Adam/conv2d_4/bias/m
0:.2Adam/conv2d_5/kernel/m
!:2Adam/conv2d_5/bias/m
0:.2Adam/conv2d_6/kernel/m
!:2Adam/conv2d_6/bias/m
&:$?2Adam/dense/kernel/m
:2Adam/dense/bias/m
&:$	|2Adam/dense_1/kernel/m
:|2Adam/dense_1/bias/m
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
.:, 2Adam/conv2d_1/kernel/v
 : 2Adam/conv2d_1/bias/v
.:, @2Adam/conv2d_2/kernel/v
 :@2Adam/conv2d_2/bias/v
/:-@2Adam/conv2d_3/kernel/v
!:2Adam/conv2d_3/bias/v
0:.2Adam/conv2d_4/kernel/v
!:2Adam/conv2d_4/bias/v
0:.2Adam/conv2d_5/kernel/v
!:2Adam/conv2d_5/bias/v
0:.2Adam/conv2d_6/kernel/v
!:2Adam/conv2d_6/bias/v
&:$?2Adam/dense/kernel/v
:2Adam/dense/bias/v
&:$	|2Adam/dense_1/kernel/v
:|2Adam/dense_1/bias/vผ
 __inference__wrapped_model_89700@APQ`apq?กฟภศษDขA
:ข7
52
random_flip_input?????????๐
ช "1ช.
,
dense_1!
dense_1?????????|ท
C__inference_conv2d_1_layer_call_and_return_conditional_losses_91764pPQ9ข6
/ข,
*'
inputs?????????หธ
ช "/ข,
%"
0?????????หธ 
 
(__inference_conv2d_1_layer_call_fn_91753cPQ9ข6
/ข,
*'
inputs?????????หธ
ช ""?????????หธ ท
C__inference_conv2d_2_layer_call_and_return_conditional_losses_91794p`a9ข6
/ข,
*'
inputs?????????ฅ 
ช "/ข,
%"
0?????????ฅ@
 
(__inference_conv2d_2_layer_call_fn_91783c`a9ข6
/ข,
*'
inputs?????????ฅ 
ช ""?????????ฅ@ถ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_91824opq8ข5
.ข+
)&
inputs?????????R@
ช "/ข,
%"
0?????????R
 
(__inference_conv2d_3_layer_call_fn_91813bpq8ข5
.ข+
)&
inputs?????????R@
ช ""?????????Rท
C__inference_conv2d_4_layer_call_and_return_conditional_losses_91854p8ข5
.ข+
)&
inputs?????????)G
ช ".ข+
$!
0?????????)G
 
(__inference_conv2d_4_layer_call_fn_91843c8ข5
.ข+
)&
inputs?????????)G
ช "!?????????)Gท
C__inference_conv2d_5_layer_call_and_return_conditional_losses_91884p8ข5
.ข+
)&
inputs?????????#
ช ".ข+
$!
0?????????#
 
(__inference_conv2d_5_layer_call_fn_91873c8ข5
.ข+
)&
inputs?????????#
ช "!?????????#ท
C__inference_conv2d_6_layer_call_and_return_conditional_losses_91914p?ก8ข5
.ข+
)&
inputs?????????

ช ".ข+
$!
0?????????

 
(__inference_conv2d_6_layer_call_fn_91903c?ก8ข5
.ข+
)&
inputs?????????

ช "!?????????
ต
A__inference_conv2d_layer_call_and_return_conditional_losses_91734p@A9ข6
/ข,
*'
inputs?????????๐
ช "/ข,
%"
0?????????๐
 
&__inference_conv2d_layer_call_fn_91723c@A9ข6
/ข,
*'
inputs?????????๐
ช ""?????????๐ฅ
B__inference_dense_1_layer_call_and_return_conditional_losses_92002_ศษ0ข-
&ข#
!
inputs?????????
ช "%ข"

0?????????|
 }
'__inference_dense_1_layer_call_fn_91991Rศษ0ข-
&ข#
!
inputs?????????
ช "?????????|ฅ
@__inference_dense_layer_call_and_return_conditional_losses_91982aฟภ1ข.
'ข$
"
inputs??????????
ช "&ข#

0?????????
 }
%__inference_dense_layer_call_fn_91971Tฟภ1ข.
'ข$
"
inputs??????????
ช "?????????ด
B__inference_dropout_layer_call_and_return_conditional_losses_91939n<ข9
2ข/
)&
inputs?????????
p 
ช ".ข+
$!
0?????????
 ด
B__inference_dropout_layer_call_and_return_conditional_losses_91951n<ข9
2ข/
)&
inputs?????????
p
ช ".ข+
$!
0?????????
 
'__inference_dropout_layer_call_fn_91929a<ข9
2ข/
)&
inputs?????????
p 
ช "!?????????
'__inference_dropout_layer_call_fn_91934a<ข9
2ข/
)&
inputs?????????
p
ช "!?????????ฉ
B__inference_flatten_layer_call_and_return_conditional_losses_91962c8ข5
.ข+
)&
inputs?????????
ช "'ข$

0??????????
 
'__inference_flatten_layer_call_fn_91956V8ข5
.ข+
)&
inputs?????????
ช "??????????ํ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_91774RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ล
/__inference_max_pooling2d_1_layer_call_fn_91769RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????ํ
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_91804RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ล
/__inference_max_pooling2d_2_layer_call_fn_91799RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????ํ
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_91834RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ล
/__inference_max_pooling2d_3_layer_call_fn_91829RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????ํ
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_91864RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ล
/__inference_max_pooling2d_4_layer_call_fn_91859RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????ํ
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_91894RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ล
/__inference_max_pooling2d_5_layer_call_fn_91889RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????ํ
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_91924RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ล
/__inference_max_pooling2d_6_layer_call_fn_91919RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????๋
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_91744RขO
HขE
C@
inputs4????????????????????????????????????
ช "HขE
>;
04????????????????????????????????????
 ร
-__inference_max_pooling2d_layer_call_fn_91739RขO
HขE
C@
inputs4????????????????????????????????????
ช ";84????????????????????????????????????บ
F__inference_random_flip_layer_call_and_return_conditional_losses_91393p=ข:
3ข0
*'
inputs?????????๐
p 
ช "/ข,
%"
0?????????๐
 พ
F__inference_random_flip_layer_call_and_return_conditional_losses_91451tฯ=ข:
3ข0
*'
inputs?????????๐
p
ช "/ข,
%"
0?????????๐
 
+__inference_random_flip_layer_call_fn_91382c=ข:
3ข0
*'
inputs?????????๐
p 
ช ""?????????๐
+__inference_random_flip_layer_call_fn_91389gฯ=ข:
3ข0
*'
inputs?????????๐
p
ช ""?????????๐ม
M__inference_random_translation_layer_call_and_return_conditional_losses_91585p=ข:
3ข0
*'
inputs?????????๐
p 
ช "/ข,
%"
0?????????๐
 ล
M__inference_random_translation_layer_call_and_return_conditional_losses_91701tั=ข:
3ข0
*'
inputs?????????๐
p
ช "/ข,
%"
0?????????๐
 
2__inference_random_translation_layer_call_fn_91574c=ข:
3ข0
*'
inputs?????????๐
p 
ช ""?????????๐
2__inference_random_translation_layer_call_fn_91581gั=ข:
3ข0
*'
inputs?????????๐
p
ช ""?????????๐บ
F__inference_random_zoom_layer_call_and_return_conditional_losses_91467p=ข:
3ข0
*'
inputs?????????๐
p 
ช "/ข,
%"
0?????????๐
 พ
F__inference_random_zoom_layer_call_and_return_conditional_losses_91569tะ=ข:
3ข0
*'
inputs?????????๐
p
ช "/ข,
%"
0?????????๐
 
+__inference_random_zoom_layer_call_fn_91456c=ข:
3ข0
*'
inputs?????????๐
p 
ช ""?????????๐
+__inference_random_zoom_layer_call_fn_91463gะ=ข:
3ข0
*'
inputs?????????๐
p
ช ""?????????๐ด
D__inference_rescaling_layer_call_and_return_conditional_losses_91714l9ข6
/ข,
*'
inputs?????????๐
ช "/ข,
%"
0?????????๐
 
)__inference_rescaling_layer_call_fn_91706_9ข6
/ข,
*'
inputs?????????๐
ช ""?????????๐?
E__inference_sequential_layer_call_and_return_conditional_losses_90739@APQ`apq?กฟภศษLขI
Bข?
52
random_flip_input?????????๐
p 

 
ช "%ข"

0?????????|
 ใ
E__inference_sequential_layer_call_and_return_conditional_losses_90807"ฯะั@APQ`apq?กฟภศษLขI
Bข?
52
random_flip_input?????????๐
p

 
ช "%ข"

0?????????|
 า
E__inference_sequential_layer_call_and_return_conditional_losses_90982@APQ`apq?กฟภศษAข>
7ข4
*'
inputs?????????๐
p 

 
ช "%ข"

0?????????|
 ุ
E__inference_sequential_layer_call_and_return_conditional_losses_91334"ฯะั@APQ`apq?กฟภศษAข>
7ข4
*'
inputs?????????๐
p

 
ช "%ข"

0?????????|
 ต
*__inference_sequential_layer_call_fn_90034@APQ`apq?กฟภศษLขI
Bข?
52
random_flip_input?????????๐
p 

 
ช "?????????|ป
*__inference_sequential_layer_call_fn_90677"ฯะั@APQ`apq?กฟภศษLขI
Bข?
52
random_flip_input?????????๐
p

 
ช "?????????|ฉ
*__inference_sequential_layer_call_fn_90854{@APQ`apq?กฟภศษAข>
7ข4
*'
inputs?????????๐
p 

 
ช "?????????|ฐ
*__inference_sequential_layer_call_fn_90901"ฯะั@APQ`apq?กฟภศษAข>
7ข4
*'
inputs?????????๐
p

 
ช "?????????|ิ
#__inference_signature_wrapper_91377ฌ@APQ`apq?กฟภศษYขV
ข 
OชL
J
random_flip_input52
random_flip_input?????????๐"1ช.
,
dense_1!
dense_1?????????|