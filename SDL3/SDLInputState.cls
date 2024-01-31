"Filed out from Dolphin Smalltalk"!

Object subclass: #SDLInputState
	instanceVariableNames: 'sdlLibrary sdlTtfLibrary sdlImageLibrary windows renderEventCode isActive keyStates isProcessing'
	classVariableNames: 'Singleton'
	poolDictionaries: 'SDLConstants Win32Constants'
	classInstanceVariableNames: ''!
SDLInputState guid: (GUID fromString: '{9b0ff9fb-40c3-4d7e-91fe-2a58048fdbdf}')!
SDLInputState comment: ''!
!SDLInputState categoriesForClass!Kernel-Objects! !
!SDLInputState methodsFor!

closeAllWindows
	windows values do: [:each | each close].
	windows removeAll!

createWindow: aString extent: aPoint flags: anInteger for: anApplication
	| window |
	window := sdlLibrary
				createWindow_title: aString
				w: aPoint x
				h: aPoint y
				flags: anInteger.
	windows at: window getID put: anApplication.
	^window!

createWindow: aString extent: aPoint for: anApplication
	^self createWindow: aString extent: aPoint flags: SDL_WINDOW_RESIZABLE for: anApplication!

dispatchEvent: anEvent to: anApplication
	anApplication
		onEvent: anEvent;
		markDirty!

finalize
	self quit.
	super finalize!

getDisplayExtent
	| primaryDisplayId displayMode |
	primaryDisplayId := sdlLibrary getPrimaryDisplay.
	primaryDisplayId = 0 ifTrue: [Error signal: sdlLibrary getError].
	displayMode := sdlLibrary getCurrentDisplayMode_displayID: primaryDisplayId.
	^displayMode w @ displayMode h!

initialize
	super initialize.
	sdlLibrary := SDL3Library default.
	sdlTtfLibrary := SDL3TTFLibrary default.
	sdlImageLibrary := SDL3ImageLibrary default.
	windows := LookupTable new.
	self
		initializeLibraries;
		registerRenderEvent;
		setHints.
	isActive := true.
	isProcessing := false.
	keyStates := sdlLibrary getKeyboardState_numkeys: nil!

initializeLibraries
	| resultCode |
	resultCode := sdlLibrary init_flags: SDL_INIT_VIDEO | SDL_INIT_EVENTS | SDL_INIT_TIMER.
	resultCode < 0 ifTrue: [self error: 'Error when initializing SDL base library'].
	resultCode := sdlTtfLibrary init.
	resultCode < 0 ifTrue: [self error: 'Error when initializing SDL TTF library'].
	resultCode := sdlImageLibrary init_flags: 0.
	resultCode < 0 ifTrue: [self error: 'Error when initializing SDL image library']!

isAltKeyDown
	^(self isKeyDown: SDL_SCANCODE_LALT) or: [self isKeyDown: SDL_SCANCODE_RALT]!

isCapsLockDown
	^self isKeyDown: SDL_SCANCODE_CAPSLOCK!

isCtrlKeyDown
	^(self isKeyDown: SDL_SCANCODE_LCTRL) or: [self isKeyDown: SDL_SCANCODE_RCTRL]!

isKeyDown: scanCode
	^(keyStates byteAtOffset: scanCode) asBoolean!

isShiftKeyDown
	^(self isKeyDown: SDL_SCANCODE_LSHIFT) or: [self isKeyDown: SDL_SCANCODE_RSHIFT]!

iterate
	(isActive and: [isProcessing not])
		ifTrue: 
			[isProcessing := true.
			
			[self
				pumpMessages;
				updateWindows] ifCurtailed: [isProcessing := false].
			isProcessing := false].
	[self iterate] postToInputQueue!

pollEvent
	| event result |
	event := SDL_Event new.
	result := sdlLibrary pollEvent_event: event.
	^result = 0 ifTrue: [nil] ifFalse: [event]!

pumpMessages
	
	[| currentEvent |
	currentEvent := self pollEvent.
	currentEvent
		ifNotNil: 
			[currentEvent type = SDL_EVENT_POLL_SENTINEL ifTrue: [^self].
			currentEvent windowID
				ifNotNil: 
					[:aWindowId |
					| destination |
					destination := windows at: aWindowId ifAbsent: [nil].
					destination ifNotNil: [self dispatchEvent: currentEvent to: destination]]]
		ifNil: [^self]]
			repeat!

pushCloseEvent: anInteger
	self pushEvent: (SDL_WindowEvent new
				type: SDL_EVENT_WINDOW_CLOSE_REQUESTED;
				timestamp: 0;
				windowID: anInteger)!

pushEvent: aSDLEvent
	sdlLibrary pushEvent_event: aSDLEvent!

pushRenderEvent: anInteger
	self pushEvent: (SDL_UserEvent new
				type: SDL_EVENT_USER;
				timestamp: 0;
				windowID: anInteger;
				code: renderEventCode)!

quit
	self closeAllWindows.
	keyStates := nil.
	isActive := false.
	sdlImageLibrary quit.
	sdlTtfLibrary quit.
	sdlLibrary quit!

registerRenderEvent
	renderEventCode := sdlLibrary registerEvents_numevents: 1!

removeWindow: anInteger
	windows removeKey: anInteger ifAbsent: [nil]!

setHints
	sdlLibrary setHint_name: 'SDL_MOUSE_FOCUS_CLICKTHROUGH' value: '1'!

updateWindows
	(windows select: [:each | each isDirty]) do: [:each | each update]!

windows
	^windows! !
!SDLInputState categoriesForMethods!
closeAllWindows!public! !
createWindow:extent:flags:for:!public! !
createWindow:extent:for:!public! !
dispatchEvent:to:!public! !
finalize!public! !
getDisplayExtent!public! !
initialize!public! !
initializeLibraries!public! !
isAltKeyDown!public! !
isCapsLockDown!public! !
isCtrlKeyDown!public! !
isKeyDown:!public! !
isShiftKeyDown!public! !
iterate!public! !
pollEvent!public! !
pumpMessages!public! !
pushCloseEvent:!public! !
pushEvent:!public! !
pushRenderEvent:!public! !
quit!public! !
registerRenderEvent!public! !
removeWindow:!public! !
setHints!public! !
updateWindows!public! !
windows!public! !
!

!SDLInputState class methodsFor!

current
	^Singleton!

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
	Singleton ifNotNil: [Singleton iterate]!

new
	Singleton ifNil: [Singleton := super new initialize].
	^Singleton!

onShutdown
	Singleton quit!

onStartup
	Singleton initialize.
	self iterate!

restart
	self
		onShutdown;
		onStartup! !
!SDLInputState class categoriesForMethods!
current!public! !
initialize!public! !
iterate!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
restart!public! !
!

