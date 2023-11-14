"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_MouseButtonEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_button _OffsetOf_clicks _OffsetOf_padding1 _OffsetOf_state _OffsetOf_timestamp _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_MouseButtonEvent guid: (GUID fromString: '{7826f1b9-36e4-401a-9541-32b1ae2f2c99}')!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_button' value: 16r10!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_clicks' value: 16r12!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_padding1' value: 16r13!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_state' value: 16r11!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_which' value: 16rC!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_x' value: 16r14!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_y' value: 16r18!
SDL_MouseButtonEvent comment: ''!
!SDL_MouseButtonEvent categoriesForClass!External-Data-Structured! !
!SDL_MouseButtonEvent methodsFor!

clicks
	"Answer the <Integer> value of the receiver's 'clicks' field."

	^bytes byteAtOffset: _OffsetOf_clicks!

clicks: anInteger
	"Set the receiver's 'clicks' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_clicks put: anInteger!

isDoubleClick
	^self clicks = 2!

isLeftButton
	^self button = 1!

isMiddleButton
	^self button = 2!

isMouseButtonDown
	^self type = SDL_MOUSEBUTTONDOWN!

isMouseButtonUp
	^self type = SDL_MOUSEBUTTONUP!

isRightButton
	^self button = 3!

isSingleClick
	^self clicks = 1!

isTripleClick
	^self clicks = 3!

padding1
	"Answer the <Integer> value of the receiver's 'padding1' field."

	^bytes byteAtOffset: _OffsetOf_padding1!

padding1: anInteger
	"Set the receiver's 'padding1' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding1 put: anInteger!

state
	"Answer the <Integer> value of the receiver's 'state' field."

	^bytes byteAtOffset: _OffsetOf_state!

state: anInteger
	"Set the receiver's 'state' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_state put: anInteger!

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
!SDL_MouseButtonEvent categoriesForMethods!
clicks!**compiled accessors**!public! !
clicks:!**compiled accessors**!public! !
isDoubleClick!public! !
isLeftButton!public! !
isMiddleButton!public! !
isMouseButtonDown!public! !
isMouseButtonUp!public! !
isRightButton!public! !
isSingleClick!public! !
isTripleClick!public! !
padding1!**compiled accessors**!public! !
padding1:!**compiled accessors**!public! !
state!**compiled accessors**!public! !
state:!**compiled accessors**!public! !
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

!SDL_MouseButtonEvent class methodsFor!

defineFields
	"SDL_MouseButtonEvent compileDefinition

	typedef struct SDL_MouseButtonEvent
	{
	    Uint32 type;        /**< ::SDL_MOUSEBUTTONDOWN or ::SDL_MOUSEBUTTONUP */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The window with mouse focus, if any */
	    Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
	    Uint8 button;       /**< The mouse button index */
	    Uint8 state;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
	    Uint8 clicks;       /**< 1 for single-click, 2 for double-click, etc. */
	    Uint8 padding1;
	    Sint32 x;           /**< X coordinate, relative to window */
	    Sint32 y;           /**< Y coordinate, relative to window */
	} SDL_MouseButtonEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #button type: BYTEField new;
		defineField: #state type: BYTEField new;
		defineField: #clicks type: BYTEField new;
		defineField: #padding1 type: BYTEField new;
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #which #button #state #clicks #padding1 #x #y)! !
!SDL_MouseButtonEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

