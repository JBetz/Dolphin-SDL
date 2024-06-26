﻿"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_KeyboardEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_keysym _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_repeat _OffsetOf_reserved _OffsetOf_state _OffsetOf_timestamp _OffsetOf_type _OffsetOf_which _OffsetOf_windowID'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_KeyboardEvent guid: (GUID fromString: '{b0932b16-56bc-43d2-9018-7c53e25f208b}')!

SDL_KeyboardEvent addClassConstant: '_OffsetOf_keysym' value: 16r1C!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_padding2' value: 16r1A!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_padding3' value: 16r1B!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_repeat' value: 16r19!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_state' value: 16r18!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_which' value: 16r14!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!

SDL_KeyboardEvent comment: ''!

!SDL_KeyboardEvent categoriesForClass!External-Data-Structured! !

!SDL_KeyboardEvent methodsFor!

isAlt
	^self isLeftAlt or: [self isRightAlt]!

isAltDown
	^self isLeftAltDown or: [self isRightAltDown]!

isAnotherModifierDown
	^self isLeftCtrl and: [ self isRightCtrlDown  ]!

isBackspace
	^self scanCode = SDL_SCANCODE_BACKSPACE!

isCapsLock
	^SDL_SCANCODE_CAPSLOCK = self scanCode!

isCapsLockActive
	^(self keysym mod bitAnd: SDL_KMOD_CAPS) asBoolean!

isCapsLockDown
	^SDLInputState current isCapsLockDown!

isCtrl
	^self isLeftCtrl or: [self isRightCtrl]!

isCtrlDown
	^self isLeftCtrlDown or: [self isRightCtrlDown]!

isDelete
	^self scanCode = SDL_SCANCODE_DELETE!

isDigit
	^self keyCode >= SDLK_0 & (self keyCode <= SDLK_9)!

isDown
	^self scanCode = SDL_SCANCODE_DOWN!

isEnter
	^self scanCode = SDL_SCANCODE_RETURN!

isEscape
	^self scanCode = SDL_SCANCODE_ESCAPE!

isKeyDown
	^self type = SDL_EVENT_KEY_DOWN!

isKeyUp
	^self type = SDL_EVENT_KEY_UP!

isLeft
	^self scanCode = SDL_SCANCODE_LEFT!

isLeftAlt
	^self scanCode = SDL_SCANCODE_LALT!

isLeftAltDown
	^(self keysym mod bitAnd: SDL_KMOD_LALT) asBoolean!

isLeftCtrl
	^self scanCode = SDL_SCANCODE_LCTRL!

isLeftCtrlDown
	^(self keysym mod bitAnd: SDL_KMOD_LCTRL) asBoolean!

isLeftShift
	^self scanCode = SDL_SCANCODE_LSHIFT!

isLeftShiftDown
	^(self keysym mod bitAnd: SDL_KMOD_LSHIFT) asBoolean!

isLetter
	^self keyCode >= SDLK_a & (self keyCode <= SDLK_z)!

isModifier
	^self isShift or: [self isCtrl or: [self isAlt or: [self isCapsLock]]]!

isModifierDown
	^self isShiftDown or: [self isCtrlDown or: [self isAltDown or: [self isCapsLockDown]]]!

isNumLockActive 
	^(self keysym mod bitAnd: SDL_KMOD_NUM) asBoolean not!

isPunctuation
	^self keyCode >= SDLK_SPACE & (self keyCode <= SDLK_EXCLAIM)
		or: [self keyCode >= SDLK_QUOTEDBL & (self keyCode <= SDLK_SLASH)]!

isRepeat
	^self repeat > 0!

isRight
	^self scanCode = SDL_SCANCODE_RIGHT!

isRightAlt
	^self scanCode = SDL_SCANCODE_RALT!

isRightAltDown
	^(self keysym mod bitAnd: SDL_KMOD_RALT) asBoolean!

isRightCtrl
	^self scanCode = SDL_SCANCODE_RCTRL!

isRightCtrlDown
	^(self keysym mod bitAnd: SDL_KMOD_RCTRL) asBoolean!

isRightShift
	^self scanCode = SDL_SCANCODE_RSHIFT!

isRightShiftDown
	^(self keysym mod bitAnd: SDL_KMOD_RSHIFT) asBoolean!

isSecondModifier
	(self isLeftCtrl
		and: [self isRightCtrlDown or: [self isShiftDown or: [self isAltDown or: [self isCapsLockDown]]]])
			ifTrue: [^true].
	(self isRightCtrl
		and: [self isLeftCtrlDown or: [self isShiftDown or: [self isAltDown or: [self isCapsLockDown]]]])
			ifTrue: [^true].
	(self isLeftAlt
		and: [self isRightAltDown or: [self isCtrlDown or: [self isShiftDown or: [self isCapsLockDown]]]])
			ifTrue: [^true].
	(self isRightAlt
		and: [self isLeftAltDown or: [self isCtrlDown or: [self isShiftDown or: [self isCapsLockDown]]]])
			ifTrue: [^true].
	(self isLeftShift
		and: [self isRightShiftDown or: [self isCtrlDown or: [self isAltDown or: [self isCapsLockDown]]]])
			ifTrue: [^true].
	(self isRightShift
		and: [self isLeftShiftDown or: [self isCtrlDown or: [self isAltDown or: [self isCapsLockDown]]]])
			ifTrue: [^true].
	(self isCapsLock and: [self isCtrlDown or: [self isAltDown or: [self isShiftDown]]])
		ifTrue: [^true].
	^false!

isShift
	^self isLeftShift or: [self isRightShift]!

isShiftDown
	^self isLeftShiftDown or: [self isRightShiftDown]!

isSystemKey
	^self isAlt!

isUp
	^self scanCode = SDL_SCANCODE_UP!

isUppercase
	^self isCapsLockActive = self isShiftDown not!

isValidTextInput
	^self isDigit | self isLetter | self isPunctuation!

keyCode
	^self keysym sym!

keysym
	"Answer the <SDL_Keysym> value of the receiver's 'keysym' field."

	^SDL_Keysym fromAddress: bytes yourAddress + _OffsetOf_keysym!

keysym: aSDL_Keysym
	"Set the receiver's 'keysym' field to the value of the argument, aSDL_Keysym"

	aSDL_Keysym
		replaceBytesOf: bytes
		from: ##(_OffsetOf_keysym + 1)
		to: ##(_OffsetOf_keysym + SDL_Keysym basicByteSize)
		startingAt: 1!

repeat
	"Answer the <Integer> value of the receiver's 'repeat' field."

	^bytes byteAtOffset: _OffsetOf_repeat!

repeat: anInteger
	"Set the receiver's 'repeat' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_repeat put: anInteger!

scanCode
	^self keysym scancode!

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

windowsAlphabetKeyCode
	| diff |
	diff := self keysym sym - SDLK_a.
	^$A asInteger + diff!

windowsFunctionKeyCode
	^112 + (self keysym sym - 1073741882)!

windowsKeyCode
	| sdlKeyCode |
	sdlKeyCode := self keysym sym.
	(sdlKeyCode >= SDLK_a and: [sdlKeyCode <= SDLK_z]) ifTrue: [^self windowsAlphabetKeyCode].
	(sdlKeyCode >= SDLK_0 and: [sdlKeyCode <= SDLK_9]) ifTrue: [^self windowsNumberRowCode].
	(sdlKeyCode >= SDLK_F1 and: [sdlKeyCode <= SDLK_F12]) ifTrue: [^self windowsFunctionKeyCode].
	^self windowsSpecialKeyCode!

windowsNumberRowCode
	| diff |
	diff := self keysym sym - SDLK_0.
	^48 + diff!

windowsSpecialKeyCode
	| sdlKeyCode windowsKeyCode |
	sdlKeyCode := self keysym sym.
	sdlKeyCode = SDLK_SPACE ifTrue: [windowsKeyCode := 32].
	sdlKeyCode = SDLK_BACKSPACE ifTrue: [windowsKeyCode := 8].
	sdlKeyCode = SDLK_TAB ifTrue: [windowsKeyCode := 9].
	sdlKeyCode = SDLK_RETURN ifTrue: [windowsKeyCode := 13].
	sdlKeyCode = SDLK_PAUSE ifTrue: [windowsKeyCode := 19].
	sdlKeyCode = SDLK_SCROLLLOCK ifTrue: [windowsKeyCode := 145].
	sdlKeyCode = SDLK_ESCAPE ifTrue: [windowsKeyCode := 27].
	sdlKeyCode = SDLK_LEFT ifTrue: [windowsKeyCode := 37].
	sdlKeyCode = SDLK_UP ifTrue: [windowsKeyCode := 38].
	sdlKeyCode = SDLK_RIGHT ifTrue: [windowsKeyCode := 39].
	sdlKeyCode = SDLK_DOWN ifTrue: [windowsKeyCode := 40].
	sdlKeyCode = SDLK_HOME ifTrue: [windowsKeyCode := 36].
	sdlKeyCode = SDLK_END ifTrue: [windowsKeyCode := 35].
	sdlKeyCode = SDLK_PAGEUP ifTrue: [windowsKeyCode := 33].
	sdlKeyCode = SDLK_PAGEDOWN ifTrue: [windowsKeyCode := 34].
	sdlKeyCode = SDLK_INSERT ifTrue: [windowsKeyCode := 45].
	sdlKeyCode = SDLK_DELETE ifTrue: [windowsKeyCode := 46].
	sdlKeyCode = SDLK_KP_DIVIDE ifTrue: [windowsKeyCode := 111].
	sdlKeyCode = SDLK_KP_MULTIPLY ifTrue: [windowsKeyCode := 106].
	sdlKeyCode = SDLK_KP_MINUS ifTrue: [windowsKeyCode := 109].
	sdlKeyCode = SDLK_KP_PLUS ifTrue: [windowsKeyCode := 107].
	sdlKeyCode = SDLK_KP_DECIMAL
		ifTrue: [self isNumLockActive ifTrue: [windowsKeyCode := 110] ifFalse: [windowsKeyCode := 46]].
	sdlKeyCode = SDLK_KP_0 ifTrue: [windowsKeyCode := 45].
	sdlKeyCode = SDLK_KP_1 ifTrue: [windowsKeyCode := 35].
	sdlKeyCode = SDLK_KP_2 ifTrue: [windowsKeyCode := 40].
	sdlKeyCode = SDLK_KP_3 ifTrue: [windowsKeyCode := 34].
	sdlKeyCode = SDLK_KP_4 ifTrue: [windowsKeyCode := 37].
	sdlKeyCode = SDLK_KP_5 ifTrue: [windowsKeyCode := 12].
	sdlKeyCode = SDLK_KP_6 ifTrue: [windowsKeyCode := 39].
	sdlKeyCode = SDLK_KP_7 ifTrue: [windowsKeyCode := 36].
	sdlKeyCode = SDLK_KP_8 ifTrue: [windowsKeyCode := 38].
	sdlKeyCode = SDLK_KP_9 ifTrue: [windowsKeyCode := 33].
	sdlKeyCode = SDLK_CAPSLOCK ifTrue: [windowsKeyCode := 20].
	sdlKeyCode = SDLK_NUMLOCKCLEAR ifTrue: [windowsKeyCode := 144].
	({SDLK_LCTRL. SDLK_RCTRL} includes: sdlKeyCode) ifTrue: [windowsKeyCode := 17].
	({SDLK_LSHIFT. SDLK_RSHIFT} includes: sdlKeyCode) ifTrue: [windowsKeyCode := 16].
	({SDLK_LALT. SDLK_RALT} includes: sdlKeyCode) ifTrue: [windowsKeyCode := 18].
	sdlKeyCode = SDLK_LGUI ifTrue: [windowsKeyCode := 91].
	sdlKeyCode = SDLK_RGUI ifTrue: [windowsKeyCode := 92].
	sdlKeyCode = SDLK_SELECT ifTrue: [windowsKeyCode := 93].
	sdlKeyCode = SDLK_SEMICOLON ifTrue: [windowsKeyCode := 186].
	sdlKeyCode = SDLK_QUOTE ifTrue: [windowsKeyCode := 222].
	sdlKeyCode = SDLK_EQUALS ifTrue: [windowsKeyCode := 187].
	sdlKeyCode = SDLK_COMMA ifTrue: [windowsKeyCode := 188].
	sdlKeyCode = SDLK_MINUS ifTrue: [windowsKeyCode := 189].
	sdlKeyCode = SDLK_PERIOD ifTrue: [windowsKeyCode := 190].
	sdlKeyCode = SDLK_SLASH ifTrue: [windowsKeyCode := 191].
	sdlKeyCode = SDLK_BACKQUOTE ifTrue: [windowsKeyCode := 192].
	sdlKeyCode = SDLK_LEFTBRACKET ifTrue: [windowsKeyCode := 219].
	sdlKeyCode = SDLK_BACKSLASH ifTrue: [windowsKeyCode := 220].
	sdlKeyCode = SDLK_RIGHTBRACKET ifTrue: [windowsKeyCode := 221].
	^windowsKeyCode! !

!SDL_KeyboardEvent categoriesForMethods!
isAlt!public! !
isAltDown!public! !
isAnotherModifierDown!public! !
isBackspace!public! !
isCapsLock!public! !
isCapsLockActive!public! !
isCapsLockDown!public! !
isCtrl!public! !
isCtrlDown!public! !
isDelete!public! !
isDigit!public! !
isDown!public! !
isEnter!public! !
isEscape!public! !
isKeyDown!public! !
isKeyUp!public! !
isLeft!public! !
isLeftAlt!public! !
isLeftAltDown!public! !
isLeftCtrl!public! !
isLeftCtrlDown!public! !
isLeftShift!public! !
isLeftShiftDown!public! !
isLetter!public! !
isModifier!public! !
isModifierDown!public! !
isNumLockActive!public! !
isPunctuation!public! !
isRepeat!public! !
isRight!public! !
isRightAlt!public! !
isRightAltDown!public! !
isRightCtrl!public! !
isRightCtrlDown!public! !
isRightShift!public! !
isRightShiftDown!public! !
isSecondModifier!public! !
isShift!public! !
isShiftDown!public! !
isSystemKey!public! !
isUp!public! !
isUppercase!public! !
isValidTextInput!public! !
keyCode!public! !
keysym!**compiled accessors**!public! !
keysym:!**compiled accessors**!public! !
repeat!**compiled accessors**!public! !
repeat:!**compiled accessors**!public! !
scanCode!public! !
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
windowsAlphabetKeyCode!private! !
windowsFunctionKeyCode!private! !
windowsKeyCode!public! !
windowsNumberRowCode!private! !
windowsSpecialKeyCode!private! !
!

!SDL_KeyboardEvent class methodsFor!

defineFields
	"SDL_KeyboardEvent compileDefinition"
	
	"typedef struct SDL_KeyboardEvent
	{
	    Uint32 type;        /**< ::SDL_KEYDOWN or ::SDL_KEYUP */
	    Uint32 reserved;
	    Uint64 timestamp;   /**< In nanoseconds, populated using SDL_GetTicksNS() */
	    SDL_WindowID windowID;    /**< The window with keyboard focus, if any */
	    SDL_KeyboardID which; /**< The keyboard instance id, or 0 if unknown or virtual */
	    Uint8 state;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
	    Uint8 repeat;       /**< Non-zero if this is a key repeat */
	    Uint8 padding2;
	    Uint8 padding3;
	    SDL_Keysym keysym;  /**< The key that was pressed or released */
	} SDL_KeyboardEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #state type: BYTEField new;
		defineField: #repeat type: BYTEField new;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller;
		defineField: #keysym type: (StructureField type: SDL_Keysym)!

getFieldNames
	^#(#type #timestamp #windowID #which #state #repeat #keysym)! !

!SDL_KeyboardEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

