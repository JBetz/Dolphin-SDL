"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUShaderCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_code _OffsetOf_code_size _OffsetOf_entrypoint _OffsetOf_format _OffsetOf_num_samplers _OffsetOf_num_storage_buffers _OffsetOf_num_storage_textures _OffsetOf_num_uniform_buffers _OffsetOf_props _OffsetOf_stage'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUShaderCreateInfo guid: (GUID fromString: '{a8b3dcbb-4635-48a7-9c57-9477d850955f}')!

SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_code' value: 16r4!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_code_size' value: 16r0!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_entrypoint' value: 16r8!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_format' value: 16rC!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_num_samplers' value: 16r14!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_num_storage_buffers' value: 16r1C!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_num_storage_textures' value: 16r18!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_num_uniform_buffers' value: 16r20!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_props' value: 16r24!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_stage' value: 16r10!

SDL_GPUShaderCreateInfo comment: ''!

!SDL_GPUShaderCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUShaderCreateInfo methodsFor!

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

num_samplers
	"Answer the <Integer> value of the receiver's 'num_samplers' field."

	^bytes dwordAtOffset: _OffsetOf_num_samplers!

num_samplers: anInteger
	"Set the receiver's 'num_samplers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_samplers put: anInteger!

num_storage_buffers
	"Answer the <Integer> value of the receiver's 'num_storage_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_storage_buffers!

num_storage_buffers: anInteger
	"Set the receiver's 'num_storage_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_storage_buffers put: anInteger!

num_storage_textures
	"Answer the <Integer> value of the receiver's 'num_storage_textures' field."

	^bytes dwordAtOffset: _OffsetOf_num_storage_textures!

num_storage_textures: anInteger
	"Set the receiver's 'num_storage_textures' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_storage_textures put: anInteger!

num_uniform_buffers
	"Answer the <Integer> value of the receiver's 'num_uniform_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_uniform_buffers!

num_uniform_buffers: anInteger
	"Set the receiver's 'num_uniform_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_uniform_buffers put: anInteger!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger!

stage
	"Answer the <Integer> value of the receiver's 'stage' field."

	^bytes sdwordAtOffset: _OffsetOf_stage!

stage: anInteger
	"Set the receiver's 'stage' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_stage put: anInteger! !

!SDL_GPUShaderCreateInfo categoriesForMethods!
code!**compiled accessors**!public! !
code:!**compiled accessors**!public! !
code_size!**compiled accessors**!public! !
code_size:!**compiled accessors**!public! !
entrypoint!**compiled accessors**!public! !
entrypoint:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
num_samplers!**compiled accessors**!public! !
num_samplers:!**compiled accessors**!public! !
num_storage_buffers!**compiled accessors**!public! !
num_storage_buffers:!**compiled accessors**!public! !
num_storage_textures!**compiled accessors**!public! !
num_storage_textures:!**compiled accessors**!public! !
num_uniform_buffers!**compiled accessors**!public! !
num_uniform_buffers:!**compiled accessors**!public! !
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
stage!**compiled accessors**!public! !
stage:!**compiled accessors**!public! !
!

!SDL_GPUShaderCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #code_size type: DWORDField new;
		defineField: #code type: (PointerField type: BYTE);
		defineField: #entrypoint type: (PointerField type: Utf8String);
		defineField: #format type: DWORDField new;
		defineField: #stage type: SDWORDField new;
		defineField: #num_samplers type: DWORDField new;
		defineField: #num_storage_textures type: DWORDField new;
		defineField: #num_storage_buffers type: DWORDField new;
		defineField: #num_uniform_buffers type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#code_size #code #entrypoint #format #stage #num_samplers #num_storage_textures #num_storage_buffers #num_uniform_buffers #props)! !

!SDL_GPUShaderCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

