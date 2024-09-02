"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUComputePipelineCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_code _OffsetOf_code_size _OffsetOf_entry_point_name _OffsetOf_format _OffsetOf_props _OffsetOf_read_only_storage_buffer_count _OffsetOf_read_only_storage_texture_count _OffsetOf_thread_count_x _OffsetOf_thread_count_y _OffsetOf_thread_count_z _OffsetOf_uniform_buffer_count _OffsetOf_write_only_storage_buffer_count _OffsetOf_write_only_storage_texture_count'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUComputePipelineCreateInfo guid: (GUID fromString: '{18679722-4745-4e76-893e-6a6a664b6610}')!

SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_code' value: 16r4!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_code_size' value: 16r0!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_entry_point_name' value: 16r8!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_format' value: 16rC!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_props' value: 16r30!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_read_only_storage_buffer_count' value: 16r14!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_read_only_storage_texture_count' value: 16r10!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_thread_count_x' value: 16r24!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_thread_count_y' value: 16r28!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_thread_count_z' value: 16r2C!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_uniform_buffer_count' value: 16r20!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_write_only_storage_buffer_count' value: 16r1C!
SDL_GPUComputePipelineCreateInfo addClassConstant: '_OffsetOf_write_only_storage_texture_count' value: 16r18!

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

read_only_storage_buffer_count
	"Answer the <Integer> value of the receiver's 'read_only_storage_buffer_count' field."

	^bytes dwordAtOffset: _OffsetOf_read_only_storage_buffer_count!

read_only_storage_buffer_count: anInteger
	"Set the receiver's 'read_only_storage_buffer_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_read_only_storage_buffer_count put: anInteger!

read_only_storage_texture_count
	"Answer the <Integer> value of the receiver's 'read_only_storage_texture_count' field."

	^bytes dwordAtOffset: _OffsetOf_read_only_storage_texture_count!

read_only_storage_texture_count: anInteger
	"Set the receiver's 'read_only_storage_texture_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_read_only_storage_texture_count put: anInteger!

thread_count_x
	"Answer the <Integer> value of the receiver's 'thread_count_x' field."

	^bytes dwordAtOffset: _OffsetOf_thread_count_x!

thread_count_x: anInteger
	"Set the receiver's 'thread_count_x' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_thread_count_x put: anInteger!

thread_count_y
	"Answer the <Integer> value of the receiver's 'thread_count_y' field."

	^bytes dwordAtOffset: _OffsetOf_thread_count_y!

thread_count_y: anInteger
	"Set the receiver's 'thread_count_y' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_thread_count_y put: anInteger!

thread_count_z
	"Answer the <Integer> value of the receiver's 'thread_count_z' field."

	^bytes dwordAtOffset: _OffsetOf_thread_count_z!

thread_count_z: anInteger
	"Set the receiver's 'thread_count_z' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_thread_count_z put: anInteger!

uniform_buffer_count
	"Answer the <Integer> value of the receiver's 'uniform_buffer_count' field."

	^bytes dwordAtOffset: _OffsetOf_uniform_buffer_count!

uniform_buffer_count: anInteger
	"Set the receiver's 'uniform_buffer_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_uniform_buffer_count put: anInteger!

write_only_storage_buffer_count
	"Answer the <Integer> value of the receiver's 'write_only_storage_buffer_count' field."

	^bytes dwordAtOffset: _OffsetOf_write_only_storage_buffer_count!

write_only_storage_buffer_count: anInteger
	"Set the receiver's 'write_only_storage_buffer_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_write_only_storage_buffer_count put: anInteger!

write_only_storage_texture_count
	"Answer the <Integer> value of the receiver's 'write_only_storage_texture_count' field."

	^bytes dwordAtOffset: _OffsetOf_write_only_storage_texture_count!

write_only_storage_texture_count: anInteger
	"Set the receiver's 'write_only_storage_texture_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_write_only_storage_texture_count put: anInteger! !

!SDL_GPUComputePipelineCreateInfo categoriesForMethods!
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
read_only_storage_buffer_count!**compiled accessors**!public! !
read_only_storage_buffer_count:!**compiled accessors**!public! !
read_only_storage_texture_count!**compiled accessors**!public! !
read_only_storage_texture_count:!**compiled accessors**!public! !
thread_count_x!**compiled accessors**!public! !
thread_count_x:!**compiled accessors**!public! !
thread_count_y!**compiled accessors**!public! !
thread_count_y:!**compiled accessors**!public! !
thread_count_z!**compiled accessors**!public! !
thread_count_z:!**compiled accessors**!public! !
uniform_buffer_count!**compiled accessors**!public! !
uniform_buffer_count:!**compiled accessors**!public! !
write_only_storage_buffer_count!**compiled accessors**!public! !
write_only_storage_buffer_count:!**compiled accessors**!public! !
write_only_storage_texture_count!**compiled accessors**!public! !
write_only_storage_texture_count:!**compiled accessors**!public! !
!

!SDL_GPUComputePipelineCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #code_size type: DWORDField new;
		defineField: #code type: (PointerField type: BYTE);
		defineField: #entry_point_name type: (PointerField type: Utf8String);
		defineField: #format type: DWORDField new;
		defineField: #read_only_storage_texture_count type: DWORDField new;
		defineField: #read_only_storage_buffer_count type: DWORDField new;
		defineField: #write_only_storage_texture_count type: DWORDField new;
		defineField: #write_only_storage_buffer_count type: DWORDField new;
		defineField: #uniform_buffer_count type: DWORDField new;
		defineField: #thread_count_x type: DWORDField new;
		defineField: #thread_count_y type: DWORDField new;
		defineField: #thread_count_z type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#code_size #code #entry_point_name #format #read_only_storage_texture_count #read_only_storage_buffer_count #write_only_storage_texture_count #write_only_storage_buffer_count #uniform_buffer_count #thread_count_x #thread_count_y #thread_count_z #props)! !

!SDL_GPUComputePipelineCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

