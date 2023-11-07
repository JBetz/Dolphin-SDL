"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Version
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_major _OffsetOf_minor _OffsetOf_patch'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Version guid: (GUID fromString: '{f0fdc22d-3138-4c1d-b7b7-df66913fbbed}')!
SDL_Version addClassConstant: '_OffsetOf_major' value: 16r0!
SDL_Version addClassConstant: '_OffsetOf_minor' value: 16r1!
SDL_Version addClassConstant: '_OffsetOf_patch' value: 16r2!
SDL_Version comment: ''!
!SDL_Version categoriesForClass!External-Data-Structured! !
!SDL_Version methodsFor!

major
	"Answer the <Integer> value of the receiver's 'major' field."

	^bytes byteAtOffset: _OffsetOf_major!

major: anInteger
	"Set the receiver's 'major' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_major put: anInteger!

minor
	"Answer the <Integer> value of the receiver's 'minor' field."

	^bytes byteAtOffset: _OffsetOf_minor!

minor: anInteger
	"Set the receiver's 'minor' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_minor put: anInteger!

patch
	"Answer the <Integer> value of the receiver's 'patch' field."

	^bytes byteAtOffset: _OffsetOf_patch!

patch: anInteger
	"Set the receiver's 'patch' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_patch put: anInteger! !
!SDL_Version categoriesForMethods!
major!**compiled accessors**!public! !
major:!**compiled accessors**!public! !
minor!**compiled accessors**!public! !
minor:!**compiled accessors**!public! !
patch!**compiled accessors**!public! !
patch:!**compiled accessors**!public! !
!

!SDL_Version class methodsFor!

defineFields
	"SDL_Version compileDefinition

	typedef struct SDL_version
	{
	    Uint8 major;        /**< major version */
	    Uint8 minor;        /**< minor version */
	    Uint8 patch;        /**< update version */
	} SDL_version;"

	self
		defineField: #major type: BYTEField new;
		defineField: #minor type: BYTEField new;
		defineField: #patch type: BYTEField new!

getFieldNames
	^#(#major #minor #patch)! !
!SDL_Version class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

