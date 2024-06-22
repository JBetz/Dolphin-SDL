"Filed out from Dolphin Smalltalk"!

FillCommand subclass: #FillQuadrilateral
	instanceVariableNames: 'vertexOne vertexTwo vertexThree vertexFour'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

FillQuadrilateral guid: (GUID fromString: '{87549300-4a7b-4af5-b39e-83a1a8d4397a}')!

FillQuadrilateral comment: ''!

!FillQuadrilateral categoriesForClass!Kernel-Objects! !

!FillQuadrilateral methodsFor!

points
	^{vertexOne. vertexTwo. vertexThree. vertexFour}!

vertexFour
	^vertexFour!

vertexFour: anObject
	vertexFour := anObject!

vertexOne
	^vertexOne!

vertexOne: anObject
	vertexOne := anObject!

vertexThree
	^vertexThree!

vertexThree: anObject
	vertexThree := anObject!

vertexTwo
	^vertexTwo!

vertexTwo: anObject
	vertexTwo := anObject! !

!FillQuadrilateral categoriesForMethods!
points!public! !
vertexFour!accessing!public! !
vertexFour:!accessing!public! !
vertexOne!accessing!public! !
vertexOne:!accessing!public! !
vertexThree!accessing!public! !
vertexThree:!accessing!public! !
vertexTwo!accessing!public! !
vertexTwo:!accessing!public! !
!

