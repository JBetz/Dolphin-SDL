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
		index: -1
		flags: 0!

destroy
	^self library destroyWindow_window: self!

extent
	^self getExtent!

getExtent
	| width height |
	width := DWORD new.
	height := DWORD new.
	self library getWindowSize_window: self w: width h: height.
	^width value @ height value!

getHandle
	| version info |
	version := SDL_Version new.
	self library getVersion_ver: version.
	info := SDL_SysWMinfo new.
	info version: version.
	self library getWindowWMInfo_window: self info: info.
	^ExternalHandle fromInteger: info window!

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

getSurface
	^self library getWindowSurface_window: self!

rectangle
	^Rectangle origin: 0@0 extent: self getExtent!

setIcon: aSDLSurface
	^self library setWindowIcon_window: self icon: aSDLSurface!

setInputFocus
	^self library setWindowInputFocus_window: self!

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
getSurface!public! !
rectangle!public! !
setIcon:!public! !
setInputFocus!public! !
updateSurface!public! !
!

