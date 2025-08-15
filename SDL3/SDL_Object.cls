"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Object
	instanceVariableNames: 'propertiesId properties'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_Object guid: (GUID fromString: '{94f3180b-5da5-45a7-8ae7-499f08d724db}')!

SDL_Object comment: ''!

!SDL_Object categoriesForClass!External-Data-Structured! !

!SDL_Object methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: self library getError]!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: self library getError]!

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

getPropertiesId
	self subclassResponsibility!

imageLibrary
	^SDL3ImageLibrary default!

initialize
	super initialize.
	self beFinalizable!

library
	^SDL3Library default!

properties
	properties ifNil: [properties := SDL_Properties fromId: self propertiesId].
	^properties!

properties: aProperties
	properties := aProperties!

propertiesId
	propertiesId ifNil: [propertiesId := self getPropertiesId].
	^propertiesId! !

!SDL_Object categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
destroy!public! !
free!public! !
getPropertiesId!public! !
imageLibrary!public! !
initialize!public! !
library!public! !
properties!public! !
properties:!public! !
propertiesId!public! !
!

!SDL_Object class methodsFor!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: SDL3Library default getError]!

library
	^SDL3Library default!

new
	^super new initialize! !

!SDL_Object class categoriesForMethods!
checkObjectResult:!private! !
library!public! !
new!public! !
!

