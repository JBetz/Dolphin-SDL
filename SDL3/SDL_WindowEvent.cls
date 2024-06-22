"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_WindowEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_data1 _OffsetOf_data2 _OffsetOf_reserved _OffsetOf_timestamp _OffsetOf_type _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_WindowEvent guid: (GUID fromString: '{efce64d5-b7a9-4cff-819b-70f60ba1e5b6}')!

SDL_WindowEvent addClassConstant: '_OffsetOf_data1' value: 16r14!
SDL_WindowEvent addClassConstant: '_OffsetOf_data2' value: 16r18!
SDL_WindowEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_WindowEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_WindowEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_WindowEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!

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

isCloseRequested
	^self type = SDL_EVENT_WINDOW_CLOSE_REQUESTED!

isExposed
	^self type = SDL_EVENT_WINDOW_EXPOSED!

isFocusGained
	^self type = SDL_EVENT_WINDOW_FOCUS_GAINED!

isFocusLost
	^self type = SDL_EVENT_WINDOW_FOCUS_LOST!

isHidden
	^self type = SDL_EVENT_WINDOW_HIDDEN!

isMaximized
	^self type = SDL_EVENT_WINDOW_MAXIMIZED!

isMinimized
	^self type = SDL_EVENT_WINDOW_MINIMIZED!

isMouseEnter
	^self type = SDL_EVENT_WINDOW_MOUSE_ENTER!

isMouseLeave
	^self type = SDL_EVENT_WINDOW_MOUSE_LEAVE!

isMoved
	^self type = SDL_EVENT_WINDOW_MOVED!

isPixelSizeChanged
	^self type = SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED!

isQuit
	^self type = SDL_EVENT_QUIT!

isResized
	^self type = SDL_EVENT_WINDOW_RESIZED!

isRestored
	^self type = SDL_EVENT_WINDOW_RESTORED!

isShown
	^self type = SDL_EVENT_WINDOW_SHOWN!

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

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger! !

!SDL_WindowEvent categoriesForMethods!
data1!**compiled accessors**!public! !
data1:!**compiled accessors**!public! !
data2!**compiled accessors**!public! !
data2:!**compiled accessors**!public! !
isCloseRequested!public! !
isExposed!public! !
isFocusGained!public! !
isFocusLost!public! !
isHidden!public! !
isMaximized!public! !
isMinimized!public! !
isMouseEnter!public! !
isMouseLeave!public! !
isMoved!public! !
isPixelSizeChanged!public! !
isQuit!public! !
isResized!public! !
isRestored!public! !
isShown!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_WindowEvent class methodsFor!

defineFields
	"SDL_WindowEvent compileDefinition"

	"/**
	 *  Window state change event data (event.window.*)
	 */
	typedef struct SDL_WindowEvent
	{
	    SDL_EventType type; /**< ::SDL_WINDOWEVENT_* */
	    Uint32 reserved;
	    Uint64 timestamp;   /**< In nanoseconds, populated using SDL_GetTicksNS() */
	    SDL_WindowID windowID; /**< The associated window */
	    Sint32 data1;       /**< event dependent data */
	    Sint32 data2;       /**< event dependent data */
	} SDL_WindowEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #data1 type: SDWORDField new;
		defineField: #data2 type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #data1 #data2)! !

!SDL_WindowEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

