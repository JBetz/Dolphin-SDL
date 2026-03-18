"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #TTF_Object
	instanceVariableNames: 'library wasDestroyed'
	classVariableNames: ''
	poolDictionaries: 'TTFConstants'
	classInstanceVariableNames: ''!

TTF_Object guid: (GUID fromString: '{d25ebdf2-fabf-4f70-a641-33b9aa4695a9}')!

TTF_Object comment: ''!

!TTF_Object categoriesForClass!External-Data-Structured! !

!TTF_Object methodsFor!

basicFree
	[self destroy] on: Error
		do: 
			[:error |
			Transcript
				display: error;
				cr].
	super basicFree!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: SDL3Library default getError]!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: SDL3Library default getError]!

destroy
	self subclassResponsibility!

initialize
	super initialize.
	wasDestroyed := false.
	self beFinalizable!

library
	^SDL3TTFLibrary default! !

!TTF_Object categoriesForMethods!
basicFree!public! !
checkBooleanResult:!private! !
checkObjectResult:!private! !
destroy!public! !
initialize!public! !
library!public! !
!

!TTF_Object class methodsFor!

library
	^SDL3TTFLibrary default! !

!TTF_Object class categoriesForMethods!
library!public! !
!

