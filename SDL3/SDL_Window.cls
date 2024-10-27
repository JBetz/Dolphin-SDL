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

aspectRatio
	^self width asFloat / self height asFloat!

createRenderer
	| renderer |
	renderer := self library createRenderer_window: self name: nil.
	self checkObjectResult: renderer.
	^renderer initialize!

destroy
	self library destroyWindow_window: self!

enumerateProperties
	| properties callback |
	properties := Dictionary new.
	callback := ExternalCallback
				block: [:userdata :props :name | properties at: name put: (self getProperty: name)]
				descriptor: (ExternalDescriptor
						callingConvention: 'cdecl:'
						returnType: 'void'
						argumentTypes: 'lpvoid dword lpstr').
	self checkBooleanResult: (self library
				enumerateProperties_props: self propertiesId
				callback: callback asParameter
				userdata: nil).
	callback free.
	^properties!

extent
	^self getExtent!

getExtent
	| width height |
	width := DWORD new.
	height := DWORD new.
	self library getWindowSize_window: self w: width h: height.
	^width value @ height value!

getHandle
	| handle |
	handle := self library
				getPointerProperty_props: self propertiesId
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

getPropertiesId
	^self library getWindowProperties_window: self!

getSizeInPixels
	| width height |
	width := SDWORD new.
	height := SDWORD new.
	self checkBooleanResult: (self library
				getWindowSizeInPixels_window: self
				w: width
				h: height).
	^width value @ height value!

getSurface
	^self library getWindowSurface_window: self!

height
	^self extent y!

hide
	self library hideWindow_window: self!

raise
	^self library raiseWindow_window: self!

rectangle
	^Rectangle origin: self getPosition extent: self getExtent!

setIcon: aSDLSurface
	^self library setWindowIcon_window: self icon: aSDLSurface!

setPosition: aPoint
	| result |
	result := self library setWindowPosition_window: self x: aPoint x y: aPoint y.
	self checkBooleanResult: result!

setSize: aPoint
	| result |
	result := self library setWindowSize_window: self w: aPoint x h: aPoint y.
	self checkBooleanResult: result!

setTitle: aString
	^self library setWindowTitle_window: self title: aString!

show
	self library showWindow_window: self!

showLoadFileDialog!

showOpenFileDialog
	| callback files |
	callback := ExternalCallback block: [:userdata :filelist :filter | files := filelist]
				descriptor: (ExternalDescriptor
						callingConvention: 'cdecl:'
						returnType: 'void'
						argumentTypes: 'lpvoid lpstr* sdword').
	self library
		showOpenFileDialog_callback: callback asParameter
		userdata: nil
		window: self
		filters: nil
		nfilters: 0
		defaultLocation: (self library getUserFolder_folder: SDL_FOLDER_HOME)
		allowMany: false.
	^files!

startTextInput
	self checkBooleanResult: (self library startTextInput_window: self)!

sync
	| result |
	result := self library syncWindow_window: self.
	self checkBooleanResult: result!

updateSurface
	self library updateWindowSurface_window: self!

width
	^self extent x! !

!SDL_Window categoriesForMethods!
aspectRatio!public! !
createRenderer!public! !
destroy!public! !
enumerateProperties!public! !
extent!public! !
getExtent!public! !
getHandle!public! !
getID!public! !
getPosition!public! !
getPropertiesId!public! !
getSizeInPixels!public! !
getSurface!public! !
height!public! !
hide!public! !
raise!public! !
rectangle!public! !
setIcon:!public! !
setPosition:!public! !
setSize:!public! !
setTitle:!public! !
show!public! !
showLoadFileDialog!public! !
showOpenFileDialog!public! !
startTextInput!public! !
sync!public! !
updateSurface!public! !
width!public! !
!

