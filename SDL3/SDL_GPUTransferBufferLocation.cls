"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTransferBufferLocation
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_offset _OffsetOf_transfer_buffer'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTransferBufferLocation guid: (GUID fromString: '{7138f35d-7060-4416-a728-00f10e48baa7}')!

SDL_GPUTransferBufferLocation addClassConstant: '_OffsetOf_offset' value: 16r4!
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

	^SDL_GPUTransferBuffer fromAddress: (bytes intPtrAtOffset: _OffsetOf_transfer_buffer)!

transfer_buffer: aSDL_GPUTransferBuffer
	"Set the receiver's 'transfer_buffer' field to the value of the argument, aSDL_GPUTransferBuffer"

	bytes uintPtrAtOffset: _OffsetOf_transfer_buffer put: aSDL_GPUTransferBuffer yourAddress! !

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
		defineField: #transfer_buffer type: (PointerField type: SDL_GPUTransferBuffer);
		defineField: #offset type: DWORDField new!

getFieldNames
	^#(#transfer_buffer #offset)! !

!SDL_GPUTransferBufferLocation class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

