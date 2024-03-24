"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_MouseButtonEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_button _OffsetOf_clicks _OffsetOf_padding1 _OffsetOf_reserved _OffsetOf_state _OffsetOf_timestamp _OffsetOf_type _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_MouseButtonEvent guid: (GUID fromString: '{7826f1b9-36e4-401a-9541-32b1ae2f2c99}')!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_button' value: 16r18!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_clicks' value: 16r1A!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_padding1' value: 16r1B!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_state' value: 16r19!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_which' value: 16r14!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_x' value: 16r1C!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_y' value: 16r20!
SDL_MouseButtonEvent comment: ''!
!SDL_MouseButtonEvent categoriesForClass!External-Data-Structured! !
!SDL_MouseButtonEvent methodsFor!

button
	"Answer the <Integer> value of the receiver's 'button' field."

	^bytes byteAtOffset: _OffsetOf_button!

button: anInteger
	"Set the receiver's 'button' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_button put: anInteger!

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
	^self type = SDL_EVENT_MOUSE_BUTTON_DOWN!

isMouseButtonUp
	^self type = SDL_EVENT_MOUSE_BUTTON_UP!

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

position
	^self x @ self y!

state
	"Answer the <Integer> value of the receiver's 'state' field."

	^bytes byteAtOffset: _OffsetOf_state!

state: anInteger
	"Set the receiver's 'state' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_state put: anInteger!

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
!SDL_MouseButtonEvent categoriesForMethods!
button!**compiled accessors**!public! !
button:!**compiled accessors**!public! !
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
position!public! !
state!**compiled accessors**!public! !
state:!**compiled accessors**!public! !
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

!SDL_MouseButtonEvent class methodsFor!

defineFields
	"SDL_MouseButtonEvent compileDefinition"

	"typedef struct SDL_MouseButtonEvent
	{
	    Uint32 type;        /**< ::SDL_MOUSEBUTTONDOWN or ::SDL_MOUSEBUTTONUP */
            Uint32 reserved;
	    Uint64 timestamp;   /**< In nanoseconds, populated using SDL_GetTicksNS() */
	    Uint32 windowID;    /**< The window with mouse focus, if any */
	    Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
	    Uint8 button;       /**< The mouse button index */
	    Uint8 state;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
	    Uint8 clicks;       /**< 1 for single-click, 2 for double-click, etc. */
	    Uint8 padding1;
	    float x;           /**< X coordinate, relative to window */
	    float y;           /**< Y coordinate, relative to window */
	} SDL_MouseButtonEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #button type: BYTEField new;
		defineField: #state type: BYTEField new;
		defineField: #clicks type: BYTEField new;
		defineField: #padding1 type: BYTEField new;
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new!

getFieldNames
	^#(#type #timestamp #windowID #which #button #state #clicks #padding1 #x #y)! !
!SDL_MouseButtonEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

