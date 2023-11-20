"Filed out from Dolphin Smalltalk"!

Object subclass: #Application
	instanceVariableNames: 'renderer window cursor'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
Application guid: (GUID fromString: '{0bff31b0-fdc2-450a-8e3b-c3f9bec48eb4}')!
Application comment: ''!
!Application categoriesForClass!Kernel-Objects! !
!Application methodsFor!

calculateInitialExtent
	| preferredExtent displayExtent |
	preferredExtent := self preferredExtent.
	displayExtent := SDLInputState new getDisplayExtent.
	^(preferredExtent x min: displayExtent x - 100) @ (preferredExtent y min: displayExtent y - 100)!

createRenderer
	| sdlRenderer |
	sdlRenderer := window createRenderer.
	renderer := Renderer2D new sdlRenderer: sdlRenderer.
	sdlRenderer setDrawBlendMode: SDL_BLENDMODE_BLEND!

cursor: aSDLCursor
	cursor ifNotNil: [cursor destroy].
	cursor := aSDLCursor.
	cursor ifNotNil: [cursor makeCurrent]!

extent
	^window ifNotNil: [window extent] ifNil: [0 @ 0]!

height
	^self extent y!

left
	^self rectangle left!

onViewCreated
	self
		createWindow;
		createRenderer!

origin
	^0@0!

preferredExtent
	^1200@1000!

rectangle
	^Rectangle origin: self origin extent: self extent!

renderer: aRenderer
	renderer := aRenderer!

top
	^self rectangle top!

viewport
	^renderer viewport!

window
	^window!

windowPosition
	^window ifNotNil: [window getPosition]! !
!Application categoriesForMethods!
calculateInitialExtent!private! !
createRenderer!private! !
cursor:!public! !
extent!public! !
height!public! !
left!public! !
onViewCreated!public! !
origin!public! !
preferredExtent!private! !
rectangle!public! !
renderer:!public! !
top!public! !
viewport!public! !
window!accessing!public! !
windowPosition!public! !
!

