"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_DialogFileFilter
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_name _OffsetOf_pattern'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_DialogFileFilter guid: (GUID fromString: '{d366e089-4916-490e-91f0-f79b1adf767d}')!

SDL_DialogFileFilter addClassConstant: '_OffsetOf_name' value: 16r0!
SDL_DialogFileFilter addClassConstant: '_OffsetOf_pattern' value: 16r4!

SDL_DialogFileFilter comment: ''!

!SDL_DialogFileFilter categoriesForClass!External-Data-Structured! !

!SDL_DialogFileFilter methodsFor!

name
	"Answer the <Utf8String> value of the receiver's 'name' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_name)!

name: anUtf8String
	"Set the receiver's 'name' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_name put: anUtf8String yourAddress!

pattern
	"Answer the <Utf8String> value of the receiver's 'pattern' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_pattern)!

pattern: anUtf8String
	"Set the receiver's 'pattern' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_pattern put: anUtf8String yourAddress! !

!SDL_DialogFileFilter categoriesForMethods!
name!**compiled accessors**!public! !
name:!**compiled accessors**!public! !
pattern!**compiled accessors**!public! !
pattern:!**compiled accessors**!public! !
!

!SDL_DialogFileFilter class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #name type: (PointerField type: Utf8String);
		defineField: #pattern type: (PointerField type: Utf8String)!

getFieldNames
	^#(#name #pattern)! !

!SDL_DialogFileFilter class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

