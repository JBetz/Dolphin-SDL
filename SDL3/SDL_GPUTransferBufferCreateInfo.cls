"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTransferBufferCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_props _OffsetOf_size_in_bytes _OffsetOf_usage_flags'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTransferBufferCreateInfo guid: (GUID fromString: '{ab57cf1e-5de0-491a-a644-78623f2b66c0}')!

SDL_GPUTransferBufferCreateInfo addClassConstant: '_OffsetOf_props' value: 16r8!
SDL_GPUTransferBufferCreateInfo addClassConstant: '_OffsetOf_size_in_bytes' value: 16r4!
SDL_GPUTransferBufferCreateInfo addClassConstant: '_OffsetOf_usage_flags' value: 16r0!

SDL_GPUTransferBufferCreateInfo comment: ''!

!SDL_GPUTransferBufferCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUTransferBufferCreateInfo methodsFor!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger!

size_in_bytes
	"Answer the <Integer> value of the receiver's 'size_in_bytes' field."

	^bytes dwordAtOffset: _OffsetOf_size_in_bytes!

size_in_bytes: anInteger
	"Set the receiver's 'size_in_bytes' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_size_in_bytes put: anInteger!

usage_flags
	"Answer the <Integer> value of the receiver's 'usage_flags' field."

	^bytes dwordAtOffset: _OffsetOf_usage_flags!

usage_flags: anInteger
	"Set the receiver's 'usage_flags' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_usage_flags put: anInteger! !

!SDL_GPUTransferBufferCreateInfo categoriesForMethods!
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
size_in_bytes!**compiled accessors**!public! !
size_in_bytes:!**compiled accessors**!public! !
usage_flags!**compiled accessors**!public! !
usage_flags:!**compiled accessors**!public! !
!

!SDL_GPUTransferBufferCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #usage_flags type: DWORDField new;
		defineField: #size_in_bytes type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#usage_flags #size_in_bytes #props)! !

!SDL_GPUTransferBufferCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

