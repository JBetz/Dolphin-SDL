"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUMultisampleState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_enable_mask _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_sample_count _OffsetOf_sample_mask'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUMultisampleState guid: (GUID fromString: '{f7835dc1-f7bd-467a-8ef0-d7166930946a}')!

SDL_GPUMultisampleState addClassConstant: '_OffsetOf_enable_mask' value: 16r8!
SDL_GPUMultisampleState addClassConstant: '_OffsetOf_padding1' value: 16r9!
SDL_GPUMultisampleState addClassConstant: '_OffsetOf_padding2' value: 16rA!
SDL_GPUMultisampleState addClassConstant: '_OffsetOf_padding3' value: 16rB!
SDL_GPUMultisampleState addClassConstant: '_OffsetOf_sample_count' value: 16r0!
SDL_GPUMultisampleState addClassConstant: '_OffsetOf_sample_mask' value: 16r4!

SDL_GPUMultisampleState comment: ''!

!SDL_GPUMultisampleState categoriesForClass!External-Data-Structured! !

!SDL_GPUMultisampleState methodsFor!

enable_mask
	"Answer the <Boolean> value of the receiver's 'enable_mask' field."

	^(bytes byteAtOffset: _OffsetOf_enable_mask) asBoolean!

enable_mask: aBoolean
	"Set the receiver's 'enable_mask' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_mask put: aBoolean asParameter!

padding1
	"Answer the <Integer> value of the receiver's 'padding1' field."

	^bytes byteAtOffset: _OffsetOf_padding1!

padding1: anInteger
	"Set the receiver's 'padding1' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding1 put: anInteger!

padding2
	"Answer the <Integer> value of the receiver's 'padding2' field."

	^bytes byteAtOffset: _OffsetOf_padding2!

padding2: anInteger
	"Set the receiver's 'padding2' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding2 put: anInteger!

padding3
	"Answer the <Integer> value of the receiver's 'padding3' field."

	^bytes byteAtOffset: _OffsetOf_padding3!

padding3: anInteger
	"Set the receiver's 'padding3' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding3 put: anInteger!

sample_count
	"Answer the <Integer> value of the receiver's 'sample_count' field."

	^bytes sdwordAtOffset: _OffsetOf_sample_count!

sample_count: anInteger
	"Set the receiver's 'sample_count' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_sample_count put: anInteger!

sample_mask
	"Answer the <Integer> value of the receiver's 'sample_mask' field."

	^bytes dwordAtOffset: _OffsetOf_sample_mask!

sample_mask: anInteger
	"Set the receiver's 'sample_mask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_sample_mask put: anInteger! !

!SDL_GPUMultisampleState categoriesForMethods!
enable_mask!public! !
enable_mask:!public! !
padding1!public! !
padding1:!public! !
padding2!public! !
padding2:!public! !
padding3!public! !
padding3:!public! !
sample_count!public! !
sample_count:!public! !
sample_mask!public! !
sample_mask:!public! !
!

!SDL_GPUMultisampleState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #sample_count type: SDWORDField new;
		defineField: #sample_mask type: DWORDField new;
		defineField: #enable_mask type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller!

getFieldNames
	^#(#sample_count #sample_mask #enable_mask)! !

!SDL_GPUMultisampleState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

