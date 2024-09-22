"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUComputePipelineCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_code _OffsetOf_code_size _OffsetOf_entrypoint _OffsetOf_format _OffsetOf_num_read_only_storage_buffers _OffsetOf_num_read_only_storage_textures _OffsetOf_num_samplers _OffsetOf_num_uniform_buffers _OffsetOf_num_write_only_storage_buffers _OffsetOf_num_write_only_storage_textures _OffsetOf_props _OffsetOf_threadcount_x _OffsetOf_threadcount_y _OffsetOf_threadcount_z'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUComputePipelineCreateInfo guid: (GUID fromString: '{18679722-4745-4e76-893e-6a6a664b6610}')!

SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_code' value: 16r4!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_code_size' value: 16r0!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_entrypoint' value: 16r8!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_format' value: 16rC!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_num_read_only_storage_buffers' value: 16r14!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_num_read_only_storage_textures' value: 16r10!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_num_uniform_buffers' value: 16r20!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_num_write_only_storage_buffers' value: 16r1C!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_num_write_only_storage_textures' value: 16r18!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_props' value: 16r30!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_threadcount_x' value: 16r24!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_threadcount_y' value: 16r28!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_threadcount_z' value: 16r2C!

SDL_GPUComputePipelineCreateInfo comment: ''!

!SDL_GPUComputePipelineCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUComputePipelineCreateInfo methodsFor!

code
	"Answer the <BYTE> value of the receiver's 'code' field."

	^BYTE fromAddress: (bytes intPtrAtOffset: _OffsetOf_code)!

code: aBYTE
	"Set the receiver's 'code' field to the value of the argument, aBYTE"

	bytes uintPtrAtOffset: _OffsetOf_code put: aBYTE yourAddress!

code_size
	"Answer the <Integer> value of the receiver's 'code_size' field."

	^bytes dwordAtOffset: _OffsetOf_code_size!

code_size: anInteger
	"Set the receiver's 'code_size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_code_size put: anInteger!

entrypoint
	"Answer the <Utf8String> value of the receiver's 'entrypoint' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_entrypoint)!

entrypoint: anUtf8String
	"Set the receiver's 'entrypoint' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_entrypoint put: anUtf8String yourAddress!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger!

num_read_only_storage_buffers
	"Answer the <Integer> value of the receiver's 'num_read_only_storage_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_read_only_storage_buffers!

num_read_only_storage_buffers: anInteger
	"Set the receiver's 'num_read_only_storage_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_read_only_storage_buffers put: anInteger!

num_read_only_storage_textures
	"Answer the <Integer> value of the receiver's 'num_read_only_storage_textures' field."

	^bytes dwordAtOffset: _OffsetOf_num_read_only_storage_textures!

num_read_only_storage_textures: anInteger
	"Set the receiver's 'num_read_only_storage_textures' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_read_only_storage_textures put: anInteger!

num_samplers
	"Answer the <Integer> value of the receiver's 'num_samplers' field."

	^bytes dwordAtOffset: _OffsetOf_num_samplers!

num_samplers: anInteger
	"Set the receiver's 'num_samplers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_samplers put: anInteger!

num_uniform_buffers
	"Answer the <Integer> value of the receiver's 'num_uniform_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_uniform_buffers!

num_uniform_buffers: anInteger
	"Set the receiver's 'num_uniform_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_uniform_buffers put: anInteger!

num_write_only_storage_buffers
	"Answer the <Integer> value of the receiver's 'num_write_only_storage_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_write_only_storage_buffers!

num_write_only_storage_buffers: anInteger
	"Set the receiver's 'num_write_only_storage_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_write_only_storage_buffers put: anInteger!

num_write_only_storage_textures
	"Answer the <Integer> value of the receiver's 'num_write_only_storage_textures' field."

	^bytes dwordAtOffset: _OffsetOf_num_write_only_storage_textures!

num_write_only_storage_textures: anInteger
	"Set the receiver's 'num_write_only_storage_textures' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_write_only_storage_textures put: anInteger!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger!

threadcount_x
	"Answer the <Integer> value of the receiver's 'threadcount_x' field."

	^bytes dwordAtOffset: _OffsetOf_threadcount_x!

threadcount_x: anInteger
	"Set the receiver's 'threadcount_x' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_threadcount_x put: anInteger!

threadcount_y
	"Answer the <Integer> value of the receiver's 'threadcount_y' field."

	^bytes dwordAtOffset: _OffsetOf_threadcount_y!

threadcount_y: anInteger
	"Set the receiver's 'threadcount_y' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_threadcount_y put: anInteger!

threadcount_z
	"Answer the <Integer> value of the receiver's 'threadcount_z' field."

	^bytes dwordAtOffset: _OffsetOf_threadcount_z!

threadcount_z: anInteger
	"Set the receiver's 'threadcount_z' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_threadcount_z put: anInteger! !

!SDL_GPUComputePipelineCreateInfo categoriesForMethods!
code!public! !
code:!public! !
code_size!public! !
code_size:!public! !
entrypoint!public! !
entrypoint:!public! !
format!public! !
format:!public! !
num_read_only_storage_buffers!public! !
num_read_only_storage_buffers:!public! !
num_read_only_storage_textures!public! !
num_read_only_storage_textures:!public! !
num_samplers!public! !
num_samplers:!public! !
num_uniform_buffers!public! !
num_uniform_buffers:!public! !
num_write_only_storage_buffers!public! !
num_write_only_storage_buffers:!public! !
num_write_only_storage_textures!public! !
num_write_only_storage_textures:!public! !
props!public! !
props:!public! !
threadcount_x!public! !
threadcount_x:!public! !
threadcount_y!public! !
threadcount_y:!public! !
threadcount_z!public! !
threadcount_z:!public! !
!

!SDL_GPUComputePipelineCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #code_size type: DWORDField new;
		defineField: #code type: (PointerField type: BYTE);
		defineField: #entrypoint type: (PointerField type: Utf8String);
		defineField: #format type: DWORDField new;
		defineField: #num_samplers type: DWORDField new;
		defineField: #num_read_only_storage_textures type: DWORDField new;
		defineField: #num_read_only_storage_buffers type: DWORDField new;
		defineField: #num_write_only_storage_textures type: DWORDField new;
		defineField: #num_write_only_storage_buffers type: DWORDField new;
		defineField: #num_uniform_buffers type: DWORDField new;
		defineField: #threadcount_x type: DWORDField new;
		defineField: #threadcount_y type: DWORDField new;
		defineField: #threadcount_z type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#code_size #code #entrypoint #format #num_read_only_storage_textures #num_read_only_storage_buffers #num_write_only_storage_textures #num_write_only_storage_buffers #num_uniform_buffers #threadcount_x #threadcount_y #threadcount_z #props)! !

!SDL_GPUComputePipelineCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

