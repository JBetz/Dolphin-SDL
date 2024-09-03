"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUBufferRegion
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_buffer _OffsetOf_offset _OffsetOf_size'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUBufferRegion guid: (GUID fromString: '{7468eff6-12f7-4931-8785-dbb63d9bb65f}')!

SDL_GPUBufferRegion addClassConstant: '_OffsetOf_buffer' value: 16r0!
SDL_GPUBufferRegion addClassConstant: '_OffsetOf_offset' value: 16r4!
SDL_GPUBufferRegion addClassConstant: '_OffsetOf_size' value: 16r8!

SDL_GPUBufferRegion comment: ''!

!SDL_GPUBufferRegion categoriesForClass!External-Data-Structured! !

!SDL_GPUBufferRegion methodsFor!

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

	bytes dwordAtOffset: _OffsetOf_offset put: anInteger!

size
	"Answer the <Integer> value of the receiver's 'size' field."

	^bytes dwordAtOffset: _OffsetOf_size!

size: anInteger
	"Set the receiver's 'size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_size put: anInteger! !

!SDL_GPUBufferRegion categoriesForMethods!
buffer!**compiled accessors**!public! !
buffer:!**compiled accessors**!public! !
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
size!**compiled accessors**!public! !
size:!**compiled accessors**!public! !
!

!SDL_GPUBufferRegion class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #buffer type: (PointerField type: SDL_GPUBuffer);
		defineField: #offset type: DWORDField new;
		defineField: #size type: DWORDField new!

getFieldNames
	^#(#buffer #offset #size)! !

!SDL_GPUBufferRegion class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

