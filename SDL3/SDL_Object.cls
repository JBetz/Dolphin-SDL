﻿"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Object
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
SDL_Object guid: (GUID fromString: '{94f3180b-5da5-45a7-8ae7-499f08d724db}')!
SDL_Object comment: ''!
!SDL_Object categoriesForClass!External-Data-Structured! !
!SDL_Object methodsFor!

checkResult: anObject
	anObject
		ifNil: [Error signal: self library getError]
		ifNotNil: [anObject isInteger ifTrue: [anObject = -1 ifTrue: [Error signal: self library getError]]].
	^anObject!

initialize
	super initialize.
	library := SDL3Library default!

library
	library ifNil: [library := SDL3Library default].
	^library! !
!SDL_Object categoriesForMethods!
checkResult:!public! !
initialize!public! !
library!public! !
!

!SDL_Object class methodsFor!

new
	^super new initialize! !
!SDL_Object class categoriesForMethods!
new!public! !
!

