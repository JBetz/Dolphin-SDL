"Filed out from Dolphin Smalltalk"!

Object subclass: #Application
	instanceVariableNames: 'renderer window cursor'
	classVariableNames: 'EventMap'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
Application guid: (GUID fromString: '{0bff31b0-fdc2-450a-8e3b-c3f9bec48eb4}')!
Application comment: ''!
!Application categoriesForClass!Kernel-Objects! !
!Application methodsFor!

calculateInitialExtent
	| preferredExtent displayExtent |
	preferredExtent := self preferredExtent.
	displayExtent := SDLInputState new getDisplayExtent.
	^(preferredExtent x min: displayExtent x - 100) @ (preferredExtent y min: displayExtent y - 100)!

createRenderer
	| sdlRenderer |
	sdlRenderer := window createRenderer.
	renderer := Renderer2D new sdlRenderer: sdlRenderer.
	sdlRenderer setDrawBlendMode: SDL_BLENDMODE_BLEND!

cursor: aSDLCursor
	cursor ifNotNil: [cursor destroy].
	cursor := aSDLCursor.
	cursor ifNotNil: [cursor makeCurrent]!

extent
	^window ifNotNil: [window extent] ifNil: [0 @ 0]!

height
	^self extent y!

left
	^self rectangle left!

onEvent: aSDLEvent
	| event selector |
	event := aSDLEvent convertToSubclass.
	selector := EventMap at: event type ifAbsent: [^nil].
	self perform: selector with: event!

onKeyDown: aKeyboardEvent!

onKeyUp: aKeyboardEvent!

onMouseButtonDown: aMouseButtonEvent
	!

onMouseButtonUp: aMouseButtonEvent
	!

onMouseMotion: aMouseMotionEvent
	!

onMouseWheel: aMouseWheelEvent
	!

onTextEditing: aTextEditingEvent !

onTextInput: aTextInputEvent!

onUser: aUserEvent
	!

onViewCreated
	self
		createWindow;
		createRenderer!

onWindowCloseRequested: aWindowEvent!

onWindowDestroyed: aWindowEvent!

onWindowExposed: aWindowEvent!

onWindowFocusGained: aWindowEvent!

onWindowFocusLost: aWindowEvent!

onWindowHidden: aWindowEvent!

onWindowMaximized: aWindowEvent!

onWindowMinimized: aWindowEvent!

onWindowMouseEnter: aWindowEvent!

onWindowMouseLeave: aWindowEvent!

onWindowMoved: aWindowEvent !

onWindowOccluded: aWindowEvent!

onWindowPixelSizeChanged: aWindowEvent!

onWindowResized: aWindowEvent!

onWindowRestored: aWindowEvent!

onWindowShown: aWindowEvent!

origin
	^0@0!

preferredExtent
	^1200@1000!

rectangle
	^Rectangle origin: self origin extent: self extent!

renderer: aRenderer
	renderer := aRenderer!

top
	^self rectangle top!

viewport
	^renderer viewport!

window
	^window!

windowPosition
	^window ifNotNil: [window getPosition]! !
!Application categoriesForMethods!
calculateInitialExtent!private! !
createRenderer!private! !
cursor:!public! !
extent!public! !
height!public! !
left!public! !
onEvent:!public! !
onKeyDown:!event handling!public! !
onKeyUp:!event handling!public! !
onMouseButtonDown:!event handling!public! !
onMouseButtonUp:!event handling!public! !
onMouseMotion:!event handling!public! !
onMouseWheel:!event handling!public! !
onTextEditing:!public! !
onTextInput:!event handling!public! !
onUser:!event handling!public! !
onViewCreated!public! !
onWindowCloseRequested:!event handling!public! !
onWindowDestroyed:!event handling!public! !
onWindowExposed:!event handling!public! !
onWindowFocusGained:!event handling!public! !
onWindowFocusLost:!event handling!public! !
onWindowHidden:!event handling!public! !
onWindowMaximized:!event handling!public! !
onWindowMinimized:!event handling!public! !
onWindowMouseEnter:!event handling!public! !
onWindowMouseLeave:!event handling!public! !
onWindowMoved:!public! !
onWindowOccluded:!event handling!public! !
onWindowPixelSizeChanged:!event handling!public! !
onWindowResized:!event handling!public! !
onWindowRestored:!event handling!public! !
onWindowShown:!event handling!public! !
origin!public! !
preferredExtent!private! !
rectangle!public! !
renderer:!public! !
top!public! !
viewport!public! !
window!accessing!public! !
windowPosition!public! !
!

!Application class methodsFor!

initialize
	"self initialize"

	EventMap := LookupTable new.
	EventMap
		at: SDL_EVENT_KEY_DOWN put: #onKeyDown:;
		at: SDL_EVENT_KEY_UP put: #onKeyUp:;
		at: SDL_EVENT_TEXT_EDITING put: #onTextEditing:;
		at: SDL_EVENT_TEXT_INPUT put: #onTextInput:;
		at: SDL_EVENT_KEYMAP_CHANGED put: #onKeymapChanged:;
		at: SDL_EVENT_MOUSE_MOTION put: #onMouseMotion:;
		at: SDL_EVENT_MOUSE_BUTTON_DOWN put: #onMouseButtonDown:;
		at: SDL_EVENT_MOUSE_BUTTON_UP put: #onMouseButtonUp:;
		at: SDL_EVENT_MOUSE_WHEEL put: #onMouseWheel:;
		at: SDL_EVENT_WINDOW_SHOWN put: #onWindowShown:;
		at: SDL_EVENT_WINDOW_HIDDEN put: #onWindowHidden:;
		at: SDL_EVENT_WINDOW_EXPOSED put: #onWindowExposed:;
		at: SDL_EVENT_WINDOW_MOVED put: #onWindowMoved:;
		at: SDL_EVENT_WINDOW_RESIZED put: #onWindowResized:;
		at: SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED put: #onWindowPixelSizeChanged:;
		at: SDL_EVENT_WINDOW_MINIMIZED put: #onWindowMinimized:;
		at: SDL_EVENT_WINDOW_MAXIMIZED put: #onWindowMaximized:;
		at: SDL_EVENT_WINDOW_RESTORED put: #onWindowRestored:;
		at: SDL_EVENT_WINDOW_MOUSE_ENTER put: #onWindowMouseEnter:;
		at: SDL_EVENT_WINDOW_MOUSE_LEAVE put: #onWindowMouseLeave:;
		at: SDL_EVENT_WINDOW_FOCUS_GAINED put: #onWindowFocusGained:;
		at: SDL_EVENT_WINDOW_FOCUS_LOST put: #onWindowFocusLost:;
		at: SDL_EVENT_WINDOW_CLOSE_REQUESTED put: #onWindowCloseRequested:;
		at: SDL_EVENT_WINDOW_TAKE_FOCUS put: #onWindowTakeFocus:;
		at: SDL_EVENT_WINDOW_HIT_TEST put: #onWindowHitTest:;
		at: SDL_EVENT_WINDOW_ICCPROF_CHANGED put: #onWindowIccProfileChanged:;
		at: SDL_EVENT_WINDOW_DISPLAY_CHANGED put: #onWindowDisplayChanged:;
		at: SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED put: #onWindowDisplayScaleChanged:;
		at: SDL_EVENT_WINDOW_OCCLUDED put: #onWindowOccluded:;
		at: SDL_EVENT_WINDOW_DESTROYED put: #onWindowDestroyed:;
		at: SDL_EVENT_USER put: #onUser:! !
!Application class categoriesForMethods!
initialize!public! !
!

