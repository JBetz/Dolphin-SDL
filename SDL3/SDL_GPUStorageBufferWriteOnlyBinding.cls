"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUStorageBufferWriteOnlyBinding
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_buffer _OffsetOf_cycle'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUStorageBufferWriteOnlyBinding guid: (GUID fromString: '{58883d3c-9fe8-49e2-95f3-cbd2bab51e5f}')!

SDL_GPUStorageBufferWriteOnlyBinding addClassConstant: '_OffsetOf_buffer' value: 16r0!
SDL_GPUStorageBufferWriteOnlyBinding addClassConstant: '_OffsetOf_cycle' value: 16r0!

SDL_GPUStorageBufferWriteOnlyBinding comment: ''!

!SDL_GPUStorageBufferWriteOnlyBinding categoriesForClass!External-Data-Structured! !

!SDL_GPUStorageBufferWriteOnlyBinding methodsFor!

buffer
	"Answer the <SDL_GPUBuffer> value of the receiver's 'buffer' field."

	^SDL_GPUBuffer fromAddress: bytes yourAddress!

buffer: aSDL_GPUBuffer
	"Set the receiver's 'buffer' field to the value of the argument, aSDL_GPUBuffer"

	aSDL_GPUBuffer
		replaceBytesOf: bytes
		from: ##(_OffsetOf_buffer + 1)
		to: ##(_OffsetOf_buffer + SDL_GPUBuffer basicByteSize)
		startingAt: 1!

cycle
	"Answer the <Boolean> value of the receiver's 'cycle' field."

	^(bytes dwordAtOffset: _OffsetOf_cycle) asBoolean!

cycle: aBoolean
	"Set the receiver's 'cycle' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_cycle put: aBoolean asParameter! !

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
		defineField: #buffer type: (StructureField type: SDL_GPUBuffer);
		defineField: #cycle type: BOOLField new!

getFieldNames
	^#(#buffer #cycle)! !

!SDL_GPUStorageBufferWriteOnlyBinding class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

