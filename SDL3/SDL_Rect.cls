"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Rect
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_h _OffsetOf_w _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Rect guid: (GUID fromString: '{51dd2f00-9366-49f1-a65c-856e2abbf2a3}')!
SDL_Rect addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_Rect addClassConstant: '_OffsetOf_w' value: 16r8!
SDL_Rect addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_Rect addClassConstant: '_OffsetOf_y' value: 16r4!
SDL_Rect comment: ''!
!SDL_Rect categoriesForClass!Kernel-Objects! !
!SDL_Rect methodsFor!

asRectangle
	^Rectangle origin: self origin extent: self extent!

extent
	^self w @ self h!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

h: anInteger
	"Set the receiver's 'h' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_h put: anInteger!

intersect: aSDL_Rect 
	| result |
	result := SDL_Rect new.
	SDL3Library default getRectIntersection_a: self b: aSDL_Rect result: result.
	^result!

origin
	^self x @ self y!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w!

w: anInteger
	"Set the receiver's 'w' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_w put: anInteger!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger! !
!SDL_Rect categoriesForMethods!
asRectangle!public! !
extent!public! !
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
intersect:!public! !
origin!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_Rect class methodsFor!

defineFields
	"SDL_Rect compileDefinition

	typedef struct SDL_Rect
	{
	    int x, y;
	    int w, h;
	} SDL_Rect;"

	self
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #w type: SDWORDField new;
		defineField: #h type: SDWORDField new!

getFieldNames
	^#(#x #y #w #h)! !
!SDL_Rect class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

