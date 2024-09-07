"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTextureTransferInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_offset _OffsetOf_pixels_per_row _OffsetOf_rows_per_layer _OffsetOf_transfer_buffer'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTextureTransferInfo guid: (GUID fromString: '{eebdf5bd-10c1-4ba3-a2b5-a0ee020d42a2}')!

SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_offset' value: 16r4!
SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_pixels_per_row' value: 16r8!
SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_rows_per_layer' value: 16rC!
SDL_GPUTextureTransferInfo addClassConstant: '_OffsetOf_transfer_buffer' value: 16r0!

SDL_GPUTextureTransferInfo comment: ''!

!SDL_GPUTextureTransferInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUTextureTransferInfo methodsFor!

offset
	"Answer the <Integer> value of the receiver's 'offset' field."

	^bytes dwordAtOffset: _OffsetOf_offset!

offset: anInteger
	"Set the receiver's 'offset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_offset put: anInteger!

pixels_per_row
	"Answer the <Integer> value of the receiver's 'pixels_per_row' field."

	^bytes dwordAtOffset: _OffsetOf_pixels_per_row!

pixels_per_row: anInteger
	"Set the receiver's 'pixels_per_row' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_pixels_per_row put: anInteger!

rows_per_layer
	"Answer the <Integer> value of the receiver's 'rows_per_layer' field."

	^bytes dwordAtOffset: _OffsetOf_rows_per_layer!

rows_per_layer: anInteger
	"Set the receiver's 'rows_per_layer' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_rows_per_layer put: anInteger!

transfer_buffer
	"Answer the <SDL_GPUTransferBuffer> value of the receiver's 'transfer_buffer' field."

	^SDL_GPUTransferBuffer fromAddress: (bytes intPtrAtOffset: _OffsetOf_transfer_buffer)!

transfer_buffer: aSDL_GPUTransferBuffer
	"Set the receiver's 'transfer_buffer' field to the value of the argument, aSDL_GPUTransferBuffer"

	bytes uintPtrAtOffset: _OffsetOf_transfer_buffer put: aSDL_GPUTransferBuffer yourAddress! !

!SDL_GPUTextureTransferInfo categoriesForMethods!
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
pixels_per_row!**compiled accessors**!public! !
pixels_per_row:!**compiled accessors**!public! !
rows_per_layer!**compiled accessors**!public! !
rows_per_layer:!**compiled accessors**!public! !
transfer_buffer!**compiled accessors**!public! !
transfer_buffer:!**compiled accessors**!public! !
!

!SDL_GPUTextureTransferInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #transfer_buffer type: (PointerField type: SDL_GPUTransferBuffer);
		defineField: #offset type: DWORDField new;
		defineField: #pixels_per_row type: DWORDField new;
		defineField: #rows_per_layer type: DWORDField new!

getFieldNames
	^#(#transfer_buffer #offset #pixels_per_row #rows_per_layer)! !

!SDL_GPUTextureTransferInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

