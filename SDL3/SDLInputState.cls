"Filed out from Dolphin Smalltalk"!

Object subclass: #SDLInputState
	instanceVariableNames: 'library widgets renderEventCode isActive'
	classVariableNames: 'Singleton'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
SDLInputState guid: (GUID fromString: '{9b0ff9fb-40c3-4d7e-91fe-2a58048fdbdf}')!
SDLInputState comment: ''!
!SDLInputState categoriesForClass!Kernel-Objects! !
!SDLInputState methodsFor!

closeAll
	widgets values do: [:each | each close].
	widgets removeAll!

createWindow: aString extent: aPoint for: aWidget
	| window |
	window := library
				createWindow_title: aString
				w: aPoint x
				h: aPoint y
				flags: SDL_WINDOW_RESIZABLE.
	widgets at: window getID put: aWidget.
	^window!

dispatchEvent: anEvent to: aVisualObjectInspector
	[aVisualObjectInspector handleEvent: anEvent] ifCurtailed: [self quit]!

finalize
	self quit.
	super finalize!

getDisplayExtent
	| primaryDisplayId displayMode |
	primaryDisplayId := library getPrimaryDisplay.
	displayMode := library getCurrentDisplayMode_displayID: primaryDisplayId.
	^displayMode w @ displayMode h!

initialize
	super initialize.
	library := SDL3Library default.
	widgets := LookupTable new.
	self
		initializeAll;
		registerRenderEvent;
		setHints.
	isActive := true!

initialize: anInteger
	library init_flags: anInteger!

initializeAll
	self
		initialize: SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC
				| SDL_INIT_GAMECONTROLLER | SDL_INIT_EVENTS!

initializeVideo
	self initialize: SDL_INIT_VIDEO!

iterate
	isActive
		ifTrue: 
			[self
				pumpMessages;
				updateWindows]!

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
					destination := widgets at: aWindowId ifAbsent: [nil].
					destination ifNotNil: [self dispatchEvent: currentEvent to: destination]]]
		ifNil: [^self]]
			repeat!

pushCloseEvent: anInteger
	self pushEvent: (SDL_WindowEvent new
				type: SDL_EVENT_WINDOW_CLOSE_REQUESTED;
				timestamp: 0;
				windowID: anInteger)!

pushEvent: aSDLEvent
	library pushEvent_event: aSDLEvent!

pushRenderEvent: anInteger
	self pushEvent: (SDL_UserEvent new
				type: SDL_EVENT_USER;
				timestamp: 0;
				windowID: anInteger;
				code: renderEventCode)!

quit
	self closeAll.
	SDL3TTFLibrary default quit.
	SDL3ImageLibrary default quit.
	library quit.
	isActive := false!

registerRenderEvent
	renderEventCode := library registerEvents_numevents: 1!

removeWindow: anInteger
	widgets removeKey: anInteger ifAbsent: [nil]!

setHints
	library
		setHint_name: 'SDL_MOUSE_FOCUS_CLICKTHROUGH' value: '1';
		setHint_name: 'SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP' value: '1'!

updateWindows
	widgets do: [:each | each update]!

widgets
	^widgets! !
!SDLInputState categoriesForMethods!
closeAll!public! !
createWindow:extent:for:!public! !
dispatchEvent:to:!public! !
finalize!public! !
getDisplayExtent!public! !
initialize!public! !
initialize:!public! !
initializeAll!public! !
initializeVideo!public! !
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
widgets!public! !
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
	Singleton initialize!

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

