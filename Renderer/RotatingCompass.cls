"Filed out from Dolphin Smalltalk"!

Application subclass: #RotatingCompass
	instanceVariableNames: 'player buildings camera texture'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

RotatingCompass guid: (GUID fromString: '{e816e12f-5eee-4b81-bcd7-8924fad3b7f7}')!

RotatingCompass comment: ''!

!RotatingCompass categoriesForClass!Kernel-Objects! !

!RotatingCompass methodsFor!

drawOn: aCanvas
	aCanvas
		drawTexture: texture
		rectangle: player
		rotation: camera rotation
		zIndex: 1.
	camera rotation: (camera rotation + 1) % 360!

initialize
	super initialize.
	player := Rectangle origin: 0 @ 0 extent: self preferredExtent!

loadTexture
	| image |
	image := SDL_Surface fromFile: (FileLocator imageRelative: 'compass.jpg').
	image := image convertPixelFormat: SDL_PIXELFORMAT_ARGB8888.
	texture := renderer createTexture: image extent format: SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM.
	renderer
		updateTexture: texture
		pixels: image pixels
		pitch: image pitch!

onCreated
	super onCreated.
	camera := renderer camera.
	camera
		target: player center;
		offset: window extent / 2;
		rotation: 0;
		zoom: 1.
	self loadTexture.
	isReady := true!

onKeyDown: aSDLKeyboardEvent
	aSDLKeyboardEvent isEscape ifTrue: [self close].
	aSDLKeyboardEvent isLeft ifTrue: [player moveBy: -2 @ 0].
	aSDLKeyboardEvent isRight ifTrue: [player moveBy: 2 @ 0].
	aSDLKeyboardEvent scanCode = SDL_SCANCODE_A
		ifTrue: [camera rotation: (camera rotation + 1 clampBetween: -40 and: 40)].
	aSDLKeyboardEvent scanCode = SDL_SCANCODE_S
		ifTrue: [camera rotation: (camera rotation - 1 clampBetween: -40 and: 40)].
	camera target: player center!

onMouseWheel: aMouseWheelEvent
	| delta |
	delta := aMouseWheelEvent isUp ifTrue: [0.1] ifFalse: [-0.1].
	camera zoom: (camera zoom + delta clampBetween: 0.1 and: 3.0)!

preferredExtent
	^800@800! !

!RotatingCompass categoriesForMethods!
drawOn:!private! !
initialize!public! !
loadTexture!private! !
onCreated!public! !
onKeyDown:!public! !
onMouseWheel:!public! !
preferredExtent!public! !
!

!RotatingCompass class methodsFor!

preferredExtent
	^800 @ 600! !

!RotatingCompass class categoriesForMethods!
preferredExtent!public! !
!

