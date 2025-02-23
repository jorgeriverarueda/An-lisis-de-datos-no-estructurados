��#
�#�"
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.1-0-g85c8b2a817f8��!
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�6@*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	�6@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�n*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@�n*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�n*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�n*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
�
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*2
shared_name#!simple_rnn/simple_rnn_cell/kernel
�
5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:@@*
dtype0
�
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
�
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0
�
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!simple_rnn/simple_rnn_cell/bias
�
3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes
:@*
dtype0
�
%simple_rnn_1/simple_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*6
shared_name'%simple_rnn_1/simple_rnn_cell_1/kernel
�
9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_1/simple_rnn_cell_1/kernel*
_output_shapes

:@@*
dtype0
�
/simple_rnn_1/simple_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*@
shared_name1/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
�
Csimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel*
_output_shapes

:@@*
dtype0
�
#simple_rnn_1/simple_rnn_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#simple_rnn_1/simple_rnn_cell_1/bias
�
7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell_1/bias*
_output_shapes
:@*
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
�
 RMSprop/embedding/embeddings/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�6@*1
shared_name" RMSprop/embedding/embeddings/rms
�
4RMSprop/embedding/embeddings/rms/Read/ReadVariableOpReadVariableOp RMSprop/embedding/embeddings/rms*
_output_shapes
:	�6@*
dtype0
�
RMSprop/dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�n*)
shared_nameRMSprop/dense/kernel/rms
�
,RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/kernel/rms*
_output_shapes
:	@�n*
dtype0
�
RMSprop/dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�n*'
shared_nameRMSprop/dense/bias/rms
~
*RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/bias/rms*
_output_shapes	
:�n*
dtype0
�
-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*>
shared_name/-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
�
ARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpReadVariableOp-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms*
_output_shapes

:@@*
dtype0
�
7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*H
shared_name97RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
�
KRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms*
_output_shapes

:@@*
dtype0
�
+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+RMSprop/simple_rnn/simple_rnn_cell/bias/rms
�
?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOpReadVariableOp+RMSprop/simple_rnn/simple_rnn_cell/bias/rms*
_output_shapes
:@*
dtype0
�
1RMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*B
shared_name31RMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rms
�
ERMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rms/Read/ReadVariableOpReadVariableOp1RMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rms*
_output_shapes

:@@*
dtype0
�
;RMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*L
shared_name=;RMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rms
�
ORMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp;RMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rms*
_output_shapes

:@@*
dtype0
�
/RMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/RMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rms
�
CRMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rms/Read/ReadVariableOpReadVariableOp/RMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rms*
_output_shapes
:@*
dtype0

NoOpNoOp
�/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�.
value�.B�. B�.
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
 	keras_api
h

!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
�
'iter
	(decay
)learning_rate
*momentum
+rho	rmsi	!rmsj	"rmsk	,rmsl	-rmsm	.rmsn	/rmso	0rmsp	1rmsq
?
0
,1
-2
.3
/4
05
16
!7
"8
 
?
0
,1
-2
.3
/4
05
16
!7
"8
�
2metrics

3layers
4layer_regularization_losses
5non_trainable_variables
6layer_metrics
	variables
regularization_losses
	trainable_variables
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
�
7metrics

8layers
9layer_regularization_losses
:layer_metrics
;non_trainable_variables
	variables
regularization_losses
trainable_variables
~

,kernel
-recurrent_kernel
.bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
 

,0
-1
.2
 

,0
-1
.2
�
@metrics

Alayers
Blayer_regularization_losses
Clayer_metrics
Dnon_trainable_variables
	variables

Estates
regularization_losses
trainable_variables
 
 
 
�
Fmetrics

Glayers
Hlayer_regularization_losses
Ilayer_metrics
Jnon_trainable_variables
	variables
regularization_losses
trainable_variables
~

/kernel
0recurrent_kernel
1bias
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
 

/0
01
12
 

/0
01
12
�
Ometrics

Players
Qlayer_regularization_losses
Rlayer_metrics
Snon_trainable_variables
	variables

Tstates
regularization_losses
trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1
 

!0
"1
�
Umetrics

Vlayers
Wlayer_regularization_losses
Xlayer_metrics
Ynon_trainable_variables
#	variables
$regularization_losses
%trainable_variables
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%simple_rnn_1/simple_rnn_cell_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell_1/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE

Z0
#
0
1
2
3
4
 
 
 
 
 
 
 
 

,0
-1
.2
 

,0
-1
.2
�
[metrics

\layers
]layer_regularization_losses
^layer_metrics
_non_trainable_variables
<	variables
=regularization_losses
>trainable_variables
 

0
 
 
 
 
 
 
 
 
 

/0
01
12
 

/0
01
12
�
`metrics

alayers
blayer_regularization_losses
clayer_metrics
dnon_trainable_variables
K	variables
Lregularization_losses
Mtrainable_variables
 

0
 
 
 
 
 
 
 
 
 
4
	etotal
	fcount
g	variables
h	keras_api
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
e0
f1

g	variables
��
VARIABLE_VALUE RMSprop/embedding/embeddings/rmsXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/dense/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUERMSprop/dense/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE1RMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rmsDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE;RMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rmsDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE/RMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_embedding_inputPlaceholder*'
_output_shapes
:���������
*
dtype0*
shape:���������

�
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddings!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kernel%simple_rnn_1/simple_rnn_cell_1/kernel#simple_rnn_1/simple_rnn_cell_1/bias/simple_rnn_1/simple_rnn_cell_1/recurrent_kerneldense/kernel
dense/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_105004
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOp?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOp3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOp9simple_rnn_1/simple_rnn_cell_1/kernel/Read/ReadVariableOpCsimple_rnn_1/simple_rnn_cell_1/recurrent_kernel/Read/ReadVariableOp7simple_rnn_1/simple_rnn_cell_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp4RMSprop/embedding/embeddings/rms/Read/ReadVariableOp,RMSprop/dense/kernel/rms/Read/ReadVariableOp*RMSprop/dense/bias/rms/Read/ReadVariableOpARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpKRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOp?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOpERMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rms/Read/ReadVariableOpORMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rms/Read/ReadVariableOpCRMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rms/Read/ReadVariableOpConst*&
Tin
2	*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_106949
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rho!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/bias%simple_rnn_1/simple_rnn_cell_1/kernel/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel#simple_rnn_1/simple_rnn_cell_1/biastotalcount RMSprop/embedding/embeddings/rmsRMSprop/dense/kernel/rmsRMSprop/dense/bias/rms-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms+RMSprop/simple_rnn/simple_rnn_cell/bias/rms1RMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rms;RMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rms/RMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rms*%
Tin
2*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_107034�� 
�
�
-__inference_simple_rnn_1_layer_call_fn_106424

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1046412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������
@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�
�
+__inference_simple_rnn_layer_call_fn_105891
inputs_0
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1036602
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�S
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_106165

inputs
mask
2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ExpandDims/dim{

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������
2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:
���������2
transpose_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/BiasAdd�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul_1�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2_2/element_shape�
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2�
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape�
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorq

zeros_like	ZerosLikesimple_rnn_cell/Tanh:y:0*
T0*'
_output_shapes
:���������@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :���������@:���������@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_106084*
condR
while_cond_106083*M
output_shapes<
:: : : : :���������@:���������@: : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm�
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_2�
IdentityIdentitystrided_slice_3:output:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:���������
@:���������
:::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������


_user_specified_namemask
�&
�
A__inference_dense_layer_call_and_return_conditional_losses_106718

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�n*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������
@2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�n2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������
�n2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�n*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�n2	
BiasAddy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Max/reduction_indices�
MaxMaxBiasAdd:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
Maxh
subSubBiasAdd:output:0Max:output:0*
T0*,
_output_shapes
:���������
�n2
subQ
ExpExpsub:z:0*
T0*,
_output_shapes
:���������
�n2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Sum/reduction_indices�
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
Sumk
truedivRealDivExp:y:0Sum:output:0*
T0*,
_output_shapes
:���������
�n2	
truediv�
IdentityIdentitytruediv:z:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������
@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�#
�
while_body_104007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_1_104029_0$
 while_simple_rnn_cell_1_104031_0$
 while_simple_rnn_cell_1_104033_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_1_104029"
while_simple_rnn_cell_1_104031"
while_simple_rnn_cell_1_104033��/while/simple_rnn_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_104029_0 while_simple_rnn_cell_1_104031_0 while_simple_rnn_cell_1_104033_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_10373321
/while/simple_rnn_cell_1/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:10^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_104029 while_simple_rnn_cell_1_104029_0"B
while_simple_rnn_cell_1_104031 while_simple_rnn_cell_1_104031_0"B
while_simple_rnn_cell_1_104033 while_simple_rnn_cell_1_104033_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�D
�	
while_body_106084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shape�
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/MatMul�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/BiasAdd�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_35while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell/MatMul_1�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/add�
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples�

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:���������2

while/Tile�
while/SelectV2SelectV2while/Tile:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:���������@2
while/SelectV2�
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples�
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������2
while/Tile_1�
while/SelectV2_1SelectV2while/Tile_1:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/SelectV2_1�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/SelectV2:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/SelectV2_1:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :���������@:���������@: : : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_106346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_106346___redundant_placeholder04
0while_while_cond_106346___redundant_placeholder14
0while_while_cond_106346___redundant_placeholder24
0while_while_cond_106346___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�B
�
simple_rnn_1_while_body_1051946
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0J
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0K
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceH
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceI
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource��;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp�<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape�
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem�
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp�
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMul�
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd�
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1�
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2*
(simple_rnn_1/while/simple_rnn_cell_1/add�
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh�
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y�
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y�
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1�
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity�
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1�
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2�
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3�
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
simple_rnn_1/while/Identity_4"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"�
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"�
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�D
�	
while_body_105947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shape�
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/MatMul�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/BiasAdd�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_35while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell/MatMul_1�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/add�
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples�

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:���������2

while/Tile�
while/SelectV2SelectV2while/Tile:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:���������@2
while/SelectV2�
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples�
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������2
while/Tile_1�
while/SelectV2_1SelectV2while/Tile_1:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/SelectV2_1�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/SelectV2:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/SelectV2_1:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :���������@:���������@: : : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_103223

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_103206

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_106761

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
�
+__inference_simple_rnn_layer_call_fn_106189

inputs
mask

unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1044972
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:���������
@:���������
:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������


_user_specified_namemask
�n
�
"__inference__traced_restore_107034
file_prefix)
%assignvariableop_embedding_embeddings#
assignvariableop_1_dense_kernel!
assignvariableop_2_dense_bias#
assignvariableop_3_rmsprop_iter$
 assignvariableop_4_rmsprop_decay,
(assignvariableop_5_rmsprop_learning_rate'
#assignvariableop_6_rmsprop_momentum"
assignvariableop_7_rmsprop_rho8
4assignvariableop_8_simple_rnn_simple_rnn_cell_kernelB
>assignvariableop_9_simple_rnn_simple_rnn_cell_recurrent_kernel7
3assignvariableop_10_simple_rnn_simple_rnn_cell_bias=
9assignvariableop_11_simple_rnn_1_simple_rnn_cell_1_kernelG
Cassignvariableop_12_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel;
7assignvariableop_13_simple_rnn_1_simple_rnn_cell_1_bias
assignvariableop_14_total
assignvariableop_15_count8
4assignvariableop_16_rmsprop_embedding_embeddings_rms0
,assignvariableop_17_rmsprop_dense_kernel_rms.
*assignvariableop_18_rmsprop_dense_bias_rmsE
Aassignvariableop_19_rmsprop_simple_rnn_simple_rnn_cell_kernel_rmsO
Kassignvariableop_20_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rmsC
?assignvariableop_21_rmsprop_simple_rnn_simple_rnn_cell_bias_rmsI
Eassignvariableop_22_rmsprop_simple_rnn_1_simple_rnn_cell_1_kernel_rmsS
Oassignvariableop_23_rmsprop_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_rmsG
Cassignvariableop_24_rmsprop_simple_rnn_1_simple_rnn_cell_1_bias_rms
identity_26��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_rmsprop_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp assignvariableop_4_rmsprop_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp(assignvariableop_5_rmsprop_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_rmsprop_momentumIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_rmsprop_rhoIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp4assignvariableop_8_simple_rnn_simple_rnn_cell_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp>assignvariableop_9_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp3assignvariableop_10_simple_rnn_simple_rnn_cell_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_simple_rnn_1_simple_rnn_cell_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpCassignvariableop_12_simple_rnn_1_simple_rnn_cell_1_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp7assignvariableop_13_simple_rnn_1_simple_rnn_cell_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp4assignvariableop_16_rmsprop_embedding_embeddings_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_rmsprop_dense_kernel_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp*assignvariableop_18_rmsprop_dense_bias_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpAassignvariableop_19_rmsprop_simple_rnn_simple_rnn_cell_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpKassignvariableop_20_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp?assignvariableop_21_rmsprop_simple_rnn_simple_rnn_cell_bias_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpEassignvariableop_22_rmsprop_simple_rnn_1_simple_rnn_cell_1_kernel_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpOassignvariableop_23_rmsprop_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOpCassignvariableop_24_rmsprop_simple_rnn_1_simple_rnn_cell_1_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_249
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_25�
Identity_26IdentityIdentity_25:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_26"#
identity_26Identity_26:output:0*y
_input_shapesh
f: :::::::::::::::::::::::::2$
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
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
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
�
e
I__inference_repeat_vector_layer_call_and_return_conditional_losses_103678

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim�

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*4
_output_shapes"
 :������������������2

ExpandDimsc
stackConst*
_output_shapes
:*
dtype0*!
valueB"   
      2
stackx
TileTileExpandDims:output:0stack:output:0*
T0*4
_output_shapes"
 :���������
���������2
Tilen
IdentityIdentityTile:output:0*
T0*4
_output_shapes"
 :���������
���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:������������������:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�S
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_104360

inputs
mask
2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ExpandDims/dim{

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������
2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:
���������2
transpose_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/BiasAdd�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul_1�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2_2/element_shape�
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2�
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape�
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorq

zeros_like	ZerosLikesimple_rnn_cell/Tanh:y:0*
T0*'
_output_shapes
:���������@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :���������@:���������@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_104279*
condR
while_cond_104278*M
output_shapes<
:: : : : :���������@:���������@: : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm�
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_2�
IdentityIdentitystrided_slice_3:output:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:���������
@:���������
:::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������


_user_specified_namemask
�
�
-__inference_simple_rnn_1_layer_call_fn_106670
inputs_0
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1040702
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�
�
+__inference_sequential_layer_call_fn_104971
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1049502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������

)
_user_specified_nameembedding_input
�3
�
while_body_106593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
)sequential_simple_rnn_1_while_cond_103057L
Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counterR
Nsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterations-
)sequential_simple_rnn_1_while_placeholder/
+sequential_simple_rnn_1_while_placeholder_1/
+sequential_simple_rnn_1_while_placeholder_2N
Jsequential_simple_rnn_1_while_less_sequential_simple_rnn_1_strided_slice_1d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_103057___redundant_placeholder0d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_103057___redundant_placeholder1d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_103057___redundant_placeholder2d
`sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_103057___redundant_placeholder3*
&sequential_simple_rnn_1_while_identity
�
"sequential/simple_rnn_1/while/LessLess)sequential_simple_rnn_1_while_placeholderJsequential_simple_rnn_1_while_less_sequential_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential/simple_rnn_1/while/Less�
&sequential/simple_rnn_1/while/IdentityIdentity&sequential/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential/simple_rnn_1/while/Identity"Y
&sequential_simple_rnn_1_while_identity/sequential/simple_rnn_1/while/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�D
�	
while_body_104416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shape�
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/MatMul�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/BiasAdd�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_35while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell/MatMul_1�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/add�
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples�

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:���������2

while/Tile�
while/SelectV2SelectV2while/Tile:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:���������@2
while/SelectV2�
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples�
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������2
while/Tile_1�
while/SelectV2_1SelectV2while/Tile_1:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/SelectV2_1�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/SelectV2:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/SelectV2_1:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :���������@:���������@: : : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_104866
embedding_input
embedding_104840
simple_rnn_104845
simple_rnn_104847
simple_rnn_104849
simple_rnn_1_104853
simple_rnn_1_104855
simple_rnn_1_104857
dense_104860
dense_104862
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_104840*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_1042102#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/y�
embedding/NotEqualNotEqualembedding_inputembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������
2
embedding/NotEqual�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0simple_rnn_104845simple_rnn_104847simple_rnn_104849*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1044972$
"simple_rnn/StatefulPartitionedCall�
repeat_vector/PartitionedCallPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_repeat_vector_layer_call_and_return_conditional_losses_1036782
repeat_vector/PartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall&repeat_vector/PartitionedCall:output:0simple_rnn_1_104853simple_rnn_1_104855simple_rnn_1_104857*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1047532&
$simple_rnn_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_104860dense_104862*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1048202
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:X T
'
_output_shapes
:���������

)
_user_specified_nameembedding_input
�	
�
while_cond_105946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_105946___redundant_placeholder04
0while_while_cond_105946___redundant_placeholder14
0while_while_cond_105946___redundant_placeholder24
0while_while_cond_105946___redundant_placeholder34
0while_while_cond_105946___redundant_placeholder4
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
�	
�
E__inference_embedding_layer_call_and_return_conditional_losses_105638

inputs
embedding_lookup_105632
identity��embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������
2
Cast�
embedding_lookupResourceGatherembedding_lookup_105632Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/105632*+
_output_shapes
:���������
@*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/105632*+
_output_shapes
:���������
@2
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������
@2
embedding_lookup/Identity_1�
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0**
_input_shapes
:���������
:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�3
�
while_body_104687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�S
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_106028

inputs
mask
2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ExpandDims/dim{

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������
2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:
���������2
transpose_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/BiasAdd�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul_1�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2_2/element_shape�
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2�
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape�
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorq

zeros_like	ZerosLikesimple_rnn_cell/Tanh:y:0*
T0*'
_output_shapes
:���������@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :���������@:���������@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_105947*
condR
while_cond_105946*M
output_shapes<
:: : : : :���������@:���������@: : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm�
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_2�
IdentityIdentitystrided_slice_3:output:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:���������
@:���������
:::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������


_user_specified_namemask
�
�
while_cond_105690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_105690___redundant_placeholder04
0while_while_cond_105690___redundant_placeholder14
0while_while_cond_105690___redundant_placeholder24
0while_while_cond_105690___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_104006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_104006___redundant_placeholder04
0while_while_cond_104006___redundant_placeholder14
0while_while_cond_104006___redundant_placeholder24
0while_while_cond_104006___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�O
�
)sequential_simple_rnn_1_while_body_103058L
Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counterR
Nsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterations-
)sequential_simple_rnn_1_while_placeholder/
+sequential_simple_rnn_1_while_placeholder_1/
+sequential_simple_rnn_1_while_placeholder_2K
Gsequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1_0�
�sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0T
Psequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0U
Qsequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0V
Rsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
&sequential_simple_rnn_1_while_identity,
(sequential_simple_rnn_1_while_identity_1,
(sequential_simple_rnn_1_while_identity_2,
(sequential_simple_rnn_1_while_identity_3,
(sequential_simple_rnn_1_while_identity_4I
Esequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1�
�sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorR
Nsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceS
Osequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceT
Psequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource��Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp�Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Osequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2Q
Osequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape�
Asequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0)sequential_simple_rnn_1_while_placeholderXsequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02C
Asequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem�
Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpPsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02G
Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp�
6sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMulHsequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Msequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@28
6sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul�
Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpQsequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02H
Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
7sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd@sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Nsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@29
7sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd�
Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpRsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02I
Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
8sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul+sequential_simple_rnn_1_while_placeholder_2Osequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2:
8sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1�
3sequential/simple_rnn_1/while/simple_rnn_cell_1/addAddV2@sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:0Bsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@25
3sequential/simple_rnn_1/while/simple_rnn_cell_1/add�
4sequential/simple_rnn_1/while/simple_rnn_cell_1/TanhTanh7sequential/simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@26
4sequential/simple_rnn_1/while/simple_rnn_cell_1/Tanh�
Bsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_simple_rnn_1_while_placeholder_1)sequential_simple_rnn_1_while_placeholder8sequential/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02D
Bsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem�
#sequential/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/simple_rnn_1/while/add/y�
!sequential/simple_rnn_1/while/addAddV2)sequential_simple_rnn_1_while_placeholder,sequential/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential/simple_rnn_1/while/add�
%sequential/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential/simple_rnn_1/while/add_1/y�
#sequential/simple_rnn_1/while/add_1AddV2Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counter.sequential/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential/simple_rnn_1/while/add_1�
&sequential/simple_rnn_1/while/IdentityIdentity'sequential/simple_rnn_1/while/add_1:z:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn_1/while/Identity�
(sequential/simple_rnn_1/while/Identity_1IdentityNsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterationsG^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential/simple_rnn_1/while/Identity_1�
(sequential/simple_rnn_1/while/Identity_2Identity%sequential/simple_rnn_1/while/add:z:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential/simple_rnn_1/while/Identity_2�
(sequential/simple_rnn_1/while/Identity_3IdentityRsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential/simple_rnn_1/while/Identity_3�
(sequential/simple_rnn_1/while/Identity_4Identity8sequential/simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0G^sequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpH^sequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2*
(sequential/simple_rnn_1/while/Identity_4"Y
&sequential_simple_rnn_1_while_identity/sequential/simple_rnn_1/while/Identity:output:0"]
(sequential_simple_rnn_1_while_identity_11sequential/simple_rnn_1/while/Identity_1:output:0"]
(sequential_simple_rnn_1_while_identity_21sequential/simple_rnn_1/while/Identity_2:output:0"]
(sequential_simple_rnn_1_while_identity_31sequential/simple_rnn_1/while/Identity_3:output:0"]
(sequential_simple_rnn_1_while_identity_41sequential/simple_rnn_1/while/Identity_4:output:0"�
Esequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1Gsequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1_0"�
Osequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceQsequential_simple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Psequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceRsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Nsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourcePsequential_simple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"�
�sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor�sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2�
Fsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpFsequential/simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2�
Esequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpEsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2�
Gsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpGsequential/simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�	
�
2__inference_simple_rnn_cell_1_layer_call_fn_106837

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_1037332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
�
+__inference_simple_rnn_layer_call_fn_105880
inputs_0
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1035432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�<
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_104070

inputs
simple_rnn_cell_1_103995
simple_rnn_cell_1_103997
simple_rnn_cell_1_103999
identity��)simple_rnn_cell_1/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_103995simple_rnn_cell_1_103997simple_rnn_cell_1_103999*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_1037332+
)simple_rnn_cell_1/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_103995simple_rnn_cell_1_103997simple_rnn_cell_1_103999*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_104007*
condR
while_cond_104006*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_1/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�G
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106413

inputs4
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_106347*
condR
while_cond_106346*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_1�
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������
@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_106823

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�S
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_104497

inputs
mask
2
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1k
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ExpandDims/dim{

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������
2

ExpandDimsy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:
���������2
transpose_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/BiasAdd�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul_1�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time�
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2_2/element_shape�
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
TensorArrayV2_2�
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7TensorArrayUnstack_1/TensorListFromTensor/element_shape�
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02+
)TensorArrayUnstack_1/TensorListFromTensorq

zeros_like	ZerosLikesimple_rnn_cell/Tanh:y:0*
T0*'
_output_shapes
:���������@2

zeros_like
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :���������@:���������@: : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_104416*
condR
while_cond_104415*M
output_shapes<
:: : : : :���������@:���������@: : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_2/perm�
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_2�
IdentityIdentitystrided_slice_3:output:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:���������
@:���������
:::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������


_user_specified_namemask
�
�
+__inference_sequential_layer_call_fn_105605

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1048982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
-__inference_simple_rnn_1_layer_call_fn_106435

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1047532
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������
@:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�H
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106547
inputs_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_106481*
condR
while_cond_106480*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�
�
while_cond_105802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_105802___redundant_placeholder04
0while_while_cond_105802___redundant_placeholder14
0while_while_cond_105802___redundant_placeholder24
0while_while_cond_105802___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�G
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_105757
inputs_02
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/BiasAdd�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul_1�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_105691*
condR
while_cond_105690*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitystrided_slice_3:output:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�	
�
while_cond_106083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_106083___redundant_placeholder04
0while_while_cond_106083___redundant_placeholder14
0while_while_cond_106083___redundant_placeholder24
0while_while_cond_106083___redundant_placeholder34
0while_while_cond_106083___redundant_placeholder4
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
�
�
while_cond_106592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_106592___redundant_placeholder04
0while_while_cond_106592___redundant_placeholder14
0while_while_cond_106592___redundant_placeholder24
0while_while_cond_106592___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�3
�
while_body_106347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
+__inference_sequential_layer_call_fn_104919
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1048982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������

)
_user_specified_nameembedding_input
�"
�
while_body_103480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"
while_simple_rnn_cell_103502_0"
while_simple_rnn_cell_103504_0"
while_simple_rnn_cell_103506_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor 
while_simple_rnn_cell_103502 
while_simple_rnn_cell_103504 
while_simple_rnn_cell_103506��-while/simple_rnn_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_103502_0while_simple_rnn_cell_103504_0while_simple_rnn_cell_103506_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1032062/
-while/simple_rnn_cell/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_103502while_simple_rnn_cell_103502_0">
while_simple_rnn_cell_103504while_simple_rnn_cell_103504_0">
while_simple_rnn_cell_103506while_simple_rnn_cell_103506_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�G
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_105869
inputs_02
.simple_rnn_cell_matmul_readvariableop_resource3
/simple_rnn_cell_biasadd_readvariableop_resource4
0simple_rnn_cell_matmul_1_readvariableop_resource
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02'
%simple_rnn_cell/MatMul/ReadVariableOp�
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul�
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&simple_rnn_cell/BiasAdd/ReadVariableOp�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/BiasAdd�
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell/MatMul_1/ReadVariableOp�
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/MatMul_1�
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/add
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_105803*
condR
while_cond_105802*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitystrided_slice_3:output:0'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
ƣ
�	
!__inference__wrapped_model_103157
embedding_input0
,sequential_embedding_embedding_lookup_102872H
Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceI
Esequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceJ
Fsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resourceL
Hsequential_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceM
Isequential_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceN
Jsequential_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource6
2sequential_dense_tensordot_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource
identity��'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/Tensordot/ReadVariableOp�%sequential/embedding/embedding_lookup�<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�sequential/simple_rnn/while�@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp�?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp�Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp�sequential/simple_rnn_1/while�
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*'
_output_shapes
:���������
2
sequential/embedding/Cast�
%sequential/embedding/embedding_lookupResourceGather,sequential_embedding_embedding_lookup_102872sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@sequential/embedding/embedding_lookup/102872*+
_output_shapes
:���������
@*
dtype02'
%sequential/embedding/embedding_lookup�
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@sequential/embedding/embedding_lookup/102872*+
_output_shapes
:���������
@20
.sequential/embedding/embedding_lookup/Identity�
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������
@22
0sequential/embedding/embedding_lookup/Identity_1�
sequential/embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential/embedding/NotEqual/y�
sequential/embedding/NotEqualNotEqualembedding_input(sequential/embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������
2
sequential/embedding/NotEqual�
sequential/simple_rnn/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential/simple_rnn/Shape�
)sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential/simple_rnn/strided_slice/stack�
+sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/simple_rnn/strided_slice/stack_1�
+sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential/simple_rnn/strided_slice/stack_2�
#sequential/simple_rnn/strided_sliceStridedSlice$sequential/simple_rnn/Shape:output:02sequential/simple_rnn/strided_slice/stack:output:04sequential/simple_rnn/strided_slice/stack_1:output:04sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential/simple_rnn/strided_slice�
!sequential/simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2#
!sequential/simple_rnn/zeros/mul/y�
sequential/simple_rnn/zeros/mulMul,sequential/simple_rnn/strided_slice:output:0*sequential/simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential/simple_rnn/zeros/mul�
"sequential/simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2$
"sequential/simple_rnn/zeros/Less/y�
 sequential/simple_rnn/zeros/LessLess#sequential/simple_rnn/zeros/mul:z:0+sequential/simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential/simple_rnn/zeros/Less�
$sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2&
$sequential/simple_rnn/zeros/packed/1�
"sequential/simple_rnn/zeros/packedPack,sequential/simple_rnn/strided_slice:output:0-sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential/simple_rnn/zeros/packed�
!sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential/simple_rnn/zeros/Const�
sequential/simple_rnn/zerosFill+sequential/simple_rnn/zeros/packed:output:0*sequential/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential/simple_rnn/zeros�
$sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential/simple_rnn/transpose/perm�
sequential/simple_rnn/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0-sequential/simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:
���������@2!
sequential/simple_rnn/transpose�
sequential/simple_rnn/Shape_1Shape#sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
:2
sequential/simple_rnn/Shape_1�
+sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn/strided_slice_1/stack�
-sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_1/stack_1�
-sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_1/stack_2�
%sequential/simple_rnn/strided_slice_1StridedSlice&sequential/simple_rnn/Shape_1:output:04sequential/simple_rnn/strided_slice_1/stack:output:06sequential/simple_rnn/strided_slice_1/stack_1:output:06sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_1�
$sequential/simple_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$sequential/simple_rnn/ExpandDims/dim�
 sequential/simple_rnn/ExpandDims
ExpandDims!sequential/embedding/NotEqual:z:0-sequential/simple_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������
2"
 sequential/simple_rnn/ExpandDims�
&sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/simple_rnn/transpose_1/perm�
!sequential/simple_rnn/transpose_1	Transpose)sequential/simple_rnn/ExpandDims:output:0/sequential/simple_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:
���������2#
!sequential/simple_rnn/transpose_1�
1sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������23
1sequential/simple_rnn/TensorArrayV2/element_shape�
#sequential/simple_rnn/TensorArrayV2TensorListReserve:sequential/simple_rnn/TensorArrayV2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential/simple_rnn/TensorArrayV2�
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2M
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/simple_rnn/transpose:y:0Tsequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor�
+sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn/strided_slice_2/stack�
-sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_2/stack_1�
-sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_2/stack_2�
%sequential/simple_rnn/strided_slice_2StridedSlice#sequential/simple_rnn/transpose:y:04sequential/simple_rnn/strided_slice_2/stack:output:06sequential/simple_rnn/strided_slice_2/stack_1:output:06sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_2�
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpDsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02=
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�
,sequential/simple_rnn/simple_rnn_cell/MatMulMatMul.sequential/simple_rnn/strided_slice_2:output:0Csequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,sequential/simple_rnn/simple_rnn_cell/MatMul�
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02>
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�
-sequential/simple_rnn/simple_rnn_cell/BiasAddBiasAdd6sequential/simple_rnn/simple_rnn_cell/MatMul:product:0Dsequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-sequential/simple_rnn/simple_rnn_cell/BiasAdd�
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02?
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�
.sequential/simple_rnn/simple_rnn_cell/MatMul_1MatMul$sequential/simple_rnn/zeros:output:0Esequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@20
.sequential/simple_rnn/simple_rnn_cell/MatMul_1�
)sequential/simple_rnn/simple_rnn_cell/addAddV26sequential/simple_rnn/simple_rnn_cell/BiasAdd:output:08sequential/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2+
)sequential/simple_rnn/simple_rnn_cell/add�
*sequential/simple_rnn/simple_rnn_cell/TanhTanh-sequential/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2,
*sequential/simple_rnn/simple_rnn_cell/Tanh�
3sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   25
3sequential/simple_rnn/TensorArrayV2_1/element_shape�
%sequential/simple_rnn/TensorArrayV2_1TensorListReserve<sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/simple_rnn/TensorArrayV2_1z
sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/simple_rnn/time�
3sequential/simple_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������25
3sequential/simple_rnn/TensorArrayV2_2/element_shape�
%sequential/simple_rnn/TensorArrayV2_2TensorListReserve<sequential/simple_rnn/TensorArrayV2_2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02'
%sequential/simple_rnn/TensorArrayV2_2�
Msequential/simple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential/simple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape�
?sequential/simple_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor%sequential/simple_rnn/transpose_1:y:0Vsequential/simple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02A
?sequential/simple_rnn/TensorArrayUnstack_1/TensorListFromTensor�
 sequential/simple_rnn/zeros_like	ZerosLike.sequential/simple_rnn/simple_rnn_cell/Tanh:y:0*
T0*'
_output_shapes
:���������@2"
 sequential/simple_rnn/zeros_like�
.sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������20
.sequential/simple_rnn/while/maximum_iterations�
(sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/simple_rnn/while/loop_counter�	
sequential/simple_rnn/whileWhile1sequential/simple_rnn/while/loop_counter:output:07sequential/simple_rnn/while/maximum_iterations:output:0#sequential/simple_rnn/time:output:0.sequential/simple_rnn/TensorArrayV2_1:handle:0$sequential/simple_rnn/zeros_like:y:0$sequential/simple_rnn/zeros:output:0.sequential/simple_rnn/strided_slice_1:output:0Msequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Osequential/simple_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :���������@:���������@: : : : : : *%
_read_only_resource_inputs
	
*3
body+R)
'sequential_simple_rnn_while_body_102931*3
cond+R)
'sequential_simple_rnn_while_cond_102930*M
output_shapes<
:: : : : :���������@:���������@: : : : : : *
parallel_iterations 2
sequential/simple_rnn/while�
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2H
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape�
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/simple_rnn/while:output:3Osequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02:
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStack�
+sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2-
+sequential/simple_rnn/strided_slice_3/stack�
-sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/simple_rnn/strided_slice_3/stack_1�
-sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn/strided_slice_3/stack_2�
%sequential/simple_rnn/strided_slice_3StridedSliceAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04sequential/simple_rnn/strided_slice_3/stack:output:06sequential/simple_rnn/strided_slice_3/stack_1:output:06sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2'
%sequential/simple_rnn/strided_slice_3�
&sequential/simple_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/simple_rnn/transpose_2/perm�
!sequential/simple_rnn/transpose_2	TransposeAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/simple_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
@2#
!sequential/simple_rnn/transpose_2�
'sequential/repeat_vector/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential/repeat_vector/ExpandDims/dim�
#sequential/repeat_vector/ExpandDims
ExpandDims.sequential/simple_rnn/strided_slice_3:output:00sequential/repeat_vector/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������@2%
#sequential/repeat_vector/ExpandDims�
sequential/repeat_vector/stackConst*
_output_shapes
:*
dtype0*!
valueB"   
      2 
sequential/repeat_vector/stack�
sequential/repeat_vector/TileTile,sequential/repeat_vector/ExpandDims:output:0'sequential/repeat_vector/stack:output:0*
T0*+
_output_shapes
:���������
@2
sequential/repeat_vector/Tile�
sequential/simple_rnn_1/ShapeShape&sequential/repeat_vector/Tile:output:0*
T0*
_output_shapes
:2
sequential/simple_rnn_1/Shape�
+sequential/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential/simple_rnn_1/strided_slice/stack�
-sequential/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn_1/strided_slice/stack_1�
-sequential/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential/simple_rnn_1/strided_slice/stack_2�
%sequential/simple_rnn_1/strided_sliceStridedSlice&sequential/simple_rnn_1/Shape:output:04sequential/simple_rnn_1/strided_slice/stack:output:06sequential/simple_rnn_1/strided_slice/stack_1:output:06sequential/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential/simple_rnn_1/strided_slice�
#sequential/simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2%
#sequential/simple_rnn_1/zeros/mul/y�
!sequential/simple_rnn_1/zeros/mulMul.sequential/simple_rnn_1/strided_slice:output:0,sequential/simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential/simple_rnn_1/zeros/mul�
$sequential/simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2&
$sequential/simple_rnn_1/zeros/Less/y�
"sequential/simple_rnn_1/zeros/LessLess%sequential/simple_rnn_1/zeros/mul:z:0-sequential/simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential/simple_rnn_1/zeros/Less�
&sequential/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2(
&sequential/simple_rnn_1/zeros/packed/1�
$sequential/simple_rnn_1/zeros/packedPack.sequential/simple_rnn_1/strided_slice:output:0/sequential/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential/simple_rnn_1/zeros/packed�
#sequential/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential/simple_rnn_1/zeros/Const�
sequential/simple_rnn_1/zerosFill-sequential/simple_rnn_1/zeros/packed:output:0,sequential/simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
sequential/simple_rnn_1/zeros�
&sequential/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential/simple_rnn_1/transpose/perm�
!sequential/simple_rnn_1/transpose	Transpose&sequential/repeat_vector/Tile:output:0/sequential/simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:
���������@2#
!sequential/simple_rnn_1/transpose�
sequential/simple_rnn_1/Shape_1Shape%sequential/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2!
sequential/simple_rnn_1/Shape_1�
-sequential/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/simple_rnn_1/strided_slice_1/stack�
/sequential/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_1/stack_1�
/sequential/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_1/stack_2�
'sequential/simple_rnn_1/strided_slice_1StridedSlice(sequential/simple_rnn_1/Shape_1:output:06sequential/simple_rnn_1/strided_slice_1/stack:output:08sequential/simple_rnn_1/strided_slice_1/stack_1:output:08sequential/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential/simple_rnn_1/strided_slice_1�
3sequential/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������25
3sequential/simple_rnn_1/TensorArrayV2/element_shape�
%sequential/simple_rnn_1/TensorArrayV2TensorListReserve<sequential/simple_rnn_1/TensorArrayV2/element_shape:output:00sequential/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential/simple_rnn_1/TensorArrayV2�
Msequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2O
Msequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape�
?sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential/simple_rnn_1/transpose:y:0Vsequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor�
-sequential/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential/simple_rnn_1/strided_slice_2/stack�
/sequential/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_2/stack_1�
/sequential/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_2/stack_2�
'sequential/simple_rnn_1/strided_slice_2StridedSlice%sequential/simple_rnn_1/transpose:y:06sequential/simple_rnn_1/strided_slice_2/stack:output:08sequential/simple_rnn_1/strided_slice_2/stack_1:output:08sequential/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2)
'sequential/simple_rnn_1/strided_slice_2�
?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpHsequential_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02A
?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp�
0sequential/simple_rnn_1/simple_rnn_cell_1/MatMulMatMul0sequential/simple_rnn_1/strided_slice_2:output:0Gsequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@22
0sequential/simple_rnn_1/simple_rnn_cell_1/MatMul�
@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpIsequential_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
1sequential/simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd:sequential/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0Hsequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@23
1sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd�
Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpJsequential_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02C
Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
2sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMul&sequential/simple_rnn_1/zeros:output:0Isequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@24
2sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1�
-sequential/simple_rnn_1/simple_rnn_cell_1/addAddV2:sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:0<sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2/
-sequential/simple_rnn_1/simple_rnn_cell_1/add�
.sequential/simple_rnn_1/simple_rnn_cell_1/TanhTanh1sequential/simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@20
.sequential/simple_rnn_1/simple_rnn_cell_1/Tanh�
5sequential/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5sequential/simple_rnn_1/TensorArrayV2_1/element_shape�
'sequential/simple_rnn_1/TensorArrayV2_1TensorListReserve>sequential/simple_rnn_1/TensorArrayV2_1/element_shape:output:00sequential/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential/simple_rnn_1/TensorArrayV2_1~
sequential/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/simple_rnn_1/time�
0sequential/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������22
0sequential/simple_rnn_1/while/maximum_iterations�
*sequential/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/simple_rnn_1/while/loop_counter�
sequential/simple_rnn_1/whileWhile3sequential/simple_rnn_1/while/loop_counter:output:09sequential/simple_rnn_1/while/maximum_iterations:output:0%sequential/simple_rnn_1/time:output:00sequential/simple_rnn_1/TensorArrayV2_1:handle:0&sequential/simple_rnn_1/zeros:output:00sequential/simple_rnn_1/strided_slice_1:output:0Osequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hsequential_simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceIsequential_simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceJsequential_simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*5
body-R+
)sequential_simple_rnn_1_while_body_103058*5
cond-R+
)sequential_simple_rnn_1_while_cond_103057*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
sequential/simple_rnn_1/while�
Hsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2J
Hsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape�
:sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack&sequential/simple_rnn_1/while:output:3Qsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02<
:sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack�
-sequential/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2/
-sequential/simple_rnn_1/strided_slice_3/stack�
/sequential/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential/simple_rnn_1/strided_slice_3/stack_1�
/sequential/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential/simple_rnn_1/strided_slice_3/stack_2�
'sequential/simple_rnn_1/strided_slice_3StridedSliceCsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:06sequential/simple_rnn_1/strided_slice_3/stack:output:08sequential/simple_rnn_1/strided_slice_3/stack_1:output:08sequential/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2)
'sequential/simple_rnn_1/strided_slice_3�
(sequential/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential/simple_rnn_1/transpose_1/perm�
#sequential/simple_rnn_1/transpose_1	TransposeCsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:01sequential/simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
@2%
#sequential/simple_rnn_1/transpose_1�
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�n*
dtype02+
)sequential/dense/Tensordot/ReadVariableOp�
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2!
sequential/dense/Tensordot/axes�
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2!
sequential/dense/Tensordot/free�
 sequential/dense/Tensordot/ShapeShape'sequential/simple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/Shape�
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/GatherV2/axis�
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2%
#sequential/dense/Tensordot/GatherV2�
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential/dense/Tensordot/GatherV2_1/axis�
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2'
%sequential/dense/Tensordot/GatherV2_1�
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2"
 sequential/dense/Tensordot/Const�
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2!
sequential/dense/Tensordot/Prod�
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"sequential/dense/Tensordot/Const_1�
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2#
!sequential/dense/Tensordot/Prod_1�
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential/dense/Tensordot/concat/axis�
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2#
!sequential/dense/Tensordot/concat�
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2"
 sequential/dense/Tensordot/stack�
$sequential/dense/Tensordot/transpose	Transpose'sequential/simple_rnn_1/transpose_1:y:0*sequential/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������
@2&
$sequential/dense/Tensordot/transpose�
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2$
"sequential/dense/Tensordot/Reshape�
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n2#
!sequential/dense/Tensordot/MatMul�
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�n2$
"sequential/dense/Tensordot/Const_2�
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential/dense/Tensordot/concat_1/axis�
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2%
#sequential/dense/Tensordot/concat_1�
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������
�n2
sequential/dense/Tensordot�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�n*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp�
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�n2
sequential/dense/BiasAdd�
&sequential/dense/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&sequential/dense/Max/reduction_indices�
sequential/dense/MaxMax!sequential/dense/BiasAdd:output:0/sequential/dense/Max/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
sequential/dense/Max�
sequential/dense/subSub!sequential/dense/BiasAdd:output:0sequential/dense/Max:output:0*
T0*,
_output_shapes
:���������
�n2
sequential/dense/sub�
sequential/dense/ExpExpsequential/dense/sub:z:0*
T0*,
_output_shapes
:���������
�n2
sequential/dense/Exp�
&sequential/dense/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&sequential/dense/Sum/reduction_indices�
sequential/dense/SumSumsequential/dense/Exp:y:0/sequential/dense/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
sequential/dense/Sum�
sequential/dense/truedivRealDivsequential/dense/Exp:y:0sequential/dense/Sum:output:0*
T0*,
_output_shapes
:���������
�n2
sequential/dense/truediv�
IdentityIdentitysequential/dense/truediv:z:0(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp&^sequential/embedding/embedding_lookup=^sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<^sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp>^sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn/whileA^sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp@^sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpB^sequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^sequential/simple_rnn_1/while*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2|
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2z
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2~
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2:
sequential/simple_rnn/whilesequential/simple_rnn/while2�
@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp@sequential/simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2�
?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp?sequential/simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2�
Asequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpAsequential/simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2>
sequential/simple_rnn_1/whilesequential/simple_rnn_1/while:X T
'
_output_shapes
:���������

)
_user_specified_nameembedding_input
�G
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_104641

inputs4
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_104575*
condR
while_cond_104574*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_1�
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������
@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�#
�
while_body_104124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0$
 while_simple_rnn_cell_1_104146_0$
 while_simple_rnn_cell_1_104148_0$
 while_simple_rnn_cell_1_104150_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor"
while_simple_rnn_cell_1_104146"
while_simple_rnn_cell_1_104148"
while_simple_rnn_cell_1_104150��/while/simple_rnn_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
/while/simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_1_104146_0 while_simple_rnn_cell_1_104148_0 while_simple_rnn_cell_1_104150_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_10375021
/while/simple_rnn_cell_1/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations0^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:00^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity8while/simple_rnn_cell_1/StatefulPartitionedCall:output:10^while/simple_rnn_cell_1/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_1_104146 while_simple_rnn_cell_1_104146_0"B
while_simple_rnn_cell_1_104148 while_simple_rnn_cell_1_104148_0"B
while_simple_rnn_cell_1_104150 while_simple_rnn_cell_1_104150_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2b
/while/simple_rnn_cell_1/StatefulPartitionedCall/while/simple_rnn_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_104574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_104574___redundant_placeholder04
0while_while_cond_104574___redundant_placeholder14
0while_while_cond_104574___redundant_placeholder24
0while_while_cond_104574___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�<
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_103543

inputs
simple_rnn_cell_103468
simple_rnn_cell_103470
simple_rnn_cell_103472
identity��'simple_rnn_cell/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_103468simple_rnn_cell_103470simple_rnn_cell_103472*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1032062)
'simple_rnn_cell/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_103468simple_rnn_cell_103470simple_rnn_cell_103472*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_103480*
condR
while_cond_103479*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitystrided_slice_3:output:0(^simple_rnn_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�
{
&__inference_dense_layer_call_fn_106727

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1048202
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������
@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_106744

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
�
while_cond_104686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_104686___redundant_placeholder04
0while_while_cond_104686___redundant_placeholder14
0while_while_cond_104686___redundant_placeholder24
0while_while_cond_104686___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�<
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_103660

inputs
simple_rnn_cell_103585
simple_rnn_cell_103587
simple_rnn_cell_103589
identity��'simple_rnn_cell/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_103585simple_rnn_cell_103587simple_rnn_cell_103589*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1032232)
'simple_rnn_cell/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_103585simple_rnn_cell_103587simple_rnn_cell_103589*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_103597*
condR
while_cond_103596*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitystrided_slice_3:output:0(^simple_rnn_cell/StatefulPartitionedCall^while*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�	
�
while_cond_104278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_104278___redundant_placeholder04
0while_while_cond_104278___redundant_placeholder14
0while_while_cond_104278___redundant_placeholder24
0while_while_cond_104278___redundant_placeholder34
0while_while_cond_104278___redundant_placeholder4
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_105293

inputs%
!embedding_embedding_lookup_105008=
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource>
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource?
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resourceA
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceB
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceC
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource+
'dense_tensordot_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�embedding/embedding_lookup�1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�simple_rnn/while�5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp�4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp�6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp�simple_rnn_1/whileq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������
2
embedding/Cast�
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_105008embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/105008*+
_output_shapes
:���������
@*
dtype02
embedding/embedding_lookup�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/105008*+
_output_shapes
:���������
@2%
#embedding/embedding_lookup/Identity�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������
@2'
%embedding/embedding_lookup/Identity_1q
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/y�
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������
2
embedding/NotEqual�
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape�
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack�
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1�
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2�
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/mul/y�
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/Less/y�
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/packed/1�
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const�
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
simple_rnn/zeros�
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/perm�
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:
���������@2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1�
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack�
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1�
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2�
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1�
simple_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
simple_rnn/ExpandDims/dim�
simple_rnn/ExpandDims
ExpandDimsembedding/NotEqual:z:0"simple_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������
2
simple_rnn/ExpandDims�
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/perm�
simple_rnn/transpose_1	Transposesimple_rnn/ExpandDims:output:0$simple_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:
���������2
simple_rnn/transpose_1�
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&simple_rnn/TensorArrayV2/element_shape�
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2�
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor�
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack�
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1�
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2�
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn/strided_slice_2�
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!simple_rnn/simple_rnn_cell/MatMul�
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"simple_rnn/simple_rnn_cell/BiasAdd�
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#simple_rnn/simple_rnn_cell/MatMul_1�
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
simple_rnn/simple_rnn_cell/add�
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2!
simple_rnn/simple_rnn_cell/Tanh�
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2*
(simple_rnn/TensorArrayV2_1/element_shape�
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time�
(simple_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2*
(simple_rnn/TensorArrayV2_2/element_shape�
simple_rnn/TensorArrayV2_2TensorListReserve1simple_rnn/TensorArrayV2_2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
simple_rnn/TensorArrayV2_2�
Bsimple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2D
Bsimple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape�
4simple_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose_1:y:0Ksimple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type026
4simple_rnn/TensorArrayUnstack_1/TensorListFromTensor�
simple_rnn/zeros_like	ZerosLike#simple_rnn/simple_rnn_cell/Tanh:y:0*
T0*'
_output_shapes
:���������@2
simple_rnn/zeros_like�
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#simple_rnn/while/maximum_iterations�
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counter�
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros_like:y:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsimple_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :���������@:���������@: : : : : : *%
_read_only_resource_inputs
	
*(
body R
simple_rnn_while_body_105067*(
cond R
simple_rnn_while_cond_105066*M
output_shapes<
:: : : : :���������@:���������@: : : : : : *
parallel_iterations 2
simple_rnn/while�
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape�
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack�
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 simple_rnn/strided_slice_3/stack�
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1�
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2�
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn/strided_slice_3�
simple_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_2/perm�
simple_rnn/transpose_2	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
@2
simple_rnn/transpose_2~
repeat_vector/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
repeat_vector/ExpandDims/dim�
repeat_vector/ExpandDims
ExpandDims#simple_rnn/strided_slice_3:output:0%repeat_vector/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������@2
repeat_vector/ExpandDims
repeat_vector/stackConst*
_output_shapes
:*
dtype0*!
valueB"   
      2
repeat_vector/stack�
repeat_vector/TileTile!repeat_vector/ExpandDims:output:0repeat_vector/stack:output:0*
T0*+
_output_shapes
:���������
@2
repeat_vector/Tiles
simple_rnn_1/ShapeShaperepeat_vector/Tile:output:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape�
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack�
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1�
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2�
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slicev
simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_1/zeros/mul/y�
simple_rnn_1/zeros/mulMul#simple_rnn_1/strided_slice:output:0!simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/muly
simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn_1/zeros/Less/y�
simple_rnn_1/zeros/LessLesssimple_rnn_1/zeros/mul:z:0"simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/Less|
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_1/zeros/packed/1�
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_1/zeros/packedy
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_1/zeros/Const�
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
simple_rnn_1/zeros�
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/perm�
simple_rnn_1/transpose	Transposerepeat_vector/Tile:output:0$simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:
���������@2
simple_rnn_1/transposev
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape_1�
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack�
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1�
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2�
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice_1�
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2*
(simple_rnn_1/TensorArrayV2/element_shape�
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2�
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape�
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor�
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_2/stack�
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_1�
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2�
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn_1/strided_slice_2�
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp�
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%simple_rnn_1/simple_rnn_cell_1/MatMul�
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2(
&simple_rnn_1/simple_rnn_cell_1/BiasAdd�
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1�
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2$
"simple_rnn_1/simple_rnn_cell_1/add�
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2%
#simple_rnn_1/simple_rnn_cell_1/Tanh�
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2,
*simple_rnn_1/TensorArrayV2_1/element_shape�
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time�
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2'
%simple_rnn_1/while/maximum_iterations�
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter�
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_1_while_body_105194**
cond"R 
simple_rnn_1_while_cond_105193*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
simple_rnn_1/while�
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape�
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack�
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2$
"simple_rnn_1/strided_slice_3/stack�
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_3/stack_1�
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_3/stack_2�
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn_1/strided_slice_3�
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/perm�
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
@2
simple_rnn_1/transpose_1�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	@�n*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freez
dense/Tensordot/ShapeShapesimple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposesimple_rnn_1/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������
@2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�n2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������
�n2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�n*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�n2
dense/BiasAdd�
dense/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
dense/Max/reduction_indices�
	dense/MaxMaxdense/BiasAdd:output:0$dense/Max/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
	dense/Max�
	dense/subSubdense/BiasAdd:output:0dense/Max:output:0*
T0*,
_output_shapes
:���������
�n2
	dense/subc
	dense/ExpExpdense/sub:z:0*
T0*,
_output_shapes
:���������
�n2
	dense/Exp�
dense/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
dense/Sum/reduction_indices�
	dense/SumSumdense/Exp:y:0$dense/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
	dense/Sum�
dense/truedivRealDivdense/Exp:y:0dense/Sum:output:0*
T0*,
_output_shapes
:���������
�n2
dense/truediv�
IdentityIdentitydense/truediv:z:0^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_103733

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�<
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_104187

inputs
simple_rnn_cell_1_104112
simple_rnn_cell_1_104114
simple_rnn_cell_1_104116
identity��)simple_rnn_cell_1/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
)simple_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_1_104112simple_rnn_cell_1_104114simple_rnn_cell_1_104116*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_1037502+
)simple_rnn_cell_1/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_1_104112simple_rnn_cell_1_104114simple_rnn_cell_1_104116*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_104124*
condR
while_cond_104123*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitytranspose_1:y:0*^simple_rnn_cell_1/StatefulPartitionedCall^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2V
)simple_rnn_cell_1/StatefulPartitionedCall)simple_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������@
 
_user_specified_nameinputs
�H
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106659
inputs_04
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_106593*
condR
while_cond_106592*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������@2
transpose_1�
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_103750

inputs

states"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
'sequential_simple_rnn_while_cond_102930H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2-
)sequential_simple_rnn_while_placeholder_3J
Fsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_102930___redundant_placeholder0`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_102930___redundant_placeholder1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_102930___redundant_placeholder2`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_102930___redundant_placeholder3`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_102930___redundant_placeholder4(
$sequential_simple_rnn_while_identity
�
 sequential/simple_rnn/while/LessLess'sequential_simple_rnn_while_placeholderFsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential/simple_rnn/while/Less�
$sequential/simple_rnn/while/IdentityIdentity$sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential/simple_rnn/while/Identity"U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0*W
_input_shapesF
D: : : : :���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
�
p
*__inference_embedding_layer_call_fn_105645

inputs
unknown
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_1042102
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0**
_input_shapes
:���������
:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
while_cond_106480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_106480___redundant_placeholder04
0while_while_cond_106480___redundant_placeholder14
0while_while_cond_106480___redundant_placeholder24
0while_while_cond_106480___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�2
�
while_body_105803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/MatMul�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/BiasAdd�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell/MatMul_1�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/add�
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�	
�
2__inference_simple_rnn_cell_1_layer_call_fn_106851

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_1037502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_105582

inputs%
!embedding_embedding_lookup_105297=
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource>
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource?
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resourceA
=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resourceB
>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resourceC
?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource+
'dense_tensordot_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�embedding/embedding_lookup�1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�simple_rnn/while�5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp�4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp�6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp�simple_rnn_1/whileq
embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������
2
embedding/Cast�
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_105297embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/105297*+
_output_shapes
:���������
@*
dtype02
embedding/embedding_lookup�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/105297*+
_output_shapes
:���������
@2%
#embedding/embedding_lookup/Identity�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������
@2'
%embedding/embedding_lookup/Identity_1q
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/y�
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������
2
embedding/NotEqual�
simple_rnn/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
simple_rnn/Shape�
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
simple_rnn/strided_slice/stack�
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_1�
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 simple_rnn/strided_slice/stack_2�
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slicer
simple_rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/mul/y�
simple_rnn/zeros/mulMul!simple_rnn/strided_slice:output:0simple_rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/mulu
simple_rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn/zeros/Less/y�
simple_rnn/zeros/LessLesssimple_rnn/zeros/mul:z:0 simple_rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/zeros/Lessx
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn/zeros/packed/1�
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn/zeros/packedu
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn/zeros/Const�
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
simple_rnn/zeros�
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose/perm�
simple_rnn/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0"simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:
���������@2
simple_rnn/transposep
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn/Shape_1�
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_1/stack�
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_1�
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_1/stack_2�
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn/strided_slice_1�
simple_rnn/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
simple_rnn/ExpandDims/dim�
simple_rnn/ExpandDims
ExpandDimsembedding/NotEqual:z:0"simple_rnn/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������
2
simple_rnn/ExpandDims�
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_1/perm�
simple_rnn/transpose_1	Transposesimple_rnn/ExpandDims:output:0$simple_rnn/transpose_1/perm:output:0*
T0
*+
_output_shapes
:
���������2
simple_rnn/transpose_1�
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&simple_rnn/TensorArrayV2/element_shape�
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2�
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2B
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2simple_rnn/TensorArrayUnstack/TensorListFromTensor�
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn/strided_slice_2/stack�
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_1�
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_2/stack_2�
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn/strided_slice_2�
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype022
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�
!simple_rnn/simple_rnn_cell/MatMulMatMul#simple_rnn/strided_slice_2:output:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2#
!simple_rnn/simple_rnn_cell/MatMul�
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2$
"simple_rnn/simple_rnn_cell/BiasAdd�
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype024
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�
#simple_rnn/simple_rnn_cell/MatMul_1MatMulsimple_rnn/zeros:output:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2%
#simple_rnn/simple_rnn_cell/MatMul_1�
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2 
simple_rnn/simple_rnn_cell/add�
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2!
simple_rnn/simple_rnn_cell/Tanh�
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2*
(simple_rnn/TensorArrayV2_1/element_shape�
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn/TensorArrayV2_1d
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/time�
(simple_rnn/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2*
(simple_rnn/TensorArrayV2_2/element_shape�
simple_rnn/TensorArrayV2_2TensorListReserve1simple_rnn/TensorArrayV2_2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type02
simple_rnn/TensorArrayV2_2�
Bsimple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2D
Bsimple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape�
4simple_rnn/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose_1:y:0Ksimple_rnn/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type026
4simple_rnn/TensorArrayUnstack_1/TensorListFromTensor�
simple_rnn/zeros_like	ZerosLike#simple_rnn/simple_rnn_cell/Tanh:y:0*
T0*'
_output_shapes
:���������@2
simple_rnn/zeros_like�
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#simple_rnn/while/maximum_iterations�
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn/while/loop_counter�
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros_like:y:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsimple_rnn/TensorArrayUnstack_1/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :���������@:���������@: : : : : : *%
_read_only_resource_inputs
	
*(
body R
simple_rnn_while_body_105356*(
cond R
simple_rnn_while_cond_105355*M
output_shapes<
:: : : : :���������@:���������@: : : : : : *
parallel_iterations 2
simple_rnn/while�
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2=
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape�
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02/
-simple_rnn/TensorArrayV2Stack/TensorListStack�
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 simple_rnn/strided_slice_3/stack�
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn/strided_slice_3/stack_1�
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn/strided_slice_3/stack_2�
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn/strided_slice_3�
simple_rnn/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn/transpose_2/perm�
simple_rnn/transpose_2	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
@2
simple_rnn/transpose_2~
repeat_vector/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
repeat_vector/ExpandDims/dim�
repeat_vector/ExpandDims
ExpandDims#simple_rnn/strided_slice_3:output:0%repeat_vector/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������@2
repeat_vector/ExpandDims
repeat_vector/stackConst*
_output_shapes
:*
dtype0*!
valueB"   
      2
repeat_vector/stack�
repeat_vector/TileTile!repeat_vector/ExpandDims:output:0repeat_vector/stack:output:0*
T0*+
_output_shapes
:���������
@2
repeat_vector/Tiles
simple_rnn_1/ShapeShaperepeat_vector/Tile:output:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape�
 simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 simple_rnn_1/strided_slice/stack�
"simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_1�
"simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"simple_rnn_1/strided_slice/stack_2�
simple_rnn_1/strided_sliceStridedSlicesimple_rnn_1/Shape:output:0)simple_rnn_1/strided_slice/stack:output:0+simple_rnn_1/strided_slice/stack_1:output:0+simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slicev
simple_rnn_1/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_1/zeros/mul/y�
simple_rnn_1/zeros/mulMul#simple_rnn_1/strided_slice:output:0!simple_rnn_1/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/muly
simple_rnn_1/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
simple_rnn_1/zeros/Less/y�
simple_rnn_1/zeros/LessLesssimple_rnn_1/zeros/mul:z:0"simple_rnn_1/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/zeros/Less|
simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
simple_rnn_1/zeros/packed/1�
simple_rnn_1/zeros/packedPack#simple_rnn_1/strided_slice:output:0$simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
simple_rnn_1/zeros/packedy
simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
simple_rnn_1/zeros/Const�
simple_rnn_1/zerosFill"simple_rnn_1/zeros/packed:output:0!simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
simple_rnn_1/zeros�
simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose/perm�
simple_rnn_1/transpose	Transposerepeat_vector/Tile:output:0$simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:
���������@2
simple_rnn_1/transposev
simple_rnn_1/Shape_1Shapesimple_rnn_1/transpose:y:0*
T0*
_output_shapes
:2
simple_rnn_1/Shape_1�
"simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_1/stack�
$simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_1�
$simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_1/stack_2�
simple_rnn_1/strided_slice_1StridedSlicesimple_rnn_1/Shape_1:output:0+simple_rnn_1/strided_slice_1/stack:output:0-simple_rnn_1/strided_slice_1/stack_1:output:0-simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
simple_rnn_1/strided_slice_1�
(simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2*
(simple_rnn_1/TensorArrayV2/element_shape�
simple_rnn_1/TensorArrayV2TensorListReserve1simple_rnn_1/TensorArrayV2/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2�
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2D
Bsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape�
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_1/transpose:y:0Ksimple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4simple_rnn_1/TensorArrayUnstack/TensorListFromTensor�
"simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"simple_rnn_1/strided_slice_2/stack�
$simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_1�
$simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_2/stack_2�
simple_rnn_1/strided_slice_2StridedSlicesimple_rnn_1/transpose:y:0+simple_rnn_1/strided_slice_2/stack:output:0-simple_rnn_1/strided_slice_2/stack_1:output:0-simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn_1/strided_slice_2�
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype026
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp�
%simple_rnn_1/simple_rnn_cell_1/MatMulMatMul%simple_rnn_1/strided_slice_2:output:0<simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2'
%simple_rnn_1/simple_rnn_cell_1/MatMul�
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
&simple_rnn_1/simple_rnn_cell_1/BiasAddBiasAdd/simple_rnn_1/simple_rnn_cell_1/MatMul:product:0=simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2(
&simple_rnn_1/simple_rnn_cell_1/BiasAdd�
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype028
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
'simple_rnn_1/simple_rnn_cell_1/MatMul_1MatMulsimple_rnn_1/zeros:output:0>simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2)
'simple_rnn_1/simple_rnn_cell_1/MatMul_1�
"simple_rnn_1/simple_rnn_cell_1/addAddV2/simple_rnn_1/simple_rnn_cell_1/BiasAdd:output:01simple_rnn_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2$
"simple_rnn_1/simple_rnn_cell_1/add�
#simple_rnn_1/simple_rnn_cell_1/TanhTanh&simple_rnn_1/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2%
#simple_rnn_1/simple_rnn_cell_1/Tanh�
*simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2,
*simple_rnn_1/TensorArrayV2_1/element_shape�
simple_rnn_1/TensorArrayV2_1TensorListReserve3simple_rnn_1/TensorArrayV2_1/element_shape:output:0%simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
simple_rnn_1/TensorArrayV2_1h
simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
simple_rnn_1/time�
%simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2'
%simple_rnn_1/while/maximum_iterations�
simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
simple_rnn_1/while/loop_counter�
simple_rnn_1/whileWhile(simple_rnn_1/while/loop_counter:output:0.simple_rnn_1/while/maximum_iterations:output:0simple_rnn_1/time:output:0%simple_rnn_1/TensorArrayV2_1:handle:0simple_rnn_1/zeros:output:0%simple_rnn_1/strided_slice_1:output:0Dsimple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_1_simple_rnn_cell_1_matmul_readvariableop_resource>simple_rnn_1_simple_rnn_cell_1_biasadd_readvariableop_resource?simple_rnn_1_simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	**
body"R 
simple_rnn_1_while_body_105483**
cond"R 
simple_rnn_1_while_cond_105482*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
simple_rnn_1/while�
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2?
=simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape�
/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_1/while:output:3Fsimple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype021
/simple_rnn_1/TensorArrayV2Stack/TensorListStack�
"simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2$
"simple_rnn_1/strided_slice_3/stack�
$simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$simple_rnn_1/strided_slice_3/stack_1�
$simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$simple_rnn_1/strided_slice_3/stack_2�
simple_rnn_1/strided_slice_3StridedSlice8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_1/strided_slice_3/stack:output:0-simple_rnn_1/strided_slice_3/stack_1:output:0-simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
simple_rnn_1/strided_slice_3�
simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
simple_rnn_1/transpose_1/perm�
simple_rnn_1/transpose_1	Transpose8simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
@2
simple_rnn_1/transpose_1�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	@�n*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freez
dense/Tensordot/ShapeShapesimple_rnn_1/transpose_1:y:0*
T0*
_output_shapes
:2
dense/Tensordot/Shape�
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis�
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2�
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis�
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const�
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1�
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis�
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack�
dense/Tensordot/transpose	Transposesimple_rnn_1/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������
@2
dense/Tensordot/transpose�
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense/Tensordot/Reshape�
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�n2
dense/Tensordot/Const_2�
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis�
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������
�n2
dense/Tensordot�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�n*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�n2
dense/BiasAdd�
dense/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
dense/Max/reduction_indices�
	dense/MaxMaxdense/BiasAdd:output:0$dense/Max/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
	dense/Max�
	dense/subSubdense/BiasAdd:output:0dense/Max:output:0*
T0*,
_output_shapes
:���������
�n2
	dense/subc
	dense/ExpExpdense/sub:z:0*
T0*,
_output_shapes
:���������
�n2
	dense/Exp�
dense/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
dense/Sum/reduction_indices�
	dense/SumSumdense/Exp:y:0$dense/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
	dense/Sum�
dense/truedivRealDivdense/Exp:y:0dense/Sum:output:0*
T0*,
_output_shapes
:���������
�n2
dense/truediv�
IdentityIdentitydense/truediv:z:0^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^embedding/embedding_lookup2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while6^simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5^simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp7^simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp^simple_rnn_1/while*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2n
5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp5simple_rnn_1/simple_rnn_cell_1/BiasAdd/ReadVariableOp2l
4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp4simple_rnn_1/simple_rnn_cell_1/MatMul/ReadVariableOp2p
6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp6simple_rnn_1/simple_rnn_cell_1/MatMul_1/ReadVariableOp2(
simple_rnn_1/whilesimple_rnn_1/while:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�3
�
while_body_106481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
simple_rnn_while_cond_1053552
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_2"
simple_rnn_while_placeholder_34
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_105355___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_105355___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_105355___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_105355___redundant_placeholder3J
Fsimple_rnn_while_simple_rnn_while_cond_105355___redundant_placeholder4
simple_rnn_while_identity
�
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*W
_input_shapesF
D: : : : :���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
�
J
.__inference_repeat_vector_layer_call_fn_103684

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :���������
���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_repeat_vector_layer_call_and_return_conditional_losses_1036782
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :���������
���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:������������������:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�3
�
while_body_106235
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�>
�
__inference__traced_save_106949
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop@
<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopJ
Fsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop>
:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableopD
@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopN
Jsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop?
;savev2_rmsprop_embedding_embeddings_rms_read_readvariableop7
3savev2_rmsprop_dense_kernel_rms_read_readvariableop5
1savev2_rmsprop_dense_bias_rms_read_readvariableopL
Hsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopV
Rsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopJ
Fsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableopP
Lsavev2_rmsprop_simple_rnn_1_simple_rnn_cell_1_kernel_rms_read_readvariableopZ
Vsavev2_rmsprop_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_rms_read_readvariableopN
Jsavev2_rmsprop_simple_rnn_1_simple_rnn_cell_1_bias_rms_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/4/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/5/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopFsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop@savev2_simple_rnn_1_simple_rnn_cell_1_kernel_read_readvariableopJsavev2_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_read_readvariableop>savev2_simple_rnn_1_simple_rnn_cell_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop;savev2_rmsprop_embedding_embeddings_rms_read_readvariableop3savev2_rmsprop_dense_kernel_rms_read_readvariableop1savev2_rmsprop_dense_bias_rms_read_readvariableopHsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopRsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopFsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableopLsavev2_rmsprop_simple_rnn_1_simple_rnn_cell_1_kernel_rms_read_readvariableopVsavev2_rmsprop_simple_rnn_1_simple_rnn_cell_1_recurrent_kernel_rms_read_readvariableopJsavev2_rmsprop_simple_rnn_1_simple_rnn_cell_1_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�6@:	@�n:�n: : : : : :@@:@@:@:@@:@@:@: : :	�6@:	@�n:�n:@@:@@:@:@@:@@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�6@:%!

_output_shapes
:	@�n:!

_output_shapes	
:�n:
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
: :

_output_shapes
: :$	 

_output_shapes

:@@:$
 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�6@:%!

_output_shapes
:	@�n:!

_output_shapes	
:�n:$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:

_output_shapes
: 
�
�
+__inference_sequential_layer_call_fn_105628

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1049502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
0__inference_simple_rnn_cell_layer_call_fn_106775

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1032062
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
�
while_cond_103596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_103596___redundant_placeholder04
0while_while_cond_103596___redundant_placeholder14
0while_while_cond_103596___redundant_placeholder24
0while_while_cond_103596___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�	
�
while_cond_104415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_104415___redundant_placeholder04
0while_while_cond_104415___redundant_placeholder14
0while_while_cond_104415___redundant_placeholder24
0while_while_cond_104415___redundant_placeholder34
0while_while_cond_104415___redundant_placeholder4
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*W
_input_shapesF
D: : : : :���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
�
�
$__inference_signature_wrapper_105004
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_1031572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������

)
_user_specified_nameembedding_input
�

�
simple_rnn_1_while_cond_1054826
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105482___redundant_placeholder0N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105482___redundant_placeholder1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105482___redundant_placeholder2N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105482___redundant_placeholder3
simple_rnn_1_while_identity
�
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less�
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_106234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_106234___redundant_placeholder04
0while_while_cond_106234___redundant_placeholder14
0while_while_cond_106234___redundant_placeholder24
0while_while_cond_106234___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�U
�
simple_rnn_while_body_1053562
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_2"
simple_rnn_while_placeholder_31
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0q
msimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0E
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0F
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0G
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4
simple_rnn_while_identity_5/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensoro
ksimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensorC
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceD
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceE
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource��7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItem�
Dsimple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2F
Dsimple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape�
6simple_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemmsimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0simple_rnn_while_placeholderMsimple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
28
6simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem�
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2)
'simple_rnn/while/simple_rnn_cell/MatMul�
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2*
(simple_rnn/while/simple_rnn_cell/BiasAdd�
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_3@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2+
)simple_rnn/while/simple_rnn_cell/MatMul_1�
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2&
$simple_rnn/while/simple_rnn_cell/add�
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2'
%simple_rnn/while/simple_rnn_cell/Tanh�
simple_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2!
simple_rnn/while/Tile/multiples�
simple_rnn/while/TileTile=simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0(simple_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:���������2
simple_rnn/while/Tile�
simple_rnn/while/SelectV2SelectV2simple_rnn/while/Tile:output:0)simple_rnn/while/simple_rnn_cell/Tanh:y:0simple_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@2
simple_rnn/while/SelectV2�
!simple_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2#
!simple_rnn/while/Tile_1/multiples�
simple_rnn/while/Tile_1Tile=simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0*simple_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������2
simple_rnn/while/Tile_1�
simple_rnn/while/SelectV2_1SelectV2 simple_rnn/while/Tile_1:output:0)simple_rnn/while/simple_rnn_cell/Tanh:y:0simple_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@2
simple_rnn/while/SelectV2_1�
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder"simple_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y�
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y�
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1�
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity�
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1�
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2�
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3�
simple_rnn/while/Identity_4Identity"simple_rnn/while/SelectV2:output:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
simple_rnn/while/Identity_4�
simple_rnn/while/Identity_5Identity$simple_rnn/while/SelectV2_1:output:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
simple_rnn/while/Identity_5"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"C
simple_rnn_while_identity_5$simple_rnn/while/Identity_5:output:0"�
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"�
ksimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensormsimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :���������@:���������@: : : :::2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_104950

inputs
embedding_104924
simple_rnn_104929
simple_rnn_104931
simple_rnn_104933
simple_rnn_1_104937
simple_rnn_1_104939
simple_rnn_1_104941
dense_104944
dense_104946
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_104924*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_1042102#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/y�
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������
2
embedding/NotEqual�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0simple_rnn_104929simple_rnn_104931simple_rnn_104933*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1044972$
"simple_rnn/StatefulPartitionedCall�
repeat_vector/PartitionedCallPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_repeat_vector_layer_call_and_return_conditional_losses_1036782
repeat_vector/PartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall&repeat_vector/PartitionedCall:output:0simple_rnn_1_104937simple_rnn_1_104939simple_rnn_1_104941*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1047532&
$simple_rnn_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_104944dense_104946*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1048202
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
E__inference_embedding_layer_call_and_return_conditional_losses_104210

inputs
embedding_lookup_104204
identity��embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������
2
Cast�
embedding_lookupResourceGatherembedding_lookup_104204Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/104204*+
_output_shapes
:���������
@*
dtype02
embedding_lookup�
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/104204*+
_output_shapes
:���������
@2
embedding_lookup/Identity�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������
@2
embedding_lookup/Identity_1�
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0**
_input_shapes
:���������
:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_104837
embedding_input
embedding_104219
simple_rnn_104522
simple_rnn_104524
simple_rnn_104526
simple_rnn_1_104776
simple_rnn_1_104778
simple_rnn_1_104780
dense_104831
dense_104833
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_104219*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_1042102#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/y�
embedding/NotEqualNotEqualembedding_inputembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������
2
embedding/NotEqual�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0simple_rnn_104522simple_rnn_104524simple_rnn_104526*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1043602$
"simple_rnn/StatefulPartitionedCall�
repeat_vector/PartitionedCallPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_repeat_vector_layer_call_and_return_conditional_losses_1036782
repeat_vector/PartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall&repeat_vector/PartitionedCall:output:0simple_rnn_1_104776simple_rnn_1_104778simple_rnn_1_104780*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1046412&
$simple_rnn_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_104831dense_104833*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1048202
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:X T
'
_output_shapes
:���������

)
_user_specified_nameembedding_input
�
�
while_cond_104123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_104123___redundant_placeholder04
0while_while_cond_104123___redundant_placeholder14
0while_while_cond_104123___redundant_placeholder24
0while_while_cond_104123___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�U
�
simple_rnn_while_body_1050672
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_2"
simple_rnn_while_placeholder_31
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0q
msimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0E
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0F
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0G
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4
simple_rnn_while_identity_5/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensoro
ksimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensorC
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceD
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceE
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource��7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2D
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype026
4simple_rnn/while/TensorArrayV2Read/TensorListGetItem�
Dsimple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2F
Dsimple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape�
6simple_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemmsimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0simple_rnn_while_placeholderMsimple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
28
6simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem�
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype028
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�
'simple_rnn/while/simple_rnn_cell/MatMulMatMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2)
'simple_rnn/while/simple_rnn_cell/MatMul�
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype029
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2*
(simple_rnn/while/simple_rnn_cell/BiasAdd�
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02:
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMulsimple_rnn_while_placeholder_3@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2+
)simple_rnn/while/simple_rnn_cell/MatMul_1�
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2&
$simple_rnn/while/simple_rnn_cell/add�
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2'
%simple_rnn/while/simple_rnn_cell/Tanh�
simple_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2!
simple_rnn/while/Tile/multiples�
simple_rnn/while/TileTile=simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0(simple_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:���������2
simple_rnn/while/Tile�
simple_rnn/while/SelectV2SelectV2simple_rnn/while/Tile:output:0)simple_rnn/while/simple_rnn_cell/Tanh:y:0simple_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@2
simple_rnn/while/SelectV2�
!simple_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2#
!simple_rnn/while/Tile_1/multiples�
simple_rnn/while/Tile_1Tile=simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:0*simple_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������2
simple_rnn/while/Tile_1�
simple_rnn/while/SelectV2_1SelectV2 simple_rnn/while/Tile_1:output:0)simple_rnn/while/simple_rnn_cell/Tanh:y:0simple_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@2
simple_rnn/while/SelectV2_1�
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder"simple_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype027
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemr
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add/y�
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/addv
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn/while/add_1/y�
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn/while/add_1�
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity�
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_1�
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_2�
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn/while/Identity_3�
simple_rnn/while/Identity_4Identity"simple_rnn/while/SelectV2:output:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
simple_rnn/while/Identity_4�
simple_rnn/while/Identity_5Identity$simple_rnn/while/SelectV2_1:output:08^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
simple_rnn/while/Identity_5"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"C
simple_rnn_while_identity_5$simple_rnn/while/Identity_5:output:0"�
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"�
ksimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensormsimple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :���������@:���������@: : : :::2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_simple_rnn_1_layer_call_fn_106681
inputs_0
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1041872
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :������������������@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������@:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������@
"
_user_specified_name
inputs/0
�2
�
while_body_105691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/MatMul�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/BiasAdd�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell/MatMul_1�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/add�
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�G
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106301

inputs4
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_106235*
condR
while_cond_106234*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_1�
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������
@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�
�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_106806

inputs
states_0"
matmul_readvariableop_resource#
biasadd_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAdd�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2

MatMul_1k
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
addO
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@2
Tanh�
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1IdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�3
�
while_body_104575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0<
8while_simple_rnn_cell_1_matmul_readvariableop_resource_0=
9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0>
:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor:
6while_simple_rnn_cell_1_matmul_readvariableop_resource;
7while_simple_rnn_cell_1_biasadd_readvariableop_resource<
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource��.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_1/MatMul/ReadVariableOp�/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell_1/MatMul/ReadVariableOp�
while/simple_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell_1/MatMul�
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype020
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
while/simple_rnn_cell_1/BiasAddBiasAdd(while/simple_rnn_cell_1/MatMul:product:06while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
while/simple_rnn_cell_1/BiasAdd�
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype021
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
 while/simple_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2"
 while/simple_rnn_cell_1/MatMul_1�
while/simple_rnn_cell_1/addAddV2(while/simple_rnn_cell_1/BiasAdd:output:0*while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/add�
while/simple_rnn_cell_1/TanhTanhwhile/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell_1/Tanh�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity while/simple_rnn_cell_1/Tanh:y:0/^while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_1/MatMul/ReadVariableOp0^while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_1_biasadd_readvariableop_resource9while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_1_matmul_1_readvariableop_resource:while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_1_matmul_readvariableop_resource8while_simple_rnn_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2`
.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp.while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_1/MatMul/ReadVariableOp-while/simple_rnn_cell_1/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�

�
simple_rnn_1_while_cond_1051936
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_28
4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105193___redundant_placeholder0N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105193___redundant_placeholder1N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105193___redundant_placeholder2N
Jsimple_rnn_1_while_simple_rnn_1_while_cond_105193___redundant_placeholder3
simple_rnn_1_while_identity
�
simple_rnn_1/while/LessLesssimple_rnn_1_while_placeholder4simple_rnn_1_while_less_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn_1/while/Less�
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn_1/while/Identity"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_103597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0"
while_simple_rnn_cell_103619_0"
while_simple_rnn_cell_103621_0"
while_simple_rnn_cell_103623_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor 
while_simple_rnn_cell_103619 
while_simple_rnn_cell_103621 
while_simple_rnn_cell_103623��-while/simple_rnn_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_103619_0while_simple_rnn_cell_103621_0while_simple_rnn_cell_103623_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1032232/
-while/simple_rnn_cell/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1.^while/simple_rnn_cell/StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2
while/Identity_4")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_103619while_simple_rnn_cell_103619_0">
while_simple_rnn_cell_103621while_simple_rnn_cell_103621_0">
while_simple_rnn_cell_103623while_simple_rnn_cell_103623_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�G
�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_104753

inputs4
0simple_rnn_cell_1_matmul_readvariableop_resource5
1simple_rnn_cell_1_biasadd_readvariableop_resource6
2simple_rnn_cell_1_matmul_1_readvariableop_resource
identity��(simple_rnn_cell_1/BiasAdd/ReadVariableOp�'simple_rnn_cell_1/MatMul/ReadVariableOp�)simple_rnn_cell_1/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
���������@2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_2�
'simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'simple_rnn_cell_1/MatMul/ReadVariableOp�
simple_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul�
(simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(simple_rnn_cell_1/BiasAdd/ReadVariableOp�
simple_rnn_cell_1/BiasAddBiasAdd"simple_rnn_cell_1/MatMul:product:00simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/BiasAdd�
)simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype02+
)simple_rnn_cell_1/MatMul_1/ReadVariableOp�
simple_rnn_cell_1/MatMul_1MatMulzeros:output:01simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/MatMul_1�
simple_rnn_cell_1/addAddV2"simple_rnn_cell_1/BiasAdd:output:0$simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/add�
simple_rnn_cell_1/TanhTanhsimple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2
simple_rnn_cell_1/Tanh�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_1_matmul_readvariableop_resource1simple_rnn_cell_1_biasadd_readvariableop_resource2simple_rnn_cell_1_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_104687*
condR
while_cond_104686*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
���������@*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������
@2
transpose_1�
IdentityIdentitytranspose_1:y:0)^simple_rnn_cell_1/BiasAdd/ReadVariableOp(^simple_rnn_cell_1/MatMul/ReadVariableOp*^simple_rnn_cell_1/MatMul_1/ReadVariableOp^while*
T0*+
_output_shapes
:���������
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������
@:::2T
(simple_rnn_cell_1/BiasAdd/ReadVariableOp(simple_rnn_cell_1/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_1/MatMul/ReadVariableOp'simple_rnn_cell_1/MatMul/ReadVariableOp2V
)simple_rnn_cell_1/MatMul_1/ReadVariableOp)simple_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�D
�	
while_body_104279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0:
6while_simple_rnn_cell_matmul_readvariableop_resource_0;
7while_simple_rnn_cell_biasadd_readvariableop_resource_0<
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor8
4while_simple_rnn_cell_matmul_readvariableop_resource9
5while_simple_rnn_cell_biasadd_readvariableop_resource:
6while_simple_rnn_cell_matmul_1_readvariableop_resource��,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2;
9while/TensorArrayV2Read_1/TensorListGetItem/element_shape�
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
2-
+while/TensorArrayV2Read_1/TensorListGetItem�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02-
+while/simple_rnn_cell/MatMul/ReadVariableOp�
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/MatMul�
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02.
,while/simple_rnn_cell/BiasAdd/ReadVariableOp�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/BiasAdd�
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02/
-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_35while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
while/simple_rnn_cell/MatMul_1�
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/add�
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@2
while/simple_rnn_cell/Tanh}
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile/multiples�

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:���������2

while/Tile�
while/SelectV2SelectV2while/Tile:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_2*
T0*'
_output_shapes
:���������@2
while/SelectV2�
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2
while/Tile_1/multiples�
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������2
while/Tile_1�
while/SelectV2_1SelectV2while/Tile_1:output:0while/simple_rnn_cell/Tanh:y:0while_placeholder_3*
T0*'
_output_shapes
:���������@2
while/SelectV2_1�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/SelectV2:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_4�
while/Identity_5Identitywhile/SelectV2_1:output:0-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :���������@:���������@: : : :::2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
simple_rnn_while_cond_1050662
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_2"
simple_rnn_while_placeholder_34
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_105066___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_105066___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_105066___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_105066___redundant_placeholder3J
Fsimple_rnn_while_simple_rnn_while_cond_105066___redundant_placeholder4
simple_rnn_while_identity
�
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: 2
simple_rnn/while/Less~
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
simple_rnn/while/Identity"?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*W
_input_shapesF
D: : : : :���������@:���������@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
�&
�
A__inference_dense_layer_call_and_return_conditional_losses_104820

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�n*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������
@2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�n2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������
�n2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�n*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�n2	
BiasAddy
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Max/reduction_indices�
MaxMaxBiasAdd:output:0Max/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
Maxh
subSubBiasAdd:output:0Max:output:0*
T0*,
_output_shapes
:���������
�n2
subQ
ExpExpsub:z:0*
T0*,
_output_shapes
:���������
�n2
Expy
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Sum/reduction_indices�
SumSumExp:y:0Sum/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(2
Sumk
truedivRealDivExp:y:0Sum:output:0*
T0*,
_output_shapes
:���������
�n2	
truediv�
IdentityIdentitytruediv:z:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������
@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs
�f
�
'sequential_simple_rnn_while_body_102931H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2-
)sequential_simple_rnn_while_placeholder_3G
Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0�
sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0�
�sequential_simple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0P
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0Q
Msequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0R
Nsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0(
$sequential_simple_rnn_while_identity*
&sequential_simple_rnn_while_identity_1*
&sequential_simple_rnn_while_identity_2*
&sequential_simple_rnn_while_identity_3*
&sequential_simple_rnn_while_identity_4*
&sequential_simple_rnn_while_identity_5E
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1�
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor�
�sequential_simple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_1_tensorlistfromtensorN
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceO
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceP
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource��Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2O
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderVsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype02A
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem�
Osequential/simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2Q
Osequential/simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape�
Asequential/simple_rnn/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�sequential_simple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderXsequential/simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
2C
Asequential/simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem�
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02C
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�
2sequential/simple_rnn/while/simple_rnn_cell/MatMulMatMulFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@24
2sequential/simple_rnn/while/simple_rnn_cell/MatMul�
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02D
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�
3sequential/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd<sequential/simple_rnn/while/simple_rnn_cell/MatMul:product:0Jsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@25
3sequential/simple_rnn/while/simple_rnn_cell/BiasAdd�
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02E
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul)sequential_simple_rnn_while_placeholder_3Ksequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@26
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1�
/sequential/simple_rnn/while/simple_rnn_cell/addAddV2<sequential/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0>sequential/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:���������@21
/sequential/simple_rnn/while/simple_rnn_cell/add�
0sequential/simple_rnn/while/simple_rnn_cell/TanhTanh3sequential/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:���������@22
0sequential/simple_rnn/while/simple_rnn_cell/Tanh�
*sequential/simple_rnn/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2,
*sequential/simple_rnn/while/Tile/multiples�
 sequential/simple_rnn/while/TileTileHsequential/simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:03sequential/simple_rnn/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:���������2"
 sequential/simple_rnn/while/Tile�
$sequential/simple_rnn/while/SelectV2SelectV2)sequential/simple_rnn/while/Tile:output:04sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0)sequential_simple_rnn_while_placeholder_2*
T0*'
_output_shapes
:���������@2&
$sequential/simple_rnn/while/SelectV2�
,sequential/simple_rnn/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2.
,sequential/simple_rnn/while/Tile_1/multiples�
"sequential/simple_rnn/while/Tile_1TileHsequential/simple_rnn/while/TensorArrayV2Read_1/TensorListGetItem:item:05sequential/simple_rnn/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������2$
"sequential/simple_rnn/while/Tile_1�
&sequential/simple_rnn/while/SelectV2_1SelectV2+sequential/simple_rnn/while/Tile_1:output:04sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0)sequential_simple_rnn_while_placeholder_3*
T0*'
_output_shapes
:���������@2(
&sequential/simple_rnn/while/SelectV2_1�
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_simple_rnn_while_placeholder_1'sequential_simple_rnn_while_placeholder-sequential/simple_rnn/while/SelectV2:output:0*
_output_shapes
: *
element_dtype02B
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem�
!sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential/simple_rnn/while/add/y�
sequential/simple_rnn/while/addAddV2'sequential_simple_rnn_while_placeholder*sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential/simple_rnn/while/add�
#sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential/simple_rnn/while/add_1/y�
!sequential/simple_rnn/while/add_1AddV2Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counter,sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential/simple_rnn/while/add_1�
$sequential/simple_rnn/while/IdentityIdentity%sequential/simple_rnn/while/add_1:z:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential/simple_rnn/while/Identity�
&sequential/simple_rnn/while/Identity_1IdentityJsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterationsC^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_1�
&sequential/simple_rnn/while/Identity_2Identity#sequential/simple_rnn/while/add:z:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_2�
&sequential/simple_rnn/while/Identity_3IdentityPsequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential/simple_rnn/while/Identity_3�
&sequential/simple_rnn/while/Identity_4Identity-sequential/simple_rnn/while/SelectV2:output:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2(
&sequential/simple_rnn/while/Identity_4�
&sequential/simple_rnn/while/Identity_5Identity/sequential/simple_rnn/while/SelectV2_1:output:0C^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2(
&sequential/simple_rnn/while/Identity_5"U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0"Y
&sequential_simple_rnn_while_identity_1/sequential/simple_rnn/while/Identity_1:output:0"Y
&sequential_simple_rnn_while_identity_2/sequential/simple_rnn/while/Identity_2:output:0"Y
&sequential_simple_rnn_while_identity_3/sequential/simple_rnn/while/Identity_3:output:0"Y
&sequential_simple_rnn_while_identity_4/sequential/simple_rnn/while/Identity_4:output:0"Y
&sequential_simple_rnn_while_identity_5/sequential/simple_rnn/while/Identity_5:output:0"�
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0"�
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"�
�sequential_simple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor�sequential_simple_rnn_while_tensorarrayv2read_1_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_1_tensorlistfromtensor_0"�
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :���������@:���������@: : : :::2�
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2�
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2�
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_104898

inputs
embedding_104872
simple_rnn_104877
simple_rnn_104879
simple_rnn_104881
simple_rnn_1_104885
simple_rnn_1_104887
simple_rnn_1_104889
dense_104892
dense_104894
identity��dense/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�$simple_rnn_1/StatefulPartitionedCall�
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_104872*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_1042102#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/y�
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������
2
embedding/NotEqual�
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0embedding/NotEqual:z:0simple_rnn_104877simple_rnn_104879simple_rnn_104881*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1043602$
"simple_rnn/StatefulPartitionedCall�
repeat_vector/PartitionedCallPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_repeat_vector_layer_call_and_return_conditional_losses_1036782
repeat_vector/PartitionedCall�
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall&repeat_vector/PartitionedCall:output:0simple_rnn_1_104885simple_rnn_1_104887simple_rnn_1_104889*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_1046412&
$simple_rnn_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0dense_104892dense_104894*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�n*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1048202
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall*
T0*,
_output_shapes
:���������
�n2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������
:::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
+__inference_simple_rnn_layer_call_fn_106177

inputs
mask

unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_1043602
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:���������
@:���������
:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
@
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������


_user_specified_namemask
�B
�
simple_rnn_1_while_body_1054836
2simple_rnn_1_while_simple_rnn_1_while_loop_counter<
8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations"
simple_rnn_1_while_placeholder$
 simple_rnn_1_while_placeholder_1$
 simple_rnn_1_while_placeholder_25
1simple_rnn_1_while_simple_rnn_1_strided_slice_1_0q
msimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0I
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0J
Fsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0K
Gsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0
simple_rnn_1_while_identity!
simple_rnn_1_while_identity_1!
simple_rnn_1_while_identity_2!
simple_rnn_1_while_identity_3!
simple_rnn_1_while_identity_43
/simple_rnn_1_while_simple_rnn_1_strided_slice_1o
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorG
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceH
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceI
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource��;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp�<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   2F
Dsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape�
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_1_while_placeholderMsimple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������@*
element_dtype028
6simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem�
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype02<
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp�
+simple_rnn_1/while/simple_rnn_cell_1/MatMulMatMul=simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2-
+simple_rnn_1/while/simple_rnn_cell_1/MatMul�
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype02=
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp�
,simple_rnn_1/while/simple_rnn_cell_1/BiasAddBiasAdd5simple_rnn_1/while/simple_rnn_cell_1/MatMul:product:0Csimple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,simple_rnn_1/while/simple_rnn_cell_1/BiasAdd�
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype02>
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp�
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1MatMul simple_rnn_1_while_placeholder_2Dsimple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-simple_rnn_1/while/simple_rnn_cell_1/MatMul_1�
(simple_rnn_1/while/simple_rnn_cell_1/addAddV25simple_rnn_1/while/simple_rnn_cell_1/BiasAdd:output:07simple_rnn_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:���������@2*
(simple_rnn_1/while/simple_rnn_cell_1/add�
)simple_rnn_1/while/simple_rnn_cell_1/TanhTanh,simple_rnn_1/while/simple_rnn_cell_1/add:z:0*
T0*'
_output_shapes
:���������@2+
)simple_rnn_1/while/simple_rnn_cell_1/Tanh�
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_1_while_placeholder_1simple_rnn_1_while_placeholder-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype029
7simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemv
simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add/y�
simple_rnn_1/while/addAddV2simple_rnn_1_while_placeholder!simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/addz
simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
simple_rnn_1/while/add_1/y�
simple_rnn_1/while/add_1AddV22simple_rnn_1_while_simple_rnn_1_while_loop_counter#simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 2
simple_rnn_1/while/add_1�
simple_rnn_1/while/IdentityIdentitysimple_rnn_1/while/add_1:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity�
simple_rnn_1/while/Identity_1Identity8simple_rnn_1_while_simple_rnn_1_while_maximum_iterations<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_1�
simple_rnn_1/while/Identity_2Identitysimple_rnn_1/while/add:z:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_2�
simple_rnn_1/while/Identity_3IdentityGsimple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
simple_rnn_1/while/Identity_3�
simple_rnn_1/while/Identity_4Identity-simple_rnn_1/while/simple_rnn_cell_1/Tanh:y:0<^simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;^simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp=^simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������@2
simple_rnn_1/while/Identity_4"C
simple_rnn_1_while_identity$simple_rnn_1/while/Identity:output:0"G
simple_rnn_1_while_identity_1&simple_rnn_1/while/Identity_1:output:0"G
simple_rnn_1_while_identity_2&simple_rnn_1/while/Identity_2:output:0"G
simple_rnn_1_while_identity_3&simple_rnn_1/while/Identity_3:output:0"G
simple_rnn_1_while_identity_4&simple_rnn_1/while/Identity_4:output:0"d
/simple_rnn_1_while_simple_rnn_1_strided_slice_11simple_rnn_1_while_simple_rnn_1_strided_slice_1_0"�
Dsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resourceFsimple_rnn_1_while_simple_rnn_cell_1_biasadd_readvariableop_resource_0"�
Esimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resourceGsimple_rnn_1_while_simple_rnn_cell_1_matmul_1_readvariableop_resource_0"�
Csimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resourceEsimple_rnn_1_while_simple_rnn_cell_1_matmul_readvariableop_resource_0"�
ksimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensormsimple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������@: : :::2z
;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp;simple_rnn_1/while/simple_rnn_cell_1/BiasAdd/ReadVariableOp2x
:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp:simple_rnn_1/while/simple_rnn_cell_1/MatMul/ReadVariableOp2|
<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp<simple_rnn_1/while/simple_rnn_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�	
�
0__inference_simple_rnn_cell_layer_call_fn_106789

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_1032232
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������@:���������@:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
�
while_cond_103479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_103479___redundant_placeholder04
0while_while_cond_103479___redundant_placeholder14
0while_while_cond_103479___redundant_placeholder24
0while_while_cond_103479___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
embedding_input8
!serving_default_embedding_input:0���������
>
dense5
StatefulPartitionedCall:0���������
�ntensorflow/serving/predict:�
�3
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
*r&call_and_return_all_conditional_losses
s_default_save_signature
t__call__"�1
_tf_keras_sequential�0{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "input_dim": 6942, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": 10}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "RepeatVector", "config": {"name": "repeat_vector", "trainable": true, "dtype": "float32", "n": 10}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 14196, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "input_dim": 6942, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": 10}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "RepeatVector", "config": {"name": "repeat_vector", "trainable": true, "dtype": "float32", "n": 10}}, {"class_name": "SimpleRNN", "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 14196, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
�

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
*u&call_and_return_all_conditional_losses
v__call__"�
_tf_keras_layer�{"class_name": "Embedding", "name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "input_dim": 6942, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": 10}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
�

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*w&call_and_return_all_conditional_losses
x__call__"�	
_tf_keras_rnn_layer�	{"class_name": "SimpleRNN", "name": "simple_rnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 64]}}
�
	variables
regularization_losses
trainable_variables
	keras_api
*y&call_and_return_all_conditional_losses
z__call__"�
_tf_keras_layer�{"class_name": "RepeatVector", "name": "repeat_vector", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "repeat_vector", "trainable": true, "dtype": "float32", "n": 10}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�

cell

state_spec
	variables
regularization_losses
trainable_variables
 	keras_api
*{&call_and_return_all_conditional_losses
|__call__"�	
_tf_keras_rnn_layer�	{"class_name": "SimpleRNN", "name": "simple_rnn_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 64]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 64]}}
�

!kernel
"bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
*}&call_and_return_all_conditional_losses
~__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 14196, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 64]}}
�
'iter
	(decay
)learning_rate
*momentum
+rho	rmsi	!rmsj	"rmsk	,rmsl	-rmsm	.rmsn	/rmso	0rmsp	1rmsq"
	optimizer
_
0
,1
-2
.3
/4
05
16
!7
"8"
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
,1
-2
.3
/4
05
16
!7
"8"
trackable_list_wrapper
�
2metrics

3layers
4layer_regularization_losses
5non_trainable_variables
6layer_metrics
	variables
regularization_losses
	trainable_variables
t__call__
s_default_save_signature
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
':%	�6@2embedding/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
7metrics

8layers
9layer_regularization_losses
:layer_metrics
;non_trainable_variables
	variables
regularization_losses
trainable_variables
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�

,kernel
-recurrent_kernel
.bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
�
@metrics

Alayers
Blayer_regularization_losses
Clayer_metrics
Dnon_trainable_variables
	variables

Estates
regularization_losses
trainable_variables
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fmetrics

Glayers
Hlayer_regularization_losses
Ilayer_metrics
Jnon_trainable_variables
	variables
regularization_losses
trainable_variables
z__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�

/kernel
0recurrent_kernel
1bias
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "SimpleRNNCell", "name": "simple_rnn_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "simple_rnn_cell_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}}
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
�
Ometrics

Players
Qlayer_regularization_losses
Rlayer_metrics
Snon_trainable_variables
	variables

Tstates
regularization_losses
trainable_variables
|__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
:	@�n2dense/kernel
:�n2
dense/bias
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
�
Umetrics

Vlayers
Wlayer_regularization_losses
Xlayer_metrics
Ynon_trainable_variables
#	variables
$regularization_losses
%trainable_variables
~__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
3:1@@2!simple_rnn/simple_rnn_cell/kernel
=:;@@2+simple_rnn/simple_rnn_cell/recurrent_kernel
-:+@2simple_rnn/simple_rnn_cell/bias
7:5@@2%simple_rnn_1/simple_rnn_cell_1/kernel
A:?@@2/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel
1:/@2#simple_rnn_1/simple_rnn_cell_1/bias
'
Z0"
trackable_list_wrapper
C
0
1
2
3
4"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
�
[metrics

\layers
]layer_regularization_losses
^layer_metrics
_non_trainable_variables
<	variables
=regularization_losses
>trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
�
`metrics

alayers
blayer_regularization_losses
clayer_metrics
dnon_trainable_variables
K	variables
Lregularization_losses
Mtrainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
	etotal
	fcount
g	variables
h	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
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
:  (2total
:  (2count
.
e0
f1"
trackable_list_wrapper
-
g	variables"
_generic_user_object
1:/	�6@2 RMSprop/embedding/embeddings/rms
):'	@�n2RMSprop/dense/kernel/rms
#:!�n2RMSprop/dense/bias/rms
=:;@@2-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
G:E@@27RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
7:5@2+RMSprop/simple_rnn/simple_rnn_cell/bias/rms
A:?@@21RMSprop/simple_rnn_1/simple_rnn_cell_1/kernel/rms
K:I@@2;RMSprop/simple_rnn_1/simple_rnn_cell_1/recurrent_kernel/rms
;:9@2/RMSprop/simple_rnn_1/simple_rnn_cell_1/bias/rms
�2�
F__inference_sequential_layer_call_and_return_conditional_losses_105293
F__inference_sequential_layer_call_and_return_conditional_losses_105582
F__inference_sequential_layer_call_and_return_conditional_losses_104866
F__inference_sequential_layer_call_and_return_conditional_losses_104837�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
!__inference__wrapped_model_103157�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *.�+
)�&
embedding_input���������

�2�
+__inference_sequential_layer_call_fn_105605
+__inference_sequential_layer_call_fn_104919
+__inference_sequential_layer_call_fn_104971
+__inference_sequential_layer_call_fn_105628�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_embedding_layer_call_and_return_conditional_losses_105638�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_embedding_layer_call_fn_105645�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_105757
F__inference_simple_rnn_layer_call_and_return_conditional_losses_106028
F__inference_simple_rnn_layer_call_and_return_conditional_losses_105869
F__inference_simple_rnn_layer_call_and_return_conditional_losses_106165�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
+__inference_simple_rnn_layer_call_fn_105891
+__inference_simple_rnn_layer_call_fn_106189
+__inference_simple_rnn_layer_call_fn_106177
+__inference_simple_rnn_layer_call_fn_105880�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_repeat_vector_layer_call_and_return_conditional_losses_103678�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *&�#
!�������������������
�2�
.__inference_repeat_vector_layer_call_fn_103684�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *&�#
!�������������������
�2�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106659
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106547
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106413
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106301�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_simple_rnn_1_layer_call_fn_106424
-__inference_simple_rnn_1_layer_call_fn_106681
-__inference_simple_rnn_1_layer_call_fn_106670
-__inference_simple_rnn_1_layer_call_fn_106435�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_dense_layer_call_and_return_conditional_losses_106718�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_layer_call_fn_106727�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_105004embedding_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_106744
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_106761�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_simple_rnn_cell_layer_call_fn_106775
0__inference_simple_rnn_cell_layer_call_fn_106789�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_106806
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_106823�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
2__inference_simple_rnn_cell_1_layer_call_fn_106837
2__inference_simple_rnn_cell_1_layer_call_fn_106851�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
!__inference__wrapped_model_103157y	,.-/10!"8�5
.�+
)�&
embedding_input���������

� "2�/
-
dense$�!
dense���������
�n�
A__inference_dense_layer_call_and_return_conditional_losses_106718e!"3�0
)�&
$�!
inputs���������
@
� "*�'
 �
0���������
�n
� �
&__inference_dense_layer_call_fn_106727X!"3�0
)�&
$�!
inputs���������
@
� "����������
�n�
E__inference_embedding_layer_call_and_return_conditional_losses_105638_/�,
%�"
 �
inputs���������

� ")�&
�
0���������
@
� �
*__inference_embedding_layer_call_fn_105645R/�,
%�"
 �
inputs���������

� "����������
@�
I__inference_repeat_vector_layer_call_and_return_conditional_losses_103678n8�5
.�+
)�&
inputs������������������
� "2�/
(�%
0���������
���������
� �
.__inference_repeat_vector_layer_call_fn_103684a8�5
.�+
)�&
inputs������������������
� "%�"���������
����������
F__inference_sequential_layer_call_and_return_conditional_losses_104837y	,.-/10!"@�=
6�3
)�&
embedding_input���������

p

 
� "*�'
 �
0���������
�n
� �
F__inference_sequential_layer_call_and_return_conditional_losses_104866y	,.-/10!"@�=
6�3
)�&
embedding_input���������

p 

 
� "*�'
 �
0���������
�n
� �
F__inference_sequential_layer_call_and_return_conditional_losses_105293p	,.-/10!"7�4
-�*
 �
inputs���������

p

 
� "*�'
 �
0���������
�n
� �
F__inference_sequential_layer_call_and_return_conditional_losses_105582p	,.-/10!"7�4
-�*
 �
inputs���������

p 

 
� "*�'
 �
0���������
�n
� �
+__inference_sequential_layer_call_fn_104919l	,.-/10!"@�=
6�3
)�&
embedding_input���������

p

 
� "����������
�n�
+__inference_sequential_layer_call_fn_104971l	,.-/10!"@�=
6�3
)�&
embedding_input���������

p 

 
� "����������
�n�
+__inference_sequential_layer_call_fn_105605c	,.-/10!"7�4
-�*
 �
inputs���������

p

 
� "����������
�n�
+__inference_sequential_layer_call_fn_105628c	,.-/10!"7�4
-�*
 �
inputs���������

p 

 
� "����������
�n�
$__inference_signature_wrapper_105004�	,.-/10!"K�H
� 
A�>
<
embedding_input)�&
embedding_input���������
"2�/
-
dense$�!
dense���������
�n�
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106301q/10?�<
5�2
$�!
inputs���������
@

 
p

 
� ")�&
�
0���������
@
� �
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106413q/10?�<
5�2
$�!
inputs���������
@

 
p 

 
� ")�&
�
0���������
@
� �
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106547�/10O�L
E�B
4�1
/�,
inputs/0������������������@

 
p

 
� "2�/
(�%
0������������������@
� �
H__inference_simple_rnn_1_layer_call_and_return_conditional_losses_106659�/10O�L
E�B
4�1
/�,
inputs/0������������������@

 
p 

 
� "2�/
(�%
0������������������@
� �
-__inference_simple_rnn_1_layer_call_fn_106424d/10?�<
5�2
$�!
inputs���������
@

 
p

 
� "����������
@�
-__inference_simple_rnn_1_layer_call_fn_106435d/10?�<
5�2
$�!
inputs���������
@

 
p 

 
� "����������
@�
-__inference_simple_rnn_1_layer_call_fn_106670}/10O�L
E�B
4�1
/�,
inputs/0������������������@

 
p

 
� "%�"������������������@�
-__inference_simple_rnn_1_layer_call_fn_106681}/10O�L
E�B
4�1
/�,
inputs/0������������������@

 
p 

 
� "%�"������������������@�
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_106806�/10\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p
� "R�O
H�E
�
0/0���������@
$�!
�
0/1/0���������@
� �
M__inference_simple_rnn_cell_1_layer_call_and_return_conditional_losses_106823�/10\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p 
� "R�O
H�E
�
0/0���������@
$�!
�
0/1/0���������@
� �
2__inference_simple_rnn_cell_1_layer_call_fn_106837�/10\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p
� "D�A
�
0���������@
"�
�
1/0���������@�
2__inference_simple_rnn_cell_1_layer_call_fn_106851�/10\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p 
� "D�A
�
0���������@
"�
�
1/0���������@�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_106744�,.-\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p
� "R�O
H�E
�
0/0���������@
$�!
�
0/1/0���������@
� �
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_106761�,.-\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p 
� "R�O
H�E
�
0/0���������@
$�!
�
0/1/0���������@
� �
0__inference_simple_rnn_cell_layer_call_fn_106775�,.-\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p
� "D�A
�
0���������@
"�
�
1/0���������@�
0__inference_simple_rnn_cell_layer_call_fn_106789�,.-\�Y
R�O
 �
inputs���������@
'�$
"�
states/0���������@
p 
� "D�A
�
0���������@
"�
�
1/0���������@�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_105757},.-O�L
E�B
4�1
/�,
inputs/0������������������@

 
p

 
� "%�"
�
0���������@
� �
F__inference_simple_rnn_layer_call_and_return_conditional_losses_105869},.-O�L
E�B
4�1
/�,
inputs/0������������������@

 
p 

 
� "%�"
�
0���������@
� �
F__inference_simple_rnn_layer_call_and_return_conditional_losses_106028�,.-[�X
Q�N
$�!
inputs���������
@
�
mask���������


p

 
� "%�"
�
0���������@
� �
F__inference_simple_rnn_layer_call_and_return_conditional_losses_106165�,.-[�X
Q�N
$�!
inputs���������
@
�
mask���������


p 

 
� "%�"
�
0���������@
� �
+__inference_simple_rnn_layer_call_fn_105880p,.-O�L
E�B
4�1
/�,
inputs/0������������������@

 
p

 
� "����������@�
+__inference_simple_rnn_layer_call_fn_105891p,.-O�L
E�B
4�1
/�,
inputs/0������������������@

 
p 

 
� "����������@�
+__inference_simple_rnn_layer_call_fn_106177|,.-[�X
Q�N
$�!
inputs���������
@
�
mask���������


p

 
� "����������@�
+__inference_simple_rnn_layer_call_fn_106189|,.-[�X
Q�N
$�!
inputs���������
@
�
mask���������


p 

 
� "����������@