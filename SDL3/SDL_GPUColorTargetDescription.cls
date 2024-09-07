"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUColorTargetDescription
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_blend_state _OffsetOf_format'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUColorTargetDescription guid: (GUID fromString: '{46afd072-bc12-4632-97f2-fcd79938982a}')!

SDL_GPUColorTargetDescription addClassConstant: '_OffsetOf_blend_state' value: 16r4!
SDL_GPUColorTargetDescription addClassConstant: '_OffsetOf_format' value: 16r0!

SDL_GPUColorTargetDescription comment: ''!

!SDL_GPUColorTargetDescription categoriesForClass!External-Data-Structured! !

!SDL_GPUColorTargetDescription methodsFor!

blend_state
	"Answer the <SDL_GPUColorTargetBlendState> value of the receiver's 'blend_state' field."

	^SDL_GPUColorTargetBlendState fromAddress: bytes yourAddress + _OffsetOf_blend_state!

blend_state: aSDL_GPUColorTargetBlendState
	"Set the receiver's 'blend_state' field to the value of the argument, aSDL_GPUColorTargetBlendState"

	aSDL_GPUColorTargetBlendState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_blend_state + 1)
		to: ##(_OffsetOf_blend_state + SDL_GPUColorTargetBlendState basicByteSize)
		startingAt: 1!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes sdwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_format put: anInteger! !

!SDL_GPUColorTargetDescription categoriesForMethods!
blend_state!**compiled accessors**!public! !
blend_state:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
!

!SDL_GPUColorTargetDescription class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #format type: SDWORDField new;
		defineField: #blend_state type: (StructureField type: SDL_GPUColorTargetBlendState)!

getFieldNames
	^#(#format #blend_state)! !

!SDL_GPUColorTargetDescription class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

