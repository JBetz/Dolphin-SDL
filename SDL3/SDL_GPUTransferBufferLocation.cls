"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTransferBufferLocation
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_offset _OffsetOf_transfer_buffer'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTransferBufferLocation guid: (GUID fromString: '{7138f35d-7060-4416-a728-00f10e48baa7}')!

SDL_GPUTransferBufferLocation addClassConstant: '_OffsetOf_offset' value: 16r0!
SDL_GPUTransferBufferLocation addClassConstant: '_OffsetOf_transfer_buffer' value: 16r0!

SDL_GPUTransferBufferLocation comment: ''!

!SDL_GPUTransferBufferLocation categoriesForClass!External-Data-Structured! !

!SDL_GPUTransferBufferLocation methodsFor!

offset
	"Answer the <Integer> value of the receiver's 'offset' field."

	^bytes dwordAtOffset: _OffsetOf_offset!

offset: anInteger
	"Set the receiver's 'offset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_offset put: anInteger!

transfer_buffer
	"Answer the <SDL_GPUTransferBuffer> value of the receiver's 'transfer_buffer' field."

	^SDL_GPUTransferBuffer fromAddress: bytes yourAddress!

transfer_buffer: aSDL_GPUTransferBuffer
	"Set the receiver's 'transfer_buffer' field to the value of the argument, aSDL_GPUTransferBuffer"

	aSDL_GPUTransferBuffer
		replaceBytesOf: bytes
		from: ##(_OffsetOf_transfer_buffer + 1)
		to: ##(_OffsetOf_transfer_buffer + SDL_GPUTransferBuffer basicByteSize)
		startingAt: 1! !

!SDL_GPUTransferBufferLocation categoriesForMethods!
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
transfer_buffer!**compiled accessors**!public! !
transfer_buffer:!**compiled accessors**!public! !
!

!SDL_GPUTransferBufferLocation class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #transfer_buffer type: (StructureField type: SDL_GPUTransferBuffer);
		defineField: #offset type: DWORDField new!

getFieldNames
	^#(#offset #transfer_buffer)! !

!SDL_GPUTransferBufferLocation class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

