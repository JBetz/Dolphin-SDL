"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #DrawRectangle
	instanceVariableNames: 'rectangle color width'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawRectangle guid: (GUID fromString: '{e4359af8-1f8b-4c2f-b2b4-7d05a06a4b6a}')!

DrawRectangle comment: ''!

!DrawRectangle categoriesForClass!Kernel-Objects! !

!DrawRectangle methodsFor!

applyClip: aRectangle 
	rectangle := rectangle intersect: aRectangle!

applyOffset: aPoint 
	rectangle := rectangle moveBy: aPoint!

color
	^color!

color: anObject
	color := anObject!

initialize
	super initialize.
	color := Color black.
	width := 1!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !

!DrawRectangle categoriesForMethods!
applyClip:!public! !
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
initialize!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

