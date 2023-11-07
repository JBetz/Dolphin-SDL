"Filed out from Dolphin Smalltalk"!

SessionManager subclass: #SDLSessionManager
	instanceVariableNames: 'savedWindows'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDLSessionManager guid: (GUID fromString: '{67b7d097-7649-4461-8bc0-b67e11b821bd}')!
SDLSessionManager comment: ''!
!SDLSessionManager categoriesForClass!Kernel-Objects! !
!SDLSessionManager methodsFor!

basicShutdown
	"Private - Perform basic system shutdown operations, just prior to the VM putting
	out the lights."

	self windowSystemShutdown.
	super basicShutdown!

basicTertiaryStartup
	"Perform tertiary system startup operations."

	self logComment: self applicationName, ' started'.
	inputState onStartup!

clearSessionState
	"Clear any state saved down for a image save which is will not be required until that saved image is
	rehydrated."

	self clearWindowState!

clearWindowState
	"Private - Clear the state of the top-level windows."

	savedWindows := nil!

inputStateClass
	^SDLInputState!

keepAlive
	inputState keepAlive!

main!

onInputLanguageChanged: aWindowsEvent!

onSettingChanged: aSettingsChangeEvent
	"Private - A system setting has been changed. This could be any of a wide range of things from a theme change,
	regional settings, even policy. The notifications come in thick and fast because they are sent to every top-level
	window. We consolidate them by queuing them up for coalescing any that arrive within a 1-second window."

	settingsChanged add: {aSettingsChangeEvent area. aSettingsChangeEvent uiAction}.
	inputState msgWindow setTimer: SettingsChangeTimerId interval: 1000!

onTimeChanged: aWindowsEvent!

parseCmdLineFlags
	!

resourceManager
	"Answer the resource manager to use to locate resources"

	^ResourceIdentifier!

restoreWindowState
	"Private - Restore the state of the persistant top-level windows."

	savedWindows notNil ifTrue: [
		savedWindows do: [:each | 
			[each restore] on: ProcessTermination do: [:e |]]]!

saveSessionState
	"Save down any session state that needs to be preserved and which is not automatically
	preserved by a normal image save. Examples would be externally managed resources
	such as Windows."

	self saveWindowState!

saveWindowState
	"Private - Save the state of the top-level windows."

	inputState purgeDeadWindows.
	savedWindows := self topLevelWindowsInZOrder reverse collect: [ :w | ViewState recordStateOf: w forRecreate: false]

!

startUI
	"Start up the input loop/message loop (instruct InputState appropriate depending on whether
	this is a GUI or console session)."

	self windowSystemStartup.
	self inputState guiStartup
!

tertiaryStartup
	"Perform GUI-system tertiary startup"

	super tertiaryStartup.
	self trigger: #sessionReady!

topLevelWindows
	"Answer a collection of the top-level windows which are currently open."

	^self inputState topLevelWindows select: [:w | w isPersistentView]!

topLevelWindowsInZOrder
	"Answer a collection of the top-level windows which are currently open."

	^self inputState topLevelWindowsInZOrder select: [:w | w isPersistentView]!

windowSystemShutdown
!

windowSystemStartup
! !
!SDLSessionManager categoriesForMethods!
basicShutdown!operations-shutdown!private! !
basicTertiaryStartup!operations-startup!public! !
clearSessionState!operations!public! !
clearWindowState!operations-saving!private! !
inputStateClass!constants!private! !
keepAlive!public! !
main!public! !
onInputLanguageChanged:!public! !
onSettingChanged:!event handling!private! !
onTimeChanged:!public! !
parseCmdLineFlags!operations-startup!private! !
resourceManager!accessing!public! !
restoreWindowState!operations-startup!private! !
saveSessionState!operations!public! !
saveWindowState!operations-saving!private! !
startUI!operations-startup!public! !
tertiaryStartup!operations-startup!public! !
topLevelWindows!accessing!public! !
topLevelWindowsInZOrder!accessing!public! !
windowSystemShutdown!operations-shutdown!private! !
windowSystemStartup!operations-startup!private! !
!

!SDLSessionManager class methodsFor!

icon
	"Answers an Icon that can be used to represent this class"

	^Icon window!

isConsoleApplication
	"Answer whether the sessions managed by instances of the receiver are for a console application 
	(as opposed to a GUI application, which is a completely separate thing under Windows)."

	^false!

isRuntime
	^true! !
!SDLSessionManager class categoriesForMethods!
icon!constants!development!public! !
isConsoleApplication!public!testing! !
isRuntime!public! !
!

