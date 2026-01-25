"Filed out from Dolphin Smalltalk"!

Object subclass: #SDLWindowManager
	instanceVariableNames: 'windows keyStates logCallback frameCallbacks isRunning isBeingDebugged'
	classVariableNames: 'EventMap Singleton'
	poolDictionaries: 'SDLConstants Win32Constants'
	classInstanceVariableNames: ''!

SDLWindowManager guid: (GUID fromString: '{9b0ff9fb-40c3-4d7e-91fe-2a58048fdbdf}')!

SDLWindowManager comment: ''!

!SDLWindowManager categoriesForClass!Kernel-Objects! !

!SDLWindowManager methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: self library getError]!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: self library getError]!

closeAllWindows
	windows values do: [:each | each close].
	windows removeAll.
	frameCallbacks removeAll!

closeWindow: anInteger
	windows removeKey: anInteger
		ifAbsent: [self error: ('Window with ID <D> does not exist' expandMacrosWith: anInteger)]!

createWindow: aString extent: aPoint flags: anInteger for: anApplication
	| window |
	window := self library
				createWindow_title: aString
				w: aPoint x truncated
				h: aPoint y truncated
				flags: anInteger.
	window
		initialize;
		startTextInput.
	windows at: window getID put: anApplication.
	isRunning ifFalse: [self start].
	^window!

createWindow: aString extent: aPoint for: anApplication
	^self createWindow: aString extent: aPoint flags: SDL_WINDOW_RESIZABLE for: anApplication!

dispatchEvent: aSDLEvent to: anObject
	| event selector |
	event := aSDLEvent convertToSubclass.
	selector := EventMap at: event type.
	anObject perform: selector with: event!

displayExtent
	^self getPrimaryDisplay extent!

forceStop
	windows removeAll.
	self stop!

getDisplays
	| displayCount primaryDisplayId |
	displayCount := SDWORD new.
	primaryDisplayId := self library getDisplays_count: displayCount.
	primaryDisplayId = 0 ifTrue: [self error: self library getError].
	^(0 to: displayCount value) collect: [:displayId | SDL_Display fromInteger: displayId]!

getPrimaryDisplay
	| primaryDisplayId |
	primaryDisplayId := self library getPrimaryDisplay.
	primaryDisplayId = 0 ifTrue: [self error: self library getError].
	^SDL_Display fromInteger: primaryDisplayId!

initialize
	super initialize.
	windows := LookupTable new.
	self
		initializeLibraries;
		initializeLogging;
		setHints.
	frameCallbacks := LookupTable new.
	keyStates := self library getKeyboardState_numkeys: nil.
	isRunning := true.
	isBeingDebugged := false.!

initializeLibraries
	| sdl sdlTtf sdlNet |
	sdl := SDL3Library default.
	sdlTtf := SDL3TTFLibrary default.
	sdlNet := SDL3NetLibrary default.
	(sdl init_flags: SDL_INIT_EVENTS | SDL_INIT_VIDEO | SDL_INIT_AUDIO | SDL_INIT_TIMER)
		ifFalse: [self error: 'Error when initializing SDL base library'].
	sdlTtf init ifFalse: [self error: sdl getError].
	sdlNet init ifFalse: [self error: sdl getError]!

initializeLogging
	logCallback := MessageCallback
				receiver: self
				selector: #onLog:category:priority:message:
				descriptor: (ExternalDescriptor
						callingConvention: 'cdecl:'
						returnType: 'void'
						argumentTypes: 'void* sdword sdword lpstr').
	self library
		setLogOutputFunction_callback: logCallback asParameter userdata: nil;
		setLogPriorities_priority: SDL_LOG_PRIORITY_VERBOSE!

isAltKeyDown
	^(self isKeyDown: SDL_SCANCODE_LALT) or: [self isKeyDown: SDL_SCANCODE_RALT]!

isCapsLockDown
	^self isKeyDown: SDL_SCANCODE_CAPSLOCK!

isCtrlKeyDown
	^(self isKeyDown: SDL_SCANCODE_LCTRL) or: [self isKeyDown: SDL_SCANCODE_RCTRL]!

isKeyDown: scanCode
	keyStates ifNil: [^false].
	^(keyStates byteAtOffset: scanCode) asBoolean!

isShiftKeyDown
	^(self isKeyDown: SDL_SCANCODE_LSHIFT) or: [self isKeyDown: SDL_SCANCODE_RSHIFT]!

keepAlive
	^isRunning!

library
	^SDL3Library default!

onAudioDeviceAdded: aSDL_Event!

onAudioDeviceRemoved: aSDL_Event!

onClipboardUpdate: aSDL_Event !

onKeyboardAdded: aSDL_Event !

onLog: anExternalAddress category: anInteger priority: anInteger2 message: anAnsiString
	Transcript
		display: anInteger -> anInteger2 -> anAnsiString;
		cr!

onMouseAdded: aSDL_Event !

onQuit: aSDLEvent!

onUnhandledError: anError
	isBeingDebugged
		ifTrue: 
			[Transcript
				display: anError;
				cr]
		ifFalse: 
			[isBeingDebugged := true.
			[SessionManager current onUnhandledError: anError] ensure: [isBeingDebugged := false]]!

pollEvent
	| event result |
	event := SDL_Event new.
	result := self library pollEvent_event: event.
	^result ifTrue: [event] ifFalse: [nil]!

pumpMessages
	
	[| event target |
	event := self pollEvent.
	event ifNil: [^self].
	event type = SDL_EVENT_POLL_SENTINEL ifTrue: [^self].
	target := event windowID ifNil: [self] ifNotNil: [:windowId | windows at: windowId ifAbsent: [nil]].
	target ifNil: [^self].
	self dispatchEvent: event to: target]
			repeat!

registerFrameCallback: aBlock for: anObject
	frameCallbacks at: anObject put: aBlock!

renderWindows
	(windows select: [:each | each isReady]) do: [:each | each render]!

restart
	self
		stop;
		start!

setHint: name value: value
	| result |
	result := self library setHint_name: name value: value.
	self checkBooleanResult: result!

setHints
	self
		setHint: 'SDL_MOUSE_FOCUS_CLICKTHROUGH' value: '0';
		setHint: 'SDL_RENDER_DIRECT3D11_DEBUG' value: '1'!

start
	isRunning := true!

stop
	self closeAllWindows.
	keyStates := nil.
	logCallback := nil.
	frameCallbacks removeAll.
	isRunning := false!

update
	isRunning ifFalse: [^self].
	self pumpMessages.
	frameCallbacks do: [:each | each value].
	self renderWindows! !

!SDLWindowManager categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
closeAllWindows!public! !
closeWindow:!public! !
createWindow:extent:flags:for:!public! !
createWindow:extent:for:!public! !
dispatchEvent:to:!private! !
displayExtent!public! !
forceStop!public! !
getDisplays!public! !
getPrimaryDisplay!public! !
initialize!public! !
initializeLibraries!private! !
initializeLogging!private! !
isAltKeyDown!public! !
isCapsLockDown!public! !
isCtrlKeyDown!public! !
isKeyDown:!public! !
isShiftKeyDown!public! !
keepAlive!public! !
library!public! !
onAudioDeviceAdded:!public! !
onAudioDeviceRemoved:!public! !
onClipboardUpdate:!public! !
onKeyboardAdded:!public! !
onLog:category:priority:message:!public! !
onMouseAdded:!public! !
onQuit:!public! !
onUnhandledError:!public! !
pollEvent!public! !
pumpMessages!public! !
registerFrameCallback:for:!public! !
renderWindows!public! !
restart!public! !
setHint:value:!public! !
setHints!public! !
start!public! !
stop!public! !
update!public! !
!

!SDLWindowManager class methodsFor!

current
	^Singleton!

disable
	Singleton ifNil: [^self].
	Singleton forceStop.
	Singleton := nil!

enable
	Singleton ifNotNil: [^self].
	Singleton := super new initialize!

initialize
	"self initialize"

	self initializeEventMap.
	SessionManager current
		when: #sessionStarted
			send: #onStartup
			to: self;
		when: #sessionStopped
			send: #onShutdown
			to: self!

initializeEventMap
	"https://wiki.libsdl.org/SDL3/SDL_EventType"

	EventMap := LookupTable new.
	EventMap
		at: SDL_EVENT_FIRST put: #onFirst:;
		at: SDL_EVENT_QUIT put: #onQuit:;
		at: SDL_EVENT_TERMINATING put: #onTerminating:;
		at: SDL_EVENT_LOW_MEMORY put: #onLowMemory:;
		at: SDL_EVENT_WILL_ENTER_BACKGROUND put: #onWillEnterBackground:;
		at: SDL_EVENT_DID_ENTER_BACKGROUND put: #onDidEnterBackground:;
		at: SDL_EVENT_WILL_ENTER_FOREGROUND put: #onWillEnterForeground:;
		at: SDL_EVENT_DID_ENTER_FOREGROUND put: #onDidEnterForeground:;
		at: SDL_EVENT_LOCALE_CHANGED put: #onLocaleChanged:;
		at: SDL_EVENT_SYSTEM_THEME_CHANGED put: #onSystemThemeChanged:;
		at: SDL_EVENT_DISPLAY_ORIENTATION put: #onDisplayOrientation:;
		at: SDL_EVENT_DISPLAY_ADDED put: #onDisplayAdded:;
		at: SDL_EVENT_DISPLAY_REMOVED put: #onDisplayRemoved:;
		at: SDL_EVENT_DISPLAY_MOVED put: #onDisplayMoved:;
		at: SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED put: #onDisplayDesktopModeChanged:;
		at: SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED put: #onDisplayCurrentModeChanged:;
		at: SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED put: #onDisplayContentScaleChanged:;
		at: SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED put: #onDisplayUsableBoundsChanged:;
		at: SDL_EVENT_WINDOW_SHOWN put: #onWindowShown:;
		at: SDL_EVENT_WINDOW_HIDDEN put: #onWindowHidden:;
		at: SDL_EVENT_WINDOW_EXPOSED put: #onWindowExposed:;
		at: SDL_EVENT_WINDOW_MOVED put: #onWindowMoved:;
		at: SDL_EVENT_WINDOW_RESIZED put: #onWindowResized:;
		at: SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED put: #onWindowPixelSizeChanged:;
		at: SDL_EVENT_WINDOW_METAL_VIEW_RESIZED put: #onMetalViewResized:;
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
		at: SDL_EVENT_WINDOW_SAFE_AREA_CHANGED put: #onWindowSafeAreaChanged:;
		at: SDL_EVENT_WINDOW_OCCLUDED put: #onWindowOccluded:;
		at: SDL_EVENT_WINDOW_ENTER_FULLSCREEN put: #onWindowEnterFullscreen:;
		at: SDL_EVENT_WINDOW_LEAVE_FULLSCREEN put: #onWindowLeaveFullscreen:;
		at: SDL_EVENT_WINDOW_DESTROYED put: #onWindowDestroyed:;
		at: SDL_EVENT_WINDOW_HDR_STATE_CHANGED put: #onWindowHdrStateChanged:;
		at: SDL_EVENT_KEY_DOWN put: #onKeyDown:;
		at: SDL_EVENT_KEY_UP put: #onKeyUp:;
		at: SDL_EVENT_TEXT_EDITING put: #onTextEditing:;
		at: SDL_EVENT_TEXT_INPUT put: #onTextInput:;
		at: SDL_EVENT_KEYMAP_CHANGED put: #onKeymapChanged:;
		at: SDL_EVENT_KEYBOARD_ADDED put: #onKeyboardAdded:;
		at: SDL_EVENT_KEYBOARD_REMOVED put: #onKeyboardRemoved:;
		at: SDL_EVENT_TEXT_EDITING_CANDIDATES put: #onTextEditingCandidates:;
		at: SDL_EVENT_SCREEN_KEYBOARD_SHOWN put: #onScreenKeyboardShown:;
		at: SDL_EVENT_SCREEN_KEYBOARD_HIDDEN put: #onScreenKeyboardHidden:;
		at: SDL_EVENT_MOUSE_MOTION put: #onMouseMotion:;
		at: SDL_EVENT_MOUSE_BUTTON_DOWN put: #onMouseButtonDown:;
		at: SDL_EVENT_MOUSE_BUTTON_UP put: #onMouseButtonUp:;
		at: SDL_EVENT_MOUSE_WHEEL put: #onMouseWheel:;
		at: SDL_EVENT_MOUSE_ADDED put: #onMouseAdded:;
		at: SDL_EVENT_MOUSE_REMOVED put: #onMouseRemoved:;
		at: SDL_EVENT_CLIPBOARD_UPDATE put: #onClipboardUpdate:;
		at: SDL_EVENT_AUDIO_DEVICE_ADDED put: #onAudioDeviceAdded:;
		at: SDL_EVENT_AUDIO_DEVICE_REMOVED put: #onAudioDeviceRemoved:;
		at: SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED put: #onAudioDeviceFormatChanged:;
		at: SDL_EVENT_USER put: #onUser:!

new
	self shouldNotImplement!

onShutdown
	self disable!

onStartup
	self
		disable;
		enable!

update
	Singleton ifNil: [^self].
	[Singleton update] on: Error do: [:error | Singleton onUnhandledError: error]! !

!SDLWindowManager class categoriesForMethods!
current!public! !
disable!public! !
enable!public! !
initialize!public! !
initializeEventMap!private! !
new!public! !
onShutdown!public! !
onStartup!public! !
update!public! !
!

