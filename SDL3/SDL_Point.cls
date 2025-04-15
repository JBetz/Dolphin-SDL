"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Point
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Point guid: (GUID fromString: '{a3faa30a-cfef-41b8-81a8-1c9701f045e8}')!

SDL_Point addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_Point addClassConstant: '_OffsetOf_y' value: 16r4!

SDL_Point comment: ''!

!SDL_Point categoriesForClass!External-Data-Structured! !

!SDL_Point methodsFor!

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

!SDL_Point categoriesForMethods!
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_Point class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new!

getFieldNames
	^#(#x #y)! !

!SDL_Point class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

