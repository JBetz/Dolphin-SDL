"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_FPoint
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_FPoint guid: (GUID fromString: '{769cdeaf-4e94-46f7-802e-d417a07a547b}')!
SDL_FPoint addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_FPoint addClassConstant: '_OffsetOf_y' value: 16r4!
SDL_FPoint comment: ''!
!SDL_FPoint categoriesForClass!External-Data-Structured! !
!SDL_FPoint methodsFor!

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
!SDL_FPoint categoriesForMethods!
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_FPoint class methodsFor!

defineFields
	"SDL_FPoint compileDefinition

	typedef struct SDL_FPoint
	{
	    float x;
	    float y;
	} SDL_FPoint;"

	self
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new!

getFieldNames
	^#(#x #y)! !
!SDL_FPoint class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

