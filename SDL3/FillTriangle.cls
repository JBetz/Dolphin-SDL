"Filed out from Dolphin Smalltalk"!

FillCommand subclass: #FillTriangle
	instanceVariableNames: 'vertexOne vertexTwo vertexThree'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

FillTriangle guid: (GUID fromString: '{56c6ac68-c0a2-4b7e-a2f9-bb20b048164c}')!

FillTriangle comment: ''!

!FillTriangle categoriesForClass!Kernel-Objects! !

!FillTriangle methodsFor!

points
	^{vertexOne. vertexTwo. vertexThree}!

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

!FillTriangle categoriesForMethods!
points!public! !
vertexOne!accessing!public! !
vertexOne:!accessing!public! !
vertexThree!accessing!public! !
vertexThree:!accessing!public! !
vertexTwo!accessing!public! !
vertexTwo:!accessing!public! !
!

