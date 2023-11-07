"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_WindowEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_data1 _OffsetOf_data2 _OffsetOf_event _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_timestamp _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_WindowEvent guid: (GUID fromString: '{efce64d5-b7a9-4cff-819b-70f60ba1e5b6}')!
SDL_WindowEvent addClassConstant: '_OffsetOf_data1' value: 16r10!
SDL_WindowEvent addClassConstant: '_OffsetOf_data2' value: 16r14!
SDL_WindowEvent addClassConstant: '_OffsetOf_event' value: 16rC!
SDL_WindowEvent addClassConstant: '_OffsetOf_padding1' value: 16rD!
SDL_WindowEvent addClassConstant: '_OffsetOf_padding2' value: 16rE!
SDL_WindowEvent addClassConstant: '_OffsetOf_padding3' value: 16rF!
SDL_WindowEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_WindowEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_WindowEvent comment: ''!
!SDL_WindowEvent categoriesForClass!External-Data-Structured! !
!SDL_WindowEvent methodsFor!

data1
	"Answer the <Integer> value of the receiver's 'data1' field."

	^bytes sdwordAtOffset: _OffsetOf_data1!

data1: anInteger
	"Set the receiver's 'data1' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_data1 put: anInteger!

data2
	"Answer the <Integer> value of the receiver's 'data2' field."

	^bytes sdwordAtOffset: _OffsetOf_data2!

data2: anInteger
	"Set the receiver's 'data2' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_data2 put: anInteger!

event
	"Answer the <Integer> value of the receiver's 'event' field."

	^bytes byteAtOffset: _OffsetOf_event!

event: anInteger
	"Set the receiver's 'event' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_event put: anInteger!

isClose
	^self event = SDL_WINDOWEVENT_CLOSE!

isEnter
	^self event = SDL_WINDOWEVENT_ENTER!

isExposed
	^self event = SDL_WINDOWEVENT_EXPOSED!

isFocusGained
	^self event = SDL_WINDOWEVENT_FOCUS_GAINED!

isFocusLost
	^self event = SDL_WINDOWEVENT_FOCUS_LOST!

isHidden
	^self event = SDL_WINDOWEVENT_HIDDEN!

isLeave
	^self event = SDL_WINDOWEVENT_LEAVE!

isMaximized
	^self event = SDL_WINDOWEVENT_MAXIMIZED!

isMinimized
	^self event = SDL_WINDOWEVENT_MINIMIZED!

isMoved
	^self event = SDL_WINDOWEVENT_MOVED!

isResized
	^self event = SDL_WINDOWEVENT_RESIZED!

isRestored
	^self event = SDL_WINDOWEVENT_RESTORED!

isShown
	^self event = SDL_WINDOWEVENT_SHOWN!

isSizeChanged
	^self event = SDL_WINDOWEVENT_SIZE_CHANGED!

padding1
	"Answer the <Integer> value of the receiver's 'padding1' field."

	^bytes byteAtOffset: _OffsetOf_padding1!

padding1: anInteger
	"Set the receiver's 'padding1' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding1 put: anInteger!

padding2
	"Answer the <Integer> value of the receiver's 'padding2' field."

	^bytes byteAtOffset: _OffsetOf_padding2!

padding2: anInteger
	"Set the receiver's 'padding2' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding2 put: anInteger!

padding3
	"Answer the <Integer> value of the receiver's 'padding3' field."

	^bytes byteAtOffset: _OffsetOf_padding3!

padding3: anInteger
	"Set the receiver's 'padding3' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding3 put: anInteger!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger! !
!SDL_WindowEvent categoriesForMethods!
data1!public! !
data1:!public! !
data2!public! !
data2:!public! !
event!public! !
event:!public! !
isClose!public! !
isEnter!public! !
isExposed!public! !
isFocusGained!public! !
isFocusLost!public! !
isHidden!public! !
isLeave!public! !
isMaximized!public! !
isMinimized!public! !
isMoved!public! !
isResized!public! !
isRestored!public! !
isShown!public! !
isSizeChanged!public! !
padding1!public! !
padding1:!public! !
padding2!public! !
padding2:!public! !
padding3!public! !
padding3:!public! !
timestamp!public! !
timestamp:!public! !
windowID!public! !
windowID:!public! !
!

!SDL_WindowEvent class methodsFor!

defineFields
	"SDL_WindowEvent compileDefinition

	typedef struct SDL_WindowEvent
	{
	    Uint32 type;        /**< ::SDL_WINDOWEVENT */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The associated window */
	    Uint8 event;        /**< ::SDL_WindowEventID */
	    Uint8 padding1;
	    Uint8 padding2;
	    Uint8 padding3;
	    Sint32 data1;       /**< event dependent data */
	    Sint32 data2;       /**< event dependent data */
	} SDL_WindowEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #event type: BYTEField new;
		defineField: #padding1 type: BYTEField new;
		defineField: #padding2 type: BYTEField new;
		defineField: #padding3 type: BYTEField new;
		defineField: #data1 type: SDWORDField new;
		defineField: #data2 type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #event #padding1 #padding2 #padding3 #data1 #data2)! !
!SDL_WindowEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

