"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Color
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_a _OffsetOf_b _OffsetOf_g _OffsetOf_r'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Color guid: (GUID fromString: '{f3a18d8d-6963-4791-80b9-ca29582c6204}')!

SDL_Color addClassConstant: '_OffsetOf_a' value: 16r3!
SDL_Color addClassConstant: '_OffsetOf_b' value: 16r2!
SDL_Color addClassConstant: '_OffsetOf_g' value: 16r1!
SDL_Color addClassConstant: '_OffsetOf_r' value: 16r0!

SDL_Color comment: ''!

!SDL_Color categoriesForClass!External-Data-Structured! !

!SDL_Color methodsFor!

a
	"Answer the <Integer> value of the receiver's 'a' field."

	^bytes byteAtOffset: _OffsetOf_a!

a: anInteger
	"Set the receiver's 'a' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_a put: anInteger!

b
	"Answer the <Integer> value of the receiver's 'b' field."

	^bytes byteAtOffset: _OffsetOf_b!

b: anInteger
	"Set the receiver's 'b' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_b put: anInteger!

g
	"Answer the <Integer> value of the receiver's 'g' field."

	^bytes byteAtOffset: _OffsetOf_g!

g: anInteger
	"Set the receiver's 'g' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_g put: anInteger!

r
	"Answer the <Integer> value of the receiver's 'r' field."

	^bytes byteAtOffset: _OffsetOf_r!

r: anInteger
	"Set the receiver's 'r' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_r put: anInteger! !

!SDL_Color categoriesForMethods!
a!**compiled accessors**!public! !
a:!**compiled accessors**!public! !
b!**compiled accessors**!public! !
b:!**compiled accessors**!public! !
g!**compiled accessors**!public! !
g:!**compiled accessors**!public! !
r!**compiled accessors**!public! !
r:!**compiled accessors**!public! !
!

!SDL_Color class methodsFor!

defineFields
	"SDL_Color compileDefinition
	typedef struct SDL_Color
	{
	    Uint8 r;
	    Uint8 g;
	    Uint8 b;
	    Uint8 a;
	} SDL_Color;"

	self
		defineField: #r type: BYTEField new;
		defineField: #g type: BYTEField new;
		defineField: #b type: BYTEField new;
		defineField: #a type: BYTEField new!

getFieldNames
	^#(#r #g #b #a)! !

!SDL_Color class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

