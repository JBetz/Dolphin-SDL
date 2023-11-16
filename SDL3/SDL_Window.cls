"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Window
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Window guid: (GUID fromString: '{24a0a78e-6a0c-472a-9fda-77b8354d6b95}')!
SDL_Window comment: ''!
!SDL_Window categoriesForClass!External-Data-Structured! !
!SDL_Window methodsFor!

createRenderer 
	^self library
		createRenderer_window: self
		name: nil
		flags: 0!

destroy
	self library destroyWindow_window: self!

extent
	^self getExtent!

getExtent
	| width height |
	width := DWORD new.
	height := DWORD new.
	self library getWindowSize_window: self w: width h: height.
	^width value @ height value!

getHandle
	| windowProperties handle |
	windowProperties := self getProperties.
	handle := self library
		getProperty_props: windowProperties
		name: 'SDL.window.win32.hwnd'
		defaultValue: ExternalHandle new.
	^handle!

getID
	^self library getWindowID_window: self!

getPosition
	| x y |
	x := SDWORD new.
	y := SDWORD new.
	self library
		getWindowPosition_window: self
		x: x
		y: y.
	^x asInteger @ y asInteger!

getProperties
	^self library getWindowProperties_window: self!

getSurface
	^self library getWindowSurface_window: self!

rectangle
	^Rectangle origin: self getPosition extent: self getExtent!

setIcon: aSDLSurface
	^self library setWindowIcon_window: self icon: aSDLSurface!

setInputFocus
	^self library setWindowInputFocus_window: self!

setTitle: aString
	^self library setWindowTitle_window: self title: aString!

updateSurface
	self library updateWindowSurface_window: self! !
!SDL_Window categoriesForMethods!
createRenderer!public! !
destroy!public! !
extent!public! !
getExtent!public! !
getHandle!public! !
getID!public! !
getPosition!public! !
getProperties!public! !
getSurface!public! !
rectangle!public! !
setIcon:!public! !
setInputFocus!public! !
setTitle:!public! !
updateSurface!public! !
!

