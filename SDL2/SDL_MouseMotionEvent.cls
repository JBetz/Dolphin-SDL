"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_MouseMotionEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_state _OffsetOf_timestamp _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_xrel _OffsetOf_y _OffsetOf_yrel'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_MouseMotionEvent guid: (GUID fromString: '{532fc246-c023-4499-b64e-7d8e38583c3d}')!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_state' value: 16r10!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_which' value: 16rC!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_x' value: 16r14!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_xrel' value: 16r1C!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_y' value: 16r18!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_yrel' value: 16r20!
SDL_MouseMotionEvent comment: ''!
!SDL_MouseMotionEvent categoriesForClass!External-Data-Structured! !
!SDL_MouseMotionEvent methodsFor!

position
	^self x @ self y!

state
	"Answer the <Integer> value of the receiver's 'state' field."

	^bytes dwordAtOffset: _OffsetOf_state!

state: anInteger
	"Set the receiver's 'state' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_state put: anInteger!

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

xrel
	"Answer the <Integer> value of the receiver's 'xrel' field."

	^bytes sdwordAtOffset: _OffsetOf_xrel!

xrel: anInteger
	"Set the receiver's 'xrel' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_xrel put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger!

yrel
	"Answer the <Integer> value of the receiver's 'yrel' field."

	^bytes sdwordAtOffset: _OffsetOf_yrel!

yrel: anInteger
	"Set the receiver's 'yrel' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_yrel put: anInteger! !
!SDL_MouseMotionEvent categoriesForMethods!
position!public! !
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
xrel!**compiled accessors**!public! !
xrel:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
yrel!**compiled accessors**!public! !
yrel:!**compiled accessors**!public! !
!

!SDL_MouseMotionEvent class methodsFor!

defineFields
	"SDL_MouseMotionEvent compileDefinition

	typedef struct SDL_MouseMotionEvent
	{
	    Uint32 type;        /**< ::SDL_MOUSEMOTION */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The window with mouse focus, if any */
	    Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
	    Uint32 state;       /**< The current button state */
	    Sint32 x;           /**< X coordinate, relative to window */
	    Sint32 y;           /**< Y coordinate, relative to window */
	    Sint32 xrel;        /**< The relative motion in the X direction */
	    Sint32 yrel;        /**< The relative motion in the Y direction */
	} SDL_MouseMotionEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #state type: DWORDField new;
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #xrel type: SDWORDField new;
		defineField: #yrel type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #which #state #x #y #xrel #yrel)! !
!SDL_MouseMotionEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

