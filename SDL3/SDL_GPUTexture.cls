﻿"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_GPUTexture
	instanceVariableNames: 'extent pixelFormat'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTexture guid: (GUID fromString: '{dddf491b-f68b-44e2-84bb-1419db282482}')!

SDL_GPUTexture comment: ''!

!SDL_GPUTexture categoriesForClass!External-Data-Structured! !

!SDL_GPUTexture methodsFor!

extent
	^extent!

extent: aPoint
	extent := aPoint!

height
	^extent y!

pixelFormat
	^pixelFormat!

pixelFormat: anObject
	pixelFormat := anObject!

width
	^extent x! !

!SDL_GPUTexture categoriesForMethods!
extent!public! !
extent:!public! !
height!public! !
pixelFormat!accessing!public! !
pixelFormat:!accessing!public! !
width!public! !
!

