﻿"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_MouseWheelEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_direction _OffsetOf_mouseX _OffsetOf_mouseY _OffsetOf_reserved _OffsetOf_timestamp _OffsetOf_type _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_MouseWheelEvent guid: (GUID fromString: '{43665aae-f4c0-47a2-ba25-3c6da6024eb2}')!

SDL_MouseWheelEvent addClassConstant: '_OffsetOf_direction' value: 16r20!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_mouseX' value: 16r24!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_mouseY' value: 16r28!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_which' value: 16r14!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_x' value: 16r18!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_y' value: 16r1C!

SDL_MouseWheelEvent comment: ''!

!SDL_MouseWheelEvent categoriesForClass!External-Data-Structured! !

!SDL_MouseWheelEvent methodsFor!

direction
	"Answer the <Integer> value of the receiver's 'direction' field."

	^bytes dwordAtOffset: _OffsetOf_direction!

direction: anInteger
	"Set the receiver's 'direction' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_direction put: anInteger!

isDown
	^self y < 0!

isLeft
	^self x < 0!

isRight
	^self x > 0!

isUp
	^self y > 0!

isVertical
	^self x > 0!

mouseX
	"Answer the <Float> value of the receiver's 'mouseX' field."

	^bytes floatAtOffset: _OffsetOf_mouseX!

mouseX: aFloat
	"Set the receiver's 'mouseX' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_mouseX put: aFloat!

mouseY
	"Answer the <Float> value of the receiver's 'mouseY' field."

	^bytes floatAtOffset: _OffsetOf_mouseY!

mouseY: aFloat
	"Set the receiver's 'mouseY' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_mouseY put: aFloat!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes qwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes qwordAtOffset: _OffsetOf_timestamp put: anInteger!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes dwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_type put: anInteger!

which
	"Answer the <Integer> value of the receiver's 'which' field."

	^bytes dwordAtOffset: _OffsetOf_which!

which: anInteger
	"Set the receiver's 'which' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_which put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger!

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

!SDL_MouseWheelEvent categoriesForMethods!
direction!**compiled accessors**!public! !
direction:!**compiled accessors**!public! !
isDown!public! !
isLeft!public! !
isRight!public! !
isUp!public! !
isVertical!public! !
mouseX!**compiled accessors**!public! !
mouseX:!**compiled accessors**!public! !
mouseY!**compiled accessors**!public! !
mouseY:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
which!**compiled accessors**!public! !
which:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_MouseWheelEvent class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new;
		defineField: #direction type: DWORDField new;
		defineField: #mouseX type: FLOATField new;
		defineField: #mouseY type: FLOATField new;
		byteSize: 128!

getFieldNames
	^#(#type #timestamp #windowID #which #x #y #direction #mouseX #mouseY)! !

!SDL_MouseWheelEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

