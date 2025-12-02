"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #NET_Object
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'SDLNetConstants'
	classInstanceVariableNames: ''!

NET_Object guid: (GUID fromString: '{bd3e605e-5439-4666-a51e-8319bede4133}')!

NET_Object comment: ''!

!NET_Object categoriesForClass!External-Data-Structured! !

!NET_Object methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: SDL3Library default getError]!

checkObjectResult: anObject
	anObject ifNotNil: [^self].
	anObject isNull ifTrue: [self error: SDL3Library default getError]!

checkStatusResult: anInteger
	anInteger = NET_FAILURE ifTrue: [self error: SDL3Library default getError]!

library
	^SDL3NetLibrary default! !

!NET_Object categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
checkStatusResult:!private! !
library!private! !
!

!NET_Object class methodsFor!

library
	^SDL3NetLibrary default! !

!NET_Object class categoriesForMethods!
library!private! !
!

