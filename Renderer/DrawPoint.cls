"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #DrawPoint
	instanceVariableNames: 'position color'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawPoint guid: (GUID fromString: '{27fc5d24-99d9-4c90-b629-89192a9aa05c}')!

DrawPoint comment: ''!

!DrawPoint categoriesForClass!Kernel-Objects! !

!DrawPoint methodsFor!

applyOffset: aPoint
	position := position + aPoint!

color
	^color!

color: anObject
	color := anObject!

position
	^position!

position: anObject
	position := anObject! !

!DrawPoint categoriesForMethods!
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
position!accessing!public! !
position:!accessing!public! !
!

