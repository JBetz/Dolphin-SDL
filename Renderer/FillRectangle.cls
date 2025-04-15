"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #FillRectangle
	instanceVariableNames: 'rectangle color'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

FillRectangle guid: (GUID fromString: '{86298fce-d92b-436c-9f3a-841458642813}')!

FillRectangle comment: ''!

!FillRectangle categoriesForClass!Kernel-Objects! !

!FillRectangle methodsFor!

applyClip: aRectangle 
	rectangle := rectangle intersect: aRectangle!

applyOffset: aPoint
	rectangle := rectangle moveBy: aPoint!

color
	^color!

color: anObject
	color := anObject!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !

!FillRectangle categoriesForMethods!
applyClip:!public! !
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

