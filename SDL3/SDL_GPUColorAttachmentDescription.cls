"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUColorAttachmentDescription
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_blend_state _OffsetOf_format'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUColorAttachmentDescription guid: (GUID fromString: '{46afd072-bc12-4632-97f2-fcd79938982a}')!

SDL_GPUColorAttachmentDescription addClassConstant: '_OffsetOf_blend_state' value: 16r4!
SDL_GPUColorAttachmentDescription addClassConstant: '_OffsetOf_format' value: 16r0!

SDL_GPUColorAttachmentDescription comment: ''!

!SDL_GPUColorAttachmentDescription categoriesForClass!External-Data-Structured! !

!SDL_GPUColorAttachmentDescription methodsFor!

blend_state
	"Answer the <SDL_GPUColorAttachmentBlendState> value of the receiver's 'blend_state' field."

	^SDL_GPUColorAttachmentBlendState fromAddress: bytes yourAddress + _OffsetOf_blend_state!

blend_state: aSDL_GPUColorAttachmentBlendState
	"Set the receiver's 'blend_state' field to the value of the argument, aSDL_GPUColorAttachmentBlendState"

	aSDL_GPUColorAttachmentBlendState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_blend_state + 1)
		to: ##(_OffsetOf_blend_state + SDL_GPUColorAttachmentBlendState basicByteSize)
		startingAt: 1!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger! !

!SDL_GPUColorAttachmentDescription categoriesForMethods!
blend_state!**compiled accessors**!public! !
blend_state:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
!

!SDL_GPUColorAttachmentDescription class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #format type: DWORDField new;
		defineField: #blend_state type: (StructureField type: SDL_GPUColorAttachmentBlendState)!

getFieldNames
	^#(#format #blend_state)! !

!SDL_GPUColorAttachmentDescription class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

