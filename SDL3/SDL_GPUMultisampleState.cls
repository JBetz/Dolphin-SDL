"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUMultisampleState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_sample_count _OffsetOf_sample_mask'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUMultisampleState guid: (GUID fromString: '{f7835dc1-f7bd-467a-8ef0-d7166930946a}')!

SDL_GPUMultisampleState addClassConstant: '_OffsetOf_sample_count' value: 16r0!
SDL_GPUMultisampleState addClassConstant: '_OffsetOf_sample_mask' value: 16r4!

SDL_GPUMultisampleState comment: ''!

!SDL_GPUMultisampleState categoriesForClass!External-Data-Structured! !

!SDL_GPUMultisampleState methodsFor!

sample_count
	"Answer the <Integer> value of the receiver's 'sample_count' field."

	^bytes dwordAtOffset: _OffsetOf_sample_count!

sample_count: anInteger
	"Set the receiver's 'sample_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_sample_count put: anInteger!

sample_mask
	"Answer the <Integer> value of the receiver's 'sample_mask' field."

	^bytes dwordAtOffset: _OffsetOf_sample_mask!

sample_mask: anInteger
	"Set the receiver's 'sample_mask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_sample_mask put: anInteger! !

!SDL_GPUMultisampleState categoriesForMethods!
sample_count!**compiled accessors**!public! !
sample_count:!**compiled accessors**!public! !
sample_mask!**compiled accessors**!public! !
sample_mask:!**compiled accessors**!public! !
!

!SDL_GPUMultisampleState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #sample_count type: DWORDField new;
		defineField: #sample_mask type: DWORDField new!

getFieldNames
	^#(#sample_count #sample_mask)! !

!SDL_GPUMultisampleState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

