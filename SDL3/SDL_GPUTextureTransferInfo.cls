"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTextureTransferInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_image_height _OffsetOf_image_pitch _OffsetOf_offset _OffsetOf_transfer_buffer'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTextureTransferInfo guid: (GUID fromString: '{eebdf5bd-10c1-4ba3-a2b5-a0ee020d42a2}')!

SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_image_height' value: 16rC!
SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_image_pitch' value: 16r8!
SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_offset' value: 16r4!
SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_transfer_buffer' value: 16r0!

SDL_GPUTextureTransferInfo comment: ''!

!SDL_GPUTextureTransferInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUTextureTransferInfo methodsFor!

image_height
	"Answer the <Integer> value of the receiver's 'image_height' field."

	^bytes dwordAtOffset: _OffsetOf_image_height!

image_height: anInteger
	"Set the receiver's 'image_height' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_image_height put: anInteger!

image_pitch
	"Answer the <Integer> value of the receiver's 'image_pitch' field."

	^bytes dwordAtOffset: _OffsetOf_image_pitch!

image_pitch: anInteger
	"Set the receiver's 'image_pitch' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_image_pitch put: anInteger!

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

!SDL_GPUTextureTransferInfo categoriesForMethods!
image_height!**compiled accessors**!public! !
image_height:!**compiled accessors**!public! !
image_pitch!**compiled accessors**!public! !
image_pitch:!**compiled accessors**!public! !
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
transfer_buffer!**compiled accessors**!public! !
transfer_buffer:!**compiled accessors**!public! !
!

!SDL_GPUTextureTransferInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #transfer_buffer type: (PointerField type: SDL_GPUTransferBuffer);
		defineField: #offset type: DWORDField new;
		defineField: #image_pitch type: DWORDField new;
		defineField: #image_height type: DWORDField new!

getFieldNames
	^#(#transfer_buffer #offset #image_pitch #image_height)! !

!SDL_GPUTextureTransferInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

