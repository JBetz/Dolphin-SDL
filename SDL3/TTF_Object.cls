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
		ifNil: [Error signal: SDL3Library default getError]
		ifNotNil: [anObject isInteger ifTrue: [anObject = -1 ifTrue: [Error signal: SDL3Library default getError]]].
	^anObject!

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
	library ifNil: [library := SDL3TTFLibrary default].
	^library! !

!TTF_Object categoriesForMethods!
checkResult:!public! !
destroy!public! !
free!public! !
initialize!public! !
library!public! !
!

