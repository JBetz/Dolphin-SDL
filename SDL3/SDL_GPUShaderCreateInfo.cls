"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUShaderCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_code _OffsetOf_code_size _OffsetOf_entry_point_name _OffsetOf_format _OffsetOf_props _OffsetOf_sampler_count _OffsetOf_stage _OffsetOf_storage_buffer_count _OffsetOf_storage_texture_count _OffsetOf_uniform_buffer_count'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUShaderCreateInfo guid: (GUID fromString: '{a8b3dcbb-4635-48a7-9c57-9477d850955f}')!

SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_code' value: 16r4!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_code_size' value: 16r0!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_entry_point_name' value: 16r8!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_format' value: 16rC!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_props' value: 16r24!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_sampler_count' value: 16r14!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_stage' value: 16r10!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_storage_buffer_count' value: 16r1C!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_storage_texture_count' value: 16r18!
SDL_GPUShaderCreateInfo addClassConstant: '_OffsetOf_uniform_buffer_count' value: 16r20!

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

entry_point_name
	"Answer the <Utf8String> value of the receiver's 'entry_point_name' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_entry_point_name)!

entry_point_name: anUtf8String
	"Set the receiver's 'entry_point_name' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_entry_point_name put: anUtf8String yourAddress!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger!

sampler_count
	"Answer the <Integer> value of the receiver's 'sampler_count' field."

	^bytes dwordAtOffset: _OffsetOf_sampler_count!

sampler_count: anInteger
	"Set the receiver's 'sampler_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_sampler_count put: anInteger!

stage
	"Answer the <Integer> value of the receiver's 'stage' field."

	^bytes dwordAtOffset: _OffsetOf_stage!

stage: anInteger
	"Set the receiver's 'stage' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_stage put: anInteger!

storage_buffer_count
	"Answer the <Integer> value of the receiver's 'storage_buffer_count' field."

	^bytes dwordAtOffset: _OffsetOf_storage_buffer_count!

storage_buffer_count: anInteger
	"Set the receiver's 'storage_buffer_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_storage_buffer_count put: anInteger!

storage_texture_count
	"Answer the <Integer> value of the receiver's 'storage_texture_count' field."

	^bytes dwordAtOffset: _OffsetOf_storage_texture_count!

storage_texture_count: anInteger
	"Set the receiver's 'storage_texture_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_storage_texture_count put: anInteger!

uniform_buffer_count
	"Answer the <Integer> value of the receiver's 'uniform_buffer_count' field."

	^bytes dwordAtOffset: _OffsetOf_uniform_buffer_count!

uniform_buffer_count: anInteger
	"Set the receiver's 'uniform_buffer_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_uniform_buffer_count put: anInteger! !

!SDL_GPUShaderCreateInfo categoriesForMethods!
code!**compiled accessors**!public! !
code:!**compiled accessors**!public! !
code_size!**compiled accessors**!public! !
code_size:!**compiled accessors**!public! !
entry_point_name!**compiled accessors**!public! !
entry_point_name:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
sampler_count!**compiled accessors**!public! !
sampler_count:!**compiled accessors**!public! !
stage!**compiled accessors**!public! !
stage:!**compiled accessors**!public! !
storage_buffer_count!**compiled accessors**!public! !
storage_buffer_count:!**compiled accessors**!public! !
storage_texture_count!**compiled accessors**!public! !
storage_texture_count:!**compiled accessors**!public! !
uniform_buffer_count!**compiled accessors**!public! !
uniform_buffer_count:!**compiled accessors**!public! !
!

!SDL_GPUShaderCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #code_size type: DWORDField new;
		defineField: #code type: (PointerField type: BYTE);
		defineField: #entry_point_name type: (PointerField type: Utf8String);
		defineField: #format type: DWORDField new;
		defineField: #stage type: DWORDField new;
		defineField: #sampler_count type: DWORDField new;
		defineField: #storage_texture_count type: DWORDField new;
		defineField: #storage_buffer_count type: DWORDField new;
		defineField: #uniform_buffer_count type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#code_size #code #entry_point_name #format #stage #sampler_count #storage_texture_count #storage_buffer_count #uniform_buffer_count #props)! !

!SDL_GPUShaderCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

