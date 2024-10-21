"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Event
	instanceVariableNames: 'target handlers'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_Event guid: (GUID fromString: '{22d4884c-5d9e-40fd-a7e0-f86f85f39969}')!

SDL_Event comment: ''!

!SDL_Event categoriesForClass!External-Data-Structured! !

!SDL_Event methodsFor!

addHandler: anObject
	handlers ifNil: [handlers := OrderedCollection new].
	handlers add: anObject!

asCommonEvent
	^SDL_CommonEvent fromAddress: bytes yourAddress!

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
	handlers ifNil: [^false].
	^handlers anySatisfy: [:each | each consumesKeyboardInput]!

isHandled
	^handlers ifNil: [false] ifNotNil: [handlers isEmpty not]!

isWindowEvent
	^self type between: SDL_EVENT_WINDOW_FIRST and: SDL_EVENT_WINDOW_LAST!

printOn: aStream
	aStream nextPutAll: self class name!

target
	^target!

target: anObject
	target := anObject!

type
	^self asCommonEvent type!

windowID
	^self hasAssociatedWindow ifTrue: [self asWindowEvent windowID] ifFalse: [nil]! !

!SDL_Event categoriesForMethods!
addHandler:!accessing!public! !
asCommonEvent!public! !
asKeyboardEvent!public! !
asMouseButtonEvent!public! !
asMouseMotionEvent!public! !
asMouseWheelEvent!public! !
asTextEditingEvent!public! !
asTextInputEvent!public! !
asUserEvent!public! !
asWindowEvent!public! !
convertToSubclass!public! !
hasAssociatedWindow!public! !
isConsumed!public! !
isHandled!public! !
isWindowEvent!public! !
printOn:!public! !
target!accessing!public! !
target:!accessing!public! !
type!public! !
windowID!public! !
!

!SDL_Event class methodsFor!

defineFields
	"self compileDefinition"

	self byteSize: 128!

fromAddress: anAddress
	^(super fromAddress: anAddress) initialize!

getFieldNames
	^#()! !

!SDL_Event class categoriesForMethods!
defineFields!public! !
fromAddress:!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

