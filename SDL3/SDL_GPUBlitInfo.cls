"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUBlitInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clear_color _OffsetOf_cycle _OffsetOf_destination _OffsetOf_filter _OffsetOf_flip_mode _OffsetOf_load_op _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_source'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUBlitInfo guid: (GUID fromString: '{be15f804-296d-400a-a4c5-0f7797653ec4}')!

SDL_GPUBlitInfo addClassConstant: '_OffsetOf_clear_color' value: 16r3C!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_cycle' value: 16r54!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_destination' value: 16r1C!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_filter' value: 16r50!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_flip_mode' value: 16r4C!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_load_op' value: 16r38!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_padding1' value: 16r55!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_padding2' value: 16r56!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_padding3' value: 16r57!
SDL_GPUBlitInfo addClassConstant: '_OffsetOf_source' value: 16r0!

SDL_GPUBlitInfo comment: ''!

!SDL_GPUBlitInfo categoriesForClass!Unclassified! !

!SDL_GPUBlitInfo methodsFor!

clear_color
	"Answer the <SDL_FColor> value of the receiver's 'clear_color' field."

	^SDL_FColor fromAddress: bytes yourAddress + _OffsetOf_clear_color!

clear_color: aSDL_FColor
	"Set the receiver's 'clear_color' field to the value of the argument, aSDL_FColor"

	aSDL_FColor
		replaceBytesOf: bytes
		from: ##(_OffsetOf_clear_color + 1)
		to: ##(_OffsetOf_clear_color + SDL_FColor basicByteSize)
		startingAt: 1!

cycle
	"Answer the <Boolean> value of the receiver's 'cycle' field."

	^(bytes byteAtOffset: _OffsetOf_cycle) asBoolean!

cycle: aBoolean
	"Set the receiver's 'cycle' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_cycle put: aBoolean asParameter!

destination
	"Answer the <SDL_GPUBlitRegion> value of the receiver's 'destination' field."

	^SDL_GPUBlitRegion fromAddress: bytes yourAddress + _OffsetOf_destination!

destination: aSDL_GPUBlitRegion
	"Set the receiver's 'destination' field to the value of the argument, aSDL_GPUBlitRegion"

	aSDL_GPUBlitRegion
		replaceBytesOf: bytes
		from: ##(_OffsetOf_destination + 1)
		to: ##(_OffsetOf_destination + SDL_GPUBlitRegion basicByteSize)
		startingAt: 1!

filter
	"Answer the <Integer> value of the receiver's 'filter' field."

	^bytes sdwordAtOffset: _OffsetOf_filter!

filter: anInteger
	"Set the receiver's 'filter' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_filter put: anInteger!

flip_mode
	"Answer the <Integer> value of the receiver's 'flip_mode' field."

	^bytes sdwordAtOffset: _OffsetOf_flip_mode!

flip_mode: anInteger
	"Set the receiver's 'flip_mode' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_flip_mode put: anInteger!

load_op
	"Answer the <Integer> value of the receiver's 'load_op' field."

	^bytes sdwordAtOffset: _OffsetOf_load_op!

load_op: anInteger
	"Set the receiver's 'load_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_load_op put: anInteger!

source
	"Answer the <SDL_GPUBlitRegion> value of the receiver's 'source' field."

	^SDL_GPUBlitRegion fromAddress: bytes yourAddress!

source: aSDL_GPUBlitRegion
	"Set the receiver's 'source' field to the value of the argument, aSDL_GPUBlitRegion"

	aSDL_GPUBlitRegion
		replaceBytesOf: bytes
		from: ##(_OffsetOf_source + 1)
		to: ##(_OffsetOf_source + SDL_GPUBlitRegion basicByteSize)
		startingAt: 1! !

!SDL_GPUBlitInfo categoriesForMethods!
clear_color!**compiled accessors**!public! !
clear_color:!**compiled accessors**!public! !
cycle!**compiled accessors**!public! !
cycle:!**compiled accessors**!public! !
destination!public! !
destination:!**compiled accessors**!public! !
filter!**compiled accessors**!public! !
filter:!**compiled accessors**!public! !
flip_mode!**compiled accessors**!public! !
flip_mode:!**compiled accessors**!public! !
load_op!**compiled accessors**!public! !
load_op:!**compiled accessors**!public! !
source!**compiled accessors**!public! !
source:!**compiled accessors**!public! !
!

!SDL_GPUBlitInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #source type: (StructureField type: SDL_GPUBlitRegion);
		defineField: #destination type: (StructureField type: SDL_GPUBlitRegion);
		defineField: #load_op type: SDWORDField new;
		defineField: #clear_color type: (StructureField type: SDL_FColor);
		defineField: #flip_mode type: SDWORDField new;
		defineField: #filter type: SDWORDField new;
		defineField: #cycle type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller!

getFieldNames
	^#(#source #destination #load_op #clear_color #flip_mode #filter #cycle)! !

!SDL_GPUBlitInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

