"Filed out from Dolphin Smalltalk"!

Object subclass: #SDLWindowManager
	instanceVariableNames: 'windows renderEventCode keyStates logCallback isRunning isBeingDebugged'
	classVariableNames: 'Singleton'
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
	windows removeAll!

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
	^window!

createWindow: aString extent: aPoint for: anApplication
	^self createWindow: aString extent: aPoint flags: SDL_WINDOW_RESIZABLE for: anApplication!

forceStop
	windows removeAll.
	keyStates := nil.
	logCallback := nil.
	isRunning := false!

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

getPrimaryDisplayExtent
	^self getPrimaryDisplay extent!

initialize
	super initialize.
	windows := LookupTable new.
	self
		initializeLibraries;
		initializeLogging;
		registerRenderEvent;
		setHints.
	keyStates := self library getKeyboardState_numkeys: nil.
	isRunning := true.
	isBeingDebugged := false!

initializeLibraries
	| sdl sdlTtf |
	sdl := SDL3Library default.
	sdlTtf := SDL3TTFLibrary default.
	(sdl init_flags: SDL_INIT_EVENTS | SDL_INIT_VIDEO | SDL_INIT_AUDIO | SDL_INIT_TIMER)
		ifFalse: [self error: 'Error when initializing SDL base library'].
	sdlTtf init ifFalse: [self error: sdl getError]!

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

iterate
	isRunning ifFalse: [^self].
	self
		pumpMessages;
		renderWindows!

library
	^SDL3Library default!

onLog: anExternalAddress category: anInteger priority: anInteger2 message: anAnsiString
	Transcript
		display: anInteger -> anInteger2 -> anAnsiString;
		cr!

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
	
	[| event windowId destination |
	event := self pollEvent.
	event ifNil: [^self].
	event type = SDL_EVENT_POLL_SENTINEL ifTrue: [^self].
	windowId := event windowID.
	windowId ifNil: [^self].
	destination := windows at: windowId ifAbsent: [^self].
	destination onEvent: event]
			repeat!

pushCloseEvent: anInteger
	| event |
	event := SDL_WindowEvent new
				type: SDL_EVENT_WINDOW_CLOSE_REQUESTED;
				windowID: anInteger.
	self pushEvent: event!

pushEvent: aSDLEvent
	| result |
	result := self library pushEvent_event: aSDLEvent.
	self checkBooleanResult: result!

pushRenderEvent: anInteger
	| event |
	event := SDL_UserEvent new
				type: renderEventCode;
				windowID: anInteger.
	self pushEvent: event!

registerRenderEvent
	renderEventCode := self library registerEvents_numevents: 1!

renderWindows
	(windows select: [:each | each isReady]) do: [:each | each render]!

restart
	self
		stop;
		start!

setHints
	self library setHint_name: 'SDL_MOUSE_FOCUS_CLICKTHROUGH' value: '1'!

start
	isRunning := true!

stop
	self closeAllWindows.
	keyStates := nil.
	logCallback := nil.
	isRunning := false! !

!SDLWindowManager categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
closeAllWindows!public! !
closeWindow:!public! !
createWindow:extent:flags:for:!public! !
createWindow:extent:for:!public! !
forceStop!public! !
getDisplays!public! !
getPrimaryDisplay!public! !
getPrimaryDisplayExtent!public! !
initialize!public! !
initializeLibraries!private! !
initializeLogging!private! !
isAltKeyDown!public! !
isCapsLockDown!public! !
isCtrlKeyDown!public! !
isKeyDown:!public! !
isShiftKeyDown!public! !
iterate!public! !
library!public! !
onLog:category:priority:message:!public! !
onUnhandledError:!public! !
pollEvent!public! !
pumpMessages!public! !
pushCloseEvent:!public! !
pushEvent:!public! !
pushRenderEvent:!public! !
registerRenderEvent!public! !
renderWindows!public! !
restart!public! !
setHints!public! !
start!public! !
stop!public! !
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

	SessionManager current
		when: #sessionStarted
			send: #onStartup
			to: self;
		when: #sessionStopped
			send: #onShutdown
			to: self!

iterate
	Singleton ifNil: [^self].
	[Singleton iterate] on: Error do: [:error | Singleton onUnhandledError: error]!

new
	self shouldNotImplement!

onShutdown
	self disable!

onStartup
	self
		disable;
		enable! !

!SDLWindowManager class categoriesForMethods!
current!public! !
disable!public! !
enable!public! !
initialize!public! !
iterate!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
!

