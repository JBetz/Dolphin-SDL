"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Event
	instanceVariableNames: 'target handlers'
	classVariableNames: '_OffsetOf_common _OffsetOf_padding _OffsetOf_union_button _OffsetOf_union_display _OffsetOf_union_edit _OffsetOf_union_editExt _OffsetOf_union_key _OffsetOf_union_motion _OffsetOf_union_quit _OffsetOf_union_syswm _OffsetOf_union_text _OffsetOf_union_user _OffsetOf_union_wheel _OffsetOf_union_window'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_Event guid: (GUID fromString: '{22d4884c-5d9e-40fd-a7e0-f86f85f39969}')!

SDL_Event addClassConstant: '_OffsetOf_common' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_padding' value: 16r65C!
SDL_Event addClassConstant: '_OffsetOf_union_button' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_display' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_edit' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_editExt' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_key' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_motion' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_quit' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_syswm' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_text' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_user' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_wheel' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_window' value: 16r0!

SDL_Event comment: ''!

!SDL_Event categoriesForClass!External-Data-Structured! !

!SDL_Event methodsFor!

addHandler: anObject
	handlers ifNil: [handlers := OrderedCollection new].
	handlers add: anObject!

asKeyboardEvent
	^SDL_KeyboardEvent fromAddress: bytes yourAddress!

asMouseButtonEvent
	^SDL_MouseButtonEvent fromAddress: bytes yourAddress!

asMouseMotionEvent
	^SDL_MouseMotionEvent fromAddress: bytes yourAddress!

asMouseWheelEvent
	^SDL_MouseWheelEvent fromAddress: bytes yourAddress!

asTextEditingEvent
	^SDL_TextEditingEvent fromAddress: bytes yourAddress!

asTextInputEvent
	^SDL_TextInputEvent fromAddress: bytes yourAddress!

asUserEvent
	^SDL_UserEvent fromAddress: bytes yourAddress!

asWindowEvent
	^SDL_WindowEvent fromAddress: bytes yourAddress!

common
	"Answer the <SDL_CommonEvent> value of the receiver's 'common' field."

	^SDL_CommonEvent fromAddress: bytes yourAddress!

common: aSDL_CommonEvent
	"Set the receiver's 'common' field to the value of the argument, aSDL_CommonEvent"

	aSDL_CommonEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_common + 1)
		to: ##(_OffsetOf_common + SDL_CommonEvent basicByteSize)
		startingAt: 1!

convertToSubclass
	| type |
	type := self type.
	type = SDL_EVENT_KEY_DOWN ifTrue: [^self asKeyboardEvent].
	type = SDL_EVENT_KEY_UP ifTrue: [^self asKeyboardEvent].
	type = SDL_EVENT_MOUSE_BUTTON_DOWN ifTrue: [^self asMouseButtonEvent].
	type = SDL_EVENT_MOUSE_BUTTON_UP ifTrue: [^self asMouseButtonEvent].
	type = SDL_EVENT_MOUSE_MOTION ifTrue: [^self asMouseMotionEvent].
	type = SDL_EVENT_MOUSE_WHEEL ifTrue: [^self asMouseWheelEvent].
	type = SDL_EVENT_TEXT_INPUT ifTrue: [^self asTextInputEvent].
	type = SDL_EVENT_TEXT_EDITING ifTrue: [^self asTextEditingEvent].
	type = SDL_EVENT_USER ifTrue: [^self asUserEvent].
	self isWindowEvent ifTrue: [^self asWindowEvent].
	^self!

hasAssociatedWindow
	^self isWindowEvent or: 
			[{SDL_EVENT_KEY_DOWN.
				SDL_EVENT_KEY_UP.
				SDL_EVENT_TEXT_EDITING.
				SDL_EVENT_TEXT_INPUT.
				SDL_EVENT_MOUSE_MOTION.
				SDL_EVENT_MOUSE_BUTTON_DOWN.
				SDL_EVENT_MOUSE_BUTTON_UP.
				SDL_EVENT_MOUSE_WHEEL.
				SDL_EVENT_DROP_FILE.
				SDL_EVENT_USER} includes: self type]!

isConsumed
	^handlers anySatisfy: [:each | each consumesKeyboardInput]!

isHandled
	^handlers ifNil: [false] ifNotNil: [handlers isEmpty not]!

isWindowEvent
	^self type between: SDL_EVENT_WINDOW_FIRST and: SDL_EVENT_WINDOW_LAST!

padding
	"Answer the <BYTE> value of the receiver's 'padding' field."

	^BYTE fromAddress: bytes yourAddress + _OffsetOf_padding length: 128!

padding: aBYTE
	"Set the receiver's 'padding' field to the value of the argument, aBYTE"

	| size |
	size := aBYTE byteSize min: ##(128 * BYTE elementSize).
	aBYTE
		replaceBytesOf: bytes
		from: ##(_OffsetOf_padding + 1)
		to: _OffsetOf_padding + size
		startingAt: 1!

printOn: aStream
	aStream nextPutAll: self class name!

target
	^target!

target: anObject
	target := anObject!

timestamp
	^self common timestamp!

type
	^self common type!

union_button
	"Answer the <SDL_MouseButtonEvent> value of the receiver's 'union_button' field."

	^SDL_MouseButtonEvent fromAddress: bytes yourAddress!

union_button: aSDL_MouseButtonEvent
	"Set the receiver's 'union_button' field to the value of the argument, aSDL_MouseButtonEvent"

	aSDL_MouseButtonEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_button + 1)
		to: ##(_OffsetOf_union_button + SDL_MouseButtonEvent basicByteSize)
		startingAt: 1!

union_display
	"Answer the <SDL_DisplayEvent> value of the receiver's 'union_display' field."

	^SDL_DisplayEvent fromAddress: bytes yourAddress!

union_display: aSDL_DisplayEvent
	"Set the receiver's 'union_display' field to the value of the argument, aSDL_DisplayEvent"

	aSDL_DisplayEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_display + 1)
		to: ##(_OffsetOf_union_display + SDL_DisplayEvent basicByteSize)
		startingAt: 1!

union_edit
	"Answer the <SDL_TextEditingEvent> value of the receiver's 'union_edit' field."

	^SDL_TextEditingEvent fromAddress: bytes yourAddress!

union_edit: aSDL_TextEditingEvent
	"Set the receiver's 'union_edit' field to the value of the argument, aSDL_TextEditingEvent"

	aSDL_TextEditingEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_edit + 1)
		to: ##(_OffsetOf_union_edit + SDL_TextEditingEvent basicByteSize)
		startingAt: 1!

union_editExt
	"Answer the <SDL_TextEditingExtEvent> value of the receiver's 'union_editExt' field."

	^SDL_TextEditingExtEvent fromAddress: bytes yourAddress!

union_editExt: aSDL_TextEditingExtEvent
	"Set the receiver's 'union_editExt' field to the value of the argument, aSDL_TextEditingExtEvent"

	aSDL_TextEditingExtEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_editExt + 1)
		to: ##(_OffsetOf_union_editExt + SDL_TextEditingExtEvent basicByteSize)
		startingAt: 1!

union_key
	"Answer the <SDL_KeyboardEvent> value of the receiver's 'union_key' field."

	^SDL_KeyboardEvent fromAddress: bytes yourAddress!

union_key: aSDL_KeyboardEvent
	"Set the receiver's 'union_key' field to the value of the argument, aSDL_KeyboardEvent"

	aSDL_KeyboardEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_key + 1)
		to: ##(_OffsetOf_union_key + SDL_KeyboardEvent basicByteSize)
		startingAt: 1!

union_motion
	"Answer the <SDL_MouseMotionEvent> value of the receiver's 'union_motion' field."

	^SDL_MouseMotionEvent fromAddress: bytes yourAddress!

union_motion: aSDL_MouseMotionEvent
	"Set the receiver's 'union_motion' field to the value of the argument, aSDL_MouseMotionEvent"

	aSDL_MouseMotionEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_motion + 1)
		to: ##(_OffsetOf_union_motion + SDL_MouseMotionEvent basicByteSize)
		startingAt: 1!

union_quit
	"Answer the <SDL_QuitEvent> value of the receiver's 'union_quit' field."

	^SDL_QuitEvent fromAddress: bytes yourAddress!

union_quit: aSDL_QuitEvent
	"Set the receiver's 'union_quit' field to the value of the argument, aSDL_QuitEvent"

	aSDL_QuitEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_quit + 1)
		to: ##(_OffsetOf_union_quit + SDL_QuitEvent basicByteSize)
		startingAt: 1!

union_syswm
	"Answer the <SDL_SysWMEvent> value of the receiver's 'union_syswm' field."

	^SDL_SysWMEvent fromAddress: bytes yourAddress!

union_syswm: aSDL_SysWMEvent
	"Set the receiver's 'union_syswm' field to the value of the argument, aSDL_SysWMEvent"

	aSDL_SysWMEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_syswm + 1)
		to: ##(_OffsetOf_union_syswm + SDL_SysWMEvent basicByteSize)
		startingAt: 1!

union_text
	"Answer the <SDL_TextInputEvent> value of the receiver's 'union_text' field."

	^SDL_TextInputEvent fromAddress: bytes yourAddress!

union_text: aSDL_TextInputEvent
	"Set the receiver's 'union_text' field to the value of the argument, aSDL_TextInputEvent"

	aSDL_TextInputEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_text + 1)
		to: ##(_OffsetOf_union_text + SDL_TextInputEvent basicByteSize)
		startingAt: 1!

union_user
	"Answer the <SDL_UserEvent> value of the receiver's 'union_user' field."

	^SDL_UserEvent fromAddress: bytes yourAddress!

union_user: aSDL_UserEvent
	"Set the receiver's 'union_user' field to the value of the argument, aSDL_UserEvent"

	aSDL_UserEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_user + 1)
		to: ##(_OffsetOf_union_user + SDL_UserEvent basicByteSize)
		startingAt: 1!

union_wheel
	"Answer the <SDL_MouseWheelEvent> value of the receiver's 'union_wheel' field."

	^SDL_MouseWheelEvent fromAddress: bytes yourAddress!

union_wheel: aSDL_MouseWheelEvent
	"Set the receiver's 'union_wheel' field to the value of the argument, aSDL_MouseWheelEvent"

	aSDL_MouseWheelEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_wheel + 1)
		to: ##(_OffsetOf_union_wheel + SDL_MouseWheelEvent basicByteSize)
		startingAt: 1!

union_window
	"Answer the <SDL_WindowEvent> value of the receiver's 'union_window' field."

	^SDL_WindowEvent fromAddress: bytes yourAddress!

union_window: aSDL_WindowEvent
	"Set the receiver's 'union_window' field to the value of the argument, aSDL_WindowEvent"

	aSDL_WindowEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_window + 1)
		to: ##(_OffsetOf_union_window + SDL_WindowEvent basicByteSize)
		startingAt: 1!

windowID
	^self hasAssociatedWindow ifTrue: [self union_window windowID] ifFalse: [nil]! !

!SDL_Event categoriesForMethods!
addHandler:!accessing!public! !
asKeyboardEvent!public! !
asMouseButtonEvent!public! !
asMouseMotionEvent!public! !
asMouseWheelEvent!public! !
asTextEditingEvent!public! !
asTextInputEvent!public! !
asUserEvent!public! !
asWindowEvent!public! !
common!public! !
common:!public! !
convertToSubclass!public! !
hasAssociatedWindow!public! !
isConsumed!public! !
isHandled!public! !
isWindowEvent!public! !
padding!public! !
padding:!public! !
printOn:!public! !
target!accessing!public! !
target:!accessing!public! !
timestamp!public! !
type!public! !
union_button!**compiled accessors**!public! !
union_button:!**compiled accessors**!public! !
union_display!**compiled accessors**!public! !
union_display:!**compiled accessors**!public! !
union_edit!**compiled accessors**!public! !
union_edit:!**compiled accessors**!public! !
union_editExt!**compiled accessors**!public! !
union_editExt:!**compiled accessors**!public! !
union_key!**compiled accessors**!public! !
union_key:!**compiled accessors**!public! !
union_motion!**compiled accessors**!public! !
union_motion:!**compiled accessors**!public! !
union_quit!**compiled accessors**!public! !
union_quit:!**compiled accessors**!public! !
union_syswm!**compiled accessors**!public! !
union_syswm:!**compiled accessors**!public! !
union_text!**compiled accessors**!public! !
union_text:!**compiled accessors**!public! !
union_user!**compiled accessors**!public! !
union_user:!**compiled accessors**!public! !
union_wheel!**compiled accessors**!public! !
union_wheel:!**compiled accessors**!public! !
union_window!**compiled accessors**!public! !
union_window:!**compiled accessors**!public! !
windowID!public! !
!

!SDL_Event class methodsFor!

defineFields
	"SDL_Event compileDefinition"

	"typedef union SDL_Event
	{
	    Uint32 type;                            /**< Event type, shared with all events */
	    SDL_CommonEvent common;                 /**< Common event data */
	    SDL_DisplayEvent display;               /**< Display event data */
	    SDL_WindowEvent window;                 /**< Window event data */
	    SDL_KeyboardEvent key;                  /**< Keyboard event data */
	    SDL_TextEditingEvent edit;              /**< Text editing event data */
	    SDL_TextInputEvent text;                /**< Text input event data */
	    SDL_MouseMotionEvent motion;            /**< Mouse motion event data */
	    SDL_MouseButtonEvent button;            /**< Mouse button event data */
	    SDL_MouseWheelEvent wheel;              /**< Mouse wheel event data */
	    SDL_JoyAxisEvent jaxis;                 /**< Joystick axis event data */
	    SDL_JoyHatEvent jhat;                   /**< Joystick hat event data */
	    SDL_JoyButtonEvent jbutton;             /**< Joystick button event data */
	    SDL_JoyDeviceEvent jdevice;             /**< Joystick device change event data */
	    SDL_JoyBatteryEvent jbattery;           /**< Joystick battery event data */
	    SDL_GamepadAxisEvent gaxis;             /**< Gamepad axis event data */
	    SDL_GamepadButtonEvent gbutton;         /**< Gamepad button event data */
	    SDL_GamepadDeviceEvent gdevice;         /**< Gamepad device event data */
	    SDL_GamepadTouchpadEvent gtouchpad;     /**< Gamepad touchpad event data */
	    SDL_GamepadSensorEvent gsensor;         /**< Gamepad sensor event data */
	    SDL_AudioDeviceEvent adevice;           /**< Audio device event data */
	    SDL_SensorEvent sensor;                 /**< Sensor event data */
	    SDL_QuitEvent quit;                     /**< Quit request event data */
	    SDL_UserEvent user;                     /**< Custom event data */
	    SDL_TouchFingerEvent tfinger;           /**< Touch finger event data */
	    SDL_PenTipEvent ptip;                   /**< Pen tip touching or leaving drawing surface */
	    SDL_PenMotionEvent pmotion;             /**< Pen change in position, pressure, or angle */
	    SDL_PenButtonEvent pbutton;             /**< Pen button press */
	    SDL_DropEvent drop;                     /**< Drag and drop event data */
	    SDL_ClipboardEvent clipboard;           /**< Clipboard event data */

	    /* This is necessary for ABI compatibility between Visual C++ and GCC.
	       Visual C++ will respect the push pack pragma and use 52 bytes (size of
	       SDL_TextEditingEvent, the largest structure for 32-bit and 64-bit
	       architectures) for this union, and GCC will use the alignment of the
	       largest datatype within the union, which is 8 bytes on 64-bit
	       architectures.

	       So... we'll add padding to force the size to be the same for both.

	       On architectures where pointers are 16 bytes, this needs rounding up to
	       the next multiple of 16, 64, and on architectures where pointers are
	       even larger the size of SDL_UserEvent will dominate as being 3 pointers.
	    */
	    Uint8 padding[128];
	} SDL_Event;"

	self
		defineField: #common
			type: (StructureField type: SDL_CommonEvent)
			offset: 0;
		defineField: #union_display
			type: (StructureField type: SDL_DisplayEvent)
			offset: 0;
		defineField: #union_window
			type: (StructureField type: SDL_WindowEvent)
			offset: 0;
		defineField: #union_key
			type: (StructureField type: SDL_KeyboardEvent)
			offset: 0;
		defineField: #union_edit
			type: (StructureField type: SDL_TextEditingEvent)
			offset: 0;
		defineField: #union_editExt
			type: (StructureField type: SDL_TextEditingExtEvent)
			offset: 0;
		defineField: #union_text
			type: (StructureField type: SDL_TextInputEvent)
			offset: 0;
		defineField: #union_motion
			type: (StructureField type: SDL_MouseMotionEvent)
			offset: 0;
		defineField: #union_button
			type: (StructureField type: SDL_MouseButtonEvent)
			offset: 0;
		defineField: #union_wheel
			type: (StructureField type: SDL_MouseWheelEvent)
			offset: 0;
		defineField: #union_quit
			type: (StructureField type: SDL_QuitEvent)
			offset: 0;
		defineField: #union_user
			type: (StructureField type: SDL_UserEvent)
			offset: 0;
		defineField: #union_syswm
			type: (StructureField type: SDL_SysWMEvent)
			offset: 0;
		defineField: #padding type: (ArrayField type: BYTE length: 128)!

fromAddress: anAddress
	^(super fromAddress: anAddress) initialize!

getFieldNames
	^#(#common #union_button #union_display #union_edit #union_editExt #union_key #union_motion #union_quit #union_syswm #union_text #union_user #union_wheel #union_window #padding)!

packing
	^4! !

!SDL_Event class categoriesForMethods!
defineFields!public! !
fromAddress:!public! !
getFieldNames!**compiled accessors**!constants!private! !
packing!public! !
!

