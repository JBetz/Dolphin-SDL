"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #TTF_Object
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TTF_Object guid: (GUID fromString: '{d25ebdf2-fabf-4f70-a641-33b9aa4695a9}')!
TTF_Object comment: ''!
!TTF_Object categoriesForClass!External-Data-Structured! !
!TTF_Object methodsFor!

checkResult: anObject
	anObject
		ifNil: [Error signal: self library getError]
		ifNotNil: [anObject isInteger ifTrue: [anObject = -1 ifTrue: [Error signal: self library getError]]].
	^anObject!

initialize
	super initialize.
	library := SDL3TTFLibrary default!

library
	library ifNil: [library := SDL3TTFLibrary default].
	^library! !
!TTF_Object categoriesForMethods!
checkResult:!public! !
initialize!public! !
library!public! !
!

