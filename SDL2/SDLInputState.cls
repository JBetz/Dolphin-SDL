"Filed out from Dolphin Smalltalk"!

Object subclass: #SDLInputState
	instanceVariableNames: 'library visualObjectInspectors main renderEventCode updateInterval'
	classVariableNames: 'Singleton'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
SDLInputState guid: (GUID fromString: '{9b0ff9fb-40c3-4d7e-91fe-2a58048fdbdf}')!
SDLInputState comment: ''!
!SDLInputState categoriesForClass!Kernel-Objects! !
!SDLInputState methodsFor!

closeAll
	visualObjectInspectors values
		do: [:aVisualObjectInspector | [aVisualObjectInspector close] on: Error do: [:error | ]].
	visualObjectInspectors removeAll!

createWindow: aString extent: aPoint for: aVisualObjectInspector
	| window |
	window := library
				createWindow_title: aString
				x: SDL_WINDOWPOS_UNDEFINED
				y: SDL_WINDOWPOS_UNDEFINED
				w: aPoint x
				h: aPoint y
				flags: SDL_WINDOW_RESIZABLE.
	visualObjectInspectors at: window getID put: aVisualObjectInspector.
	self ensureMainRunning.
	^window!

dispatchEvent: anEvent to: aVisualObjectInspector
	[aVisualObjectInspector handleEvent: anEvent] ifCurtailed: [self quit]!

ensureMainRunning
	library := SDL2Library default.
	main ifNotNil: [main isAlive ifTrue: [^self]].
	self forkMain!

finalize
	self quit.
	super finalize!

forkMain
	main := 
			[
			[| frameRuntime sleepTime |
			frameRuntime := 
					[self
						pumpMessages;
						updateWindows] timeToRun.
			sleepTime := Duration
						milliseconds: ((updateInterval - frameRuntime asMilliseconds) truncated max: 1).
			Processor sleep: sleepTime]
					repeat]
					forkAt: Processor highIOPriority.
	main name: 'Main (SDL)'!

getDisplayExtent
	| displayMode |
	displayMode := SDL_DisplayMode new.
	library getCurrentDisplayMode_displayIndex: 0 mode: displayMode.
	^displayMode w @ displayMode h!

initialize
	super initialize.
	library := SDL2Library default.
	visualObjectInspectors := LookupTable new.
	self
		initializeAll;
		registerRenderEvent;
		setHints.
	updateInterval := 5!

initialize: anInteger
	library init_flags: anInteger!

initializeAll
	self
		initialize: SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC
				| SDL_INIT_GAMECONTROLLER | SDL_INIT_EVENTS!

initializeFrom: anSDLInputState
	anSDLInputState
		ifNil: [self initialize]
		ifNotNil: [visualObjectInspectors := anSDLInputState visualObjectInspectors]!

initializeVideo
	self initialize: SDL_INIT_VIDEO!

keepAlive
	visualObjectInspectors isEmpty
		ifTrue: 
			[self quit.
			SessionManager current quit]!

onDefocus
	updateInterval := 500!

onExit
	self quit!

onFocus
	updateInterval := 5!

pollEvent
	| event result |
	event := SDL_Event new.
	result := library pollEvent_event: event.
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
					destination := visualObjectInspectors at: aWindowId ifAbsent: [nil].
					destination ifNotNil: [self dispatchEvent: currentEvent to: destination]]]
		ifNil: [^self]]
			repeat!

pushCloseEvent: anInteger
	self pushEvent: (SDL_WindowEvent new
				type: SDL_WINDOWEVENT;
				windowID: anInteger;
				event: SDL_WINDOWEVENT_CLOSE)!

pushEvent: aSDLEvent
	library pushEvent_event: aSDLEvent!

pushRenderEvent: anInteger
	self pushEvent: (SDL_UserEvent new
				type: SDL_USEREVENT;
				windowID: anInteger;
				code: renderEventCode)!

quit
	self
		closeAll;
		stopMainProcess!

registerRenderEvent
	renderEventCode := library registerEvents_numevents: 1!

removeWindow: anInteger
	visualObjectInspectors removeKey: anInteger ifAbsent: [nil].
	visualObjectInspectors isEmpty ifTrue: [self stopMainProcess]!

render: anInteger
	self pushEvent: (SDL_UserEvent new
				type: SDL_USEREVENT;
				windowID: anInteger;
				code: renderEventCode)!

setHints
	library
		setHint_name: 'SDL_MOUSE_FOCUS_CLICKTHROUGH' value: '1';
		setHint_name: 'SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP' value: '1'!

stopMainProcess
	main ifNotNil: [
			[main terminate.
			main := nil] postToInputQueue]!

updateWindows
	visualObjectInspectors
		keysAndValuesDo: [:anInteger :aVisualObjectInspector | aVisualObjectInspector update]!

visualObjectInspectors
	^visualObjectInspectors!

waitEvent
	| event |
	event := SDL_Event new.
	library waitEvent_event: event.
	^event!

waitEvent: anInteger
	| event |
	event := SDL_Event new.
	library waitEventTimeout_event: event timeout: anInteger.
	^event! !
!SDLInputState categoriesForMethods!
closeAll!public! !
createWindow:extent:for:!public! !
dispatchEvent:to:!public! !
ensureMainRunning!private! !
finalize!public! !
forkMain!public! !
getDisplayExtent!public! !
initialize!public! !
initialize:!public! !
initializeAll!public! !
initializeFrom:!public! !
initializeVideo!public! !
keepAlive!public! !
onDefocus!public! !
onExit!public! !
onFocus!public! !
pollEvent!public! !
pumpMessages!public! !
pushCloseEvent:!public! !
pushEvent:!public! !
pushRenderEvent:!public! !
quit!public! !
registerRenderEvent!public! !
removeWindow:!public! !
render:!public! !
setHints!public! !
stopMainProcess!public! !
updateWindows!public! !
visualObjectInspectors!public! !
waitEvent!public! !
waitEvent:!public! !
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

new
	Singleton ifNil: [Singleton := super new initialize].
	^Singleton!

newFromOld: anInputState
	^(self new)
		initializeFrom: anInputState;
		yourself!

onShutdown
	Singleton quit!

onStartup
	Singleton initialize!

restart
	self
		onShutdown;
		onStartup! !
!SDLInputState class categoriesForMethods!
current!public! !
initialize!public! !
new!public! !
newFromOld:!public! !
onShutdown!public! !
onStartup!public! !
restart!public! !
!

