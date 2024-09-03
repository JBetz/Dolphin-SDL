"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUBufferLocation
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_buffer _OffsetOf_offset'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUBufferLocation guid: (GUID fromString: '{e9420126-8ff4-4f37-a92d-ce4b95660b4d}')!

SDL_GPUBufferLocation addClassConstant: '_OffsetOf_buffer' value: 16r0!
SDL_GPUBufferLocation addClassConstant: '_OffsetOf_offset' value: 16r4!

SDL_GPUBufferLocation comment: ''!

!SDL_GPUBufferLocation categoriesForClass!External-Data-Structured! !

!SDL_GPUBufferLocation methodsFor!

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

!SDL_GPUBufferLocation categoriesForMethods!
buffer!**compiled accessors**!public! !
buffer:!**compiled accessors**!public! !
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
!

!SDL_GPUBufferLocation class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #buffer type: (PointerField type: SDL_GPUBuffer);
		defineField: #offset type: DWORDField new!

getFieldNames
	^#(#buffer #offset)! !

!SDL_GPUBufferLocation class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

