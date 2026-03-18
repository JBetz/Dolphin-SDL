"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_GPUObject guid: (GUID fromString: '{8c2656db-bf31-4c6d-99ea-5fd7da884341}')!

SDL_GPUObject comment: ''!

!SDL_GPUObject categoriesForClass!External-Data-Structured! !

!SDL_GPUObject methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: SDL3Library default getError]!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: SDL3Library default getError]!

library
	^SDL3Library default! !

!SDL_GPUObject categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
library!private! !
!

!SDL_GPUObject class methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: SDL3Library default getError]!

checkObjectResult: anObject
	anObject ifNotNil: [^self].
	anObject isNull ifTrue: [self error: SDL3Library default getError]! !

!SDL_GPUObject class categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
!

