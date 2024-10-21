"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_FRect
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_h _OffsetOf_w _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_FRect guid: (GUID fromString: '{44252d5f-21b2-4f7f-94b5-96725debce5b}')!

SDL_FRect addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_FRect addClassConstant: '_OffsetOf_w' value: 16r8!
SDL_FRect addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_FRect addClassConstant: '_OffsetOf_y' value: 16r4!

SDL_FRect comment: ''!

!SDL_FRect categoriesForClass!External-Data-Structured! !

!SDL_FRect methodsFor!

h
	"Answer the <Float> value of the receiver's 'h' field."

	^bytes floatAtOffset: _OffsetOf_h!

h: aFloat
	"Set the receiver's 'h' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_h put: aFloat!

w
	"Answer the <Float> value of the receiver's 'w' field."

	^bytes floatAtOffset: _OffsetOf_w!

w: aFloat
	"Set the receiver's 'w' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_w put: aFloat!

x
	"Answer the <Float> value of the receiver's 'x' field."

	^bytes floatAtOffset: _OffsetOf_x!

x: aFloat
	"Set the receiver's 'x' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_x put: aFloat!

y
	"Answer the <Float> value of the receiver's 'y' field."

	^bytes floatAtOffset: _OffsetOf_y!

y: aFloat
	"Set the receiver's 'y' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_y put: aFloat! !

!SDL_FRect categoriesForMethods!
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_FRect class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new;
		defineField: #w type: FLOATField new;
		defineField: #h type: FLOATField new!

getFieldNames
	^#(#x #y #w #h)! !

!SDL_FRect class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

