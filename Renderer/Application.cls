"Filed out from Dolphin Smalltalk"!

Object subclass: #Application
	instanceVariableNames: 'renderer window cursor mousePosition isDirty windowManager isReady'
	classVariableNames: 'EventMap'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

Application guid: (GUID fromString: '{0bff31b0-fdc2-450a-8e3b-c3f9bec48eb4}')!

Application comment: ''!

!Application categoriesForClass!Kernel-Objects! !

!Application methodsFor!

close
	cursor := nil.
	self
		closeRenderer;
		closeWindow!

closeRenderer
	renderer ifNil: [^self].
	renderer destroy.
	renderer := nil!

closeWindow
	window ifNil: [^self].
	windowManager closeWindow: window getID.
	window destroy.
	window := nil!

createRenderer
	renderer := self useGPURenderer
				ifTrue: [Renderer3D forWindow: window]
				ifFalse: [Renderer2D forWindow: window]!

createWindow
	window := windowManager
				createWindow: self class name
				extent: self preferredExtent
				flags: self windowFlags
				for: self!

cursor: aSymbol
	cursor name = aSymbol ifTrue: [^self].
	cursor := SDL_Cursor perform: aSymbol.
	cursor
		name: aSymbol;
		makeCurrent!

drawOn: aCanvas
	self subclassResponsibility!

extent
	^window ifNotNil: [window extent] ifNil: [0 @ 0]!

height
	^self extent y!

initialize
	super initialize.
	windowManager := SDLWindowManager current.
	mousePosition := 0 @ 0.
	isDirty := true.
	isReady := false!

isDirty
	^isDirty!

isReady
	^isReady!

left
	^self rectangle left!

markDirty
	isDirty := true!

mousePosition
	^mousePosition ifNil: [0 @ 0]!

onCreated
	self
		createWindow;
		createRenderer!

onEvent: aSDLEvent
	| event selector |
	event := aSDLEvent convertToSubclass.
	selector := EventMap at: event type ifAbsent: [^nil].
	self
		perform: selector with: event;
		markDirty!

onKeyDown: aKeyboardEvent!

onKeyUp: aKeyboardEvent!

onMouseButtonDown: aMouseButtonEvent
	!

onMouseButtonUp: aMouseButtonEvent
	!

onMouseMotion: aMouseMotionEvent
	mousePosition := aMouseMotionEvent position!

onMouseWheel: aMouseWheelEvent
	!

onPaintRequired: aPaintEvent
	self drawOn: aPaintEvent canvas!

onTextEditing: aTextEditingEvent !

onTextInput: aTextInputEvent!

onUser: aUserEvent
	self markDirty!

onWindowCloseRequested: aWindowEvent
	self close!

onWindowDestroyed: aWindowEvent!

onWindowDisplayChanged: aWindowEvent 
	^self!

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
	^1200 @ 900!

rectangle
	^Rectangle origin: self origin extent: self extent!

render
	| paintEvent canvas |
	renderer ifNil: [^self].
	paintEvent := SDL_PaintEvent new.
	canvas := Canvas2D new.
	paintEvent canvas: canvas.
	self onPaintRequired: paintEvent.
	renderer present: canvas!

renderer: aRenderer
	renderer := aRenderer!

sdl
	^SDL3Library default!

setWindowTitle: aString
	(window isNil or: [aString isNil]) ifTrue: [^self].
	window setTitle: aString asUtf8String!

show
	self onCreated!

top
	^self rectangle top!

useGPURenderer
	^false!

viewport
	^renderer viewport!

width
	^self extent x!

window
	^window!

windowFlags
	^SDL_WINDOW_RESIZABLE!

windowPosition
	^window ifNotNil: [window getPosition]! !

!Application categoriesForMethods!
close!public! !
closeRenderer!private! !
closeWindow!private! !
createRenderer!private! !
createWindow!private! !
cursor:!public! !
drawOn:!private! !
extent!public! !
height!public! !
initialize!public! !
isDirty!public! !
isReady!public! !
left!public! !
markDirty!public! !
mousePosition!public! !
onCreated!public! !
onEvent:!public! !
onKeyDown:!event handling!public! !
onKeyUp:!event handling!public! !
onMouseButtonDown:!event handling!public! !
onMouseButtonUp:!event handling!public! !
onMouseMotion:!event handling!public! !
onMouseWheel:!event handling!public! !
onPaintRequired:!public! !
onTextEditing:!public! !
onTextInput:!event handling!public! !
onUser:!event handling!public! !
onWindowCloseRequested:!event handling!public! !
onWindowDestroyed:!event handling!public! !
onWindowDisplayChanged:!public! !
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
preferredExtent!public! !
rectangle!public! !
render!public! !
renderer:!public! !
sdl!private! !
setWindowTitle:!accessing!public! !
show!public! !
top!public! !
useGPURenderer!private! !
viewport!public! !
width!public! !
window!accessing!public! !
windowFlags!public! !
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
		at: SDL_EVENT_WINDOW_HIT_TEST put: #onWindowHitTest:;
		at: SDL_EVENT_WINDOW_ICCPROF_CHANGED put: #onWindowIccProfileChanged:;
		at: SDL_EVENT_WINDOW_DISPLAY_CHANGED put: #onWindowDisplayChanged:;
		at: SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED put: #onWindowDisplayScaleChanged:;
		at: SDL_EVENT_WINDOW_OCCLUDED put: #onWindowOccluded:;
		at: SDL_EVENT_WINDOW_DESTROYED put: #onWindowDestroyed:;
		at: SDL_EVENT_USER put: #onUser:!

new
	^super new initialize!

preferredExtent
	^1280@900! !

!Application class categoriesForMethods!
initialize!public! !
new!public! !
preferredExtent!public! !
!

