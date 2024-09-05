"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUStorageBufferWriteOnlyBinding
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_buffer _OffsetOf_cycle _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUStorageBufferWriteOnlyBinding guid: (GUID fromString: '{58883d3c-9fe8-49e2-95f3-cbd2bab51e5f}')!

SDL_GPUStorageBufferWriteOnlyBinding addClassConstant: '_OffsetOf_buffer' value: 16r0!
SDL_GPUStorageBufferWriteOnlyBinding addClassConstant: '_OffsetOf_cycle' value: 16r4!
SDL_GPUStorageBufferWriteOnlyBinding addClassConstant: '_OffsetOf_padding1' value: 16r5!
SDL_GPUStorageBufferWriteOnlyBinding addClassConstant: '_OffsetOf_padding2' value: 16r6!
SDL_GPUStorageBufferWriteOnlyBinding addClassConstant: '_OffsetOf_padding3' value: 16r7!

SDL_GPUStorageBufferWriteOnlyBinding comment: ''!

!SDL_GPUStorageBufferWriteOnlyBinding categoriesForClass!External-Data-Structured! !

!SDL_GPUStorageBufferWriteOnlyBinding methodsFor!

buffer
	"Answer the <SDL_GPUBuffer> value of the receiver's 'buffer' field."

	^SDL_GPUBuffer fromAddress: (bytes intPtrAtOffset: _OffsetOf_buffer)!

buffer: aSDL_GPUBuffer
	"Set the receiver's 'buffer' field to the value of the argument, aSDL_GPUBuffer"

	bytes uintPtrAtOffset: _OffsetOf_buffer put: aSDL_GPUBuffer yourAddress!

cycle
	"Answer the <Boolean> value of the receiver's 'cycle' field."

	^(bytes byteAtOffset: _OffsetOf_cycle) asBoolean!

cycle: aBoolean
	"Set the receiver's 'cycle' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_cycle put: aBoolean asParameter! !

!SDL_GPUStorageBufferWriteOnlyBinding categoriesForMethods!
buffer!**compiled accessors**!public! !
buffer:!**compiled accessors**!public! !
cycle!**compiled accessors**!public! !
cycle:!**compiled accessors**!public! !
!

!SDL_GPUStorageBufferWriteOnlyBinding class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #buffer type: (PointerField type: SDL_GPUBuffer);
		defineField: #cycle type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller!

getFieldNames
	^#(#buffer #cycle)! !

!SDL_GPUStorageBufferWriteOnlyBinding class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

