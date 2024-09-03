"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUBufferBinding
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_buffer _OffsetOf_offset'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUBufferBinding guid: (GUID fromString: '{2e90a074-8ec5-4c9c-ae65-9d65cecbdb15}')!

SDL_GPUBufferBinding addClassConstant: '_OffsetOf_buffer' value: 16r0!
SDL_GPUBufferBinding addClassConstant: '_OffsetOf_offset' value: 16r4!

SDL_GPUBufferBinding comment: ''!

!SDL_GPUBufferBinding categoriesForClass!External-Data-Structured! !

!SDL_GPUBufferBinding methodsFor!

buffer
	"Answer the <SDL_GPUBuffer> value of the receiver's 'buffer' field."

	^SDL_GPUBuffer fromAddress: (bytes intPtrAtOffset: _OffsetOf_buffer)!

buffer: aSDL_GPUBuffer
	"Set the receiver's 'buffer' field to the value of the argument, aSDL_GPUBuffer"

	bytes uintPtrAtOffset: _OffsetOf_buffer put: aSDL_GPUBuffer yourAddress!

offset
	"Answer the <Integer> value of the receiver's 'offset' field."

	^bytes dwordAtOffset: _OffsetOf_offset!

offset: anInteger
	"Set the receiver's 'offset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_offset put: anInteger! !

!SDL_GPUBufferBinding categoriesForMethods!
buffer!**compiled accessors**!public! !
buffer:!**compiled accessors**!public! !
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
!

!SDL_GPUBufferBinding class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #buffer type: (PointerField type: SDL_GPUBuffer);
		defineField: #offset type: DWORDField new!

getFieldNames
	^#(#buffer #offset)! !

!SDL_GPUBufferBinding class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

