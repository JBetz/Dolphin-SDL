"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_MouseWheelEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_direction _OffsetOf_mouseX _OffsetOf_mouseY _OffsetOf_preciseX _OffsetOf_preciseY _OffsetOf_timestamp _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_MouseWheelEvent guid: (GUID fromString: '{43665aae-f4c0-47a2-ba25-3c6da6024eb2}')!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_direction' value: 16r18!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_mouseX' value: 16r24!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_mouseY' value: 16r28!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_preciseX' value: 16r1C!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_preciseY' value: 16r20!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_which' value: 16rC!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_x' value: 16r10!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_y' value: 16r14!
SDL_MouseWheelEvent comment: ''!
!SDL_MouseWheelEvent categoriesForClass!External-Data-Structured! !
!SDL_MouseWheelEvent methodsFor!

direction
	"Answer the <Integer> value of the receiver's 'direction' field."

	^bytes dwordAtOffset: _OffsetOf_direction!

direction: anInteger
	"Set the receiver's 'direction' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_direction put: anInteger!

isVertical
	^self direction = 0!

mouseX
	"Answer the <Integer> value of the receiver's 'mouseX' field."

	^bytes sdwordAtOffset: _OffsetOf_mouseX!

mouseX: anInteger
	"Set the receiver's 'mouseX' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_mouseX put: anInteger!

mouseY
	"Answer the <Integer> value of the receiver's 'mouseY' field."

	^bytes sdwordAtOffset: _OffsetOf_mouseY!

mouseY: anInteger
	"Set the receiver's 'mouseY' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_mouseY put: anInteger!

preciseX
	"Answer the <Float> value of the receiver's 'preciseX' field."

	^bytes floatAtOffset: _OffsetOf_preciseX!

preciseX: aFloat
	"Set the receiver's 'preciseX' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_preciseX put: aFloat!

preciseY
	"Answer the <Float> value of the receiver's 'preciseY' field."

	^bytes floatAtOffset: _OffsetOf_preciseY!

preciseY: aFloat
	"Set the receiver's 'preciseY' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_preciseY put: aFloat!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

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
!SDL_MouseWheelEvent categoriesForMethods!
direction!**compiled accessors**!public! !
direction:!**compiled accessors**!public! !
isVertical!public! !
mouseX!**compiled accessors**!public! !
mouseX:!**compiled accessors**!public! !
mouseY!**compiled accessors**!public! !
mouseY:!**compiled accessors**!public! !
preciseX!**compiled accessors**!public! !
preciseX:!**compiled accessors**!public! !
preciseY!**compiled accessors**!public! !
preciseY:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
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
	"SDL_MouseWheelEvent compileDefinition
	
	typedef struct SDL_MouseWheelEvent
	{
	    Uint32 type;        /**< ::SDL_MOUSEWHEEL */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The window with mouse focus, if any */
	    Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
	    Sint32 x;           /**< The amount scrolled horizontally, positive to the right and negative to the left */
	    Sint32 y;           /**< The amount scrolled vertically, positive away from the user and negative toward the user */
	    Uint32 direction;   /**< Set to one of the SDL_MOUSEWHEEL_* defines. When FLIPPED the values in X and Y will be opposite. Multiply by -1 to change them back */
	    float preciseX;     /**< The amount scrolled horizontally, positive to the right and negative to the left, with float precision (added in 2.0.18) */
	    float preciseY;     /**< The amount scrolled vertically, positive away from the user and negative toward the user, with float precision (added in 2.0.18) */
	    Sint32 mouseX;      /**< X coordinate, relative to window (added in 2.26.0) */
	    Sint32 mouseY;      /**< Y coordinate, relative to window (added in 2.26.0) */
	} SDL_MouseWheelEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #direction type: DWORDField new;
		defineField: #preciseX type: FLOATField new;
		defineField: #preciseY type: FLOATField new;
		defineField: #mouseX type: SDWORDField new;
		defineField: #mouseY type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #which #x #y #direction #preciseX #preciseY #mouseX #mouseY)! !
!SDL_MouseWheelEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

