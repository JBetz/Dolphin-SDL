﻿"Filed out from Dolphin Smalltalk"!

Object subclass: #SDLInputState
	instanceVariableNames: 'windows renderEventCode keyStates messageLoopProcess framesPerSecond isProcessing'
	classVariableNames: 'Singleton'
	poolDictionaries: 'SDLConstants Win32Constants'
	classInstanceVariableNames: ''!

SDLInputState guid: (GUID fromString: '{9b0ff9fb-40c3-4d7e-91fe-2a58048fdbdf}')!

SDLInputState comment: ''!

!SDLInputState categoriesForClass!Kernel-Objects! !

!SDLInputState methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: self library getError]!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: self library getError]!

closeAllWindows
	windows values do: [:each | each close].
	windows removeAll!

closeWindow: anInteger
	windows removeKey: anInteger ifAbsent: [nil].
	windows isEmpty ifTrue: [messageLoopProcess priority: Processor systemBasePriority]!

createWindow: aString extent: aPoint flags: anInteger for: anApplication
	| window |
	self ensureMessageLoopRunning.
	window := self library
				createWindow_title: aString
				w: aPoint x
				h: aPoint y
				flags: anInteger.
	window
		initialize;
		startTextInput.
	windows at: window getID put: anApplication.
	^window!

createWindow: aString extent: aPoint for: anApplication
	^self createWindow: aString extent: aPoint flags: SDL_WINDOW_RESIZABLE for: anApplication!

ensureMessageLoopRunning
	(messageLoopProcess notNil and: [messageLoopProcess isAlive])
		ifFalse: [self startMessageLoopProcess].
	messageLoopProcess priority: Processor userSchedulingPriority!

getDisplayExtent
	| primaryDisplayId displayMode |
	primaryDisplayId := self library getPrimaryDisplay.
	primaryDisplayId = 0 ifTrue: [self error: self library getError].
	displayMode := self library getCurrentDisplayMode_displayID: primaryDisplayId.
	^displayMode w @ displayMode h!

initialize
	super initialize.
	windows := LookupTable new.
	isProcessing := false.
	framesPerSecond := 60.
	self
		initializeLibraries;
		registerRenderEvent;
		setHints.
	keyStates := self library getKeyboardState_numkeys: nil!

initializeLibraries
	(SDL3Library default init_flags: SDL_INIT_EVENTS | SDL_INIT_VIDEO | SDL_INIT_AUDIO | SDL_INIT_TIMER)
		ifFalse: [self error: 'Error when initializing SDL base library'].
	SDL3TTFLibrary default init!

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
	isProcessing ifTrue: [^self].
	isProcessing := true.
	
	[self
		pumpMessages;
		updateWindows] ensure: [isProcessing := false]!

library
	^SDL3Library default!

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
	destination := windows at: windowId ifAbsent: [^nil].
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

setHints
	self library setHint_name: 'SDL_MOUSE_FOCUS_CLICKTHROUGH' value: '1'!

startMessageLoopProcess
	messageLoopProcess := 
			[
			[[self iterate] postToMessageQueue.
			(Delay forMilliseconds: 1000 / framesPerSecond) wait]
					repeat]
					forkAt: Processor userSchedulingPriority.
	messageLoopProcess name: 'SDL'!

stop
	keyStates := nil.
	self
		closeAllWindows;
		stopMessageLoopProcess!

stopMessageLoopProcess
	messageLoopProcess ifNil: [^self].
	messageLoopProcess isAlive ifTrue: [messageLoopProcess terminate].
	messageLoopProcess := nil!

updateWindows
	(windows select: [:each | each isDirty]) do: [:each | each update]!

windows
	^windows! !

!SDLInputState categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
closeAllWindows!public! !
closeWindow:!public! !
createWindow:extent:flags:for:!public! !
createWindow:extent:for:!public! !
ensureMessageLoopRunning!public! !
getDisplayExtent!public! !
initialize!public! !
initializeLibraries!private! !
isAltKeyDown!public! !
isCapsLockDown!public! !
isCtrlKeyDown!public! !
isKeyDown:!public! !
isShiftKeyDown!public! !
iterate!private! !
library!public! !
pollEvent!public! !
pumpMessages!public! !
pushCloseEvent:!public! !
pushEvent:!public! !
pushRenderEvent:!public! !
registerRenderEvent!public! !
setHints!public! !
startMessageLoopProcess!private! !
stop!public! !
stopMessageLoopProcess!private! !
updateWindows!public! !
windows!public! !
!

!SDLInputState class methodsFor!

current
	Singleton ifNil: [Singleton := super new initialize].
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

new
	^self shouldNotImplement!

onShutdown
	Singleton ifNotNil: [Singleton stop].
	Singleton := nil!

onStartup
	Singleton ifNotNil: [Singleton stop].
	self reset!

reset
	Singleton := nil!

restart
	self
		onShutdown;
		onStartup! !

!SDLInputState class categoriesForMethods!
current!public! !
initialize!public! !
new!public! !
onShutdown!public! !
onStartup!public! !
reset!public! !
restart!public! !
!

