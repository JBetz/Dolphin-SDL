"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Object
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_Object guid: (GUID fromString: '{94f3180b-5da5-45a7-8ae7-499f08d724db}')!

SDL_Object comment: ''!

!SDL_Object categoriesForClass!External-Data-Structured! !

!SDL_Object methodsFor!

checkObject: anObject
	anObject ifNil: [Error signal: library getError]!

checkResult: aBoolean
	aBoolean ifFalse: [Error signal: library getError]!

destroy
	self subclassResponsibility!

free
	[self destroy] on: Error
		do: 
			[:error |
			Transcript
				display: error;
				cr].
	super free!

initialize
	super initialize.
	self beFinalizable!

library
	library ifNil: [library := SDL3Library default].
	^library! !

!SDL_Object categoriesForMethods!
checkObject:!private! !
checkResult:!private! !
destroy!public! !
free!public! !
initialize!public! !
library!public! !
!

!SDL_Object class methodsFor!

new
	^super new initialize! !

!SDL_Object class categoriesForMethods!
new!public! !
!

