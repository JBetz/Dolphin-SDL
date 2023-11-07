"Filed out from Dolphin Smalltalk"!

FillCommand subclass: #FillRectangle
	instanceVariableNames: 'rectangle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FillRectangle guid: (GUID fromString: '{86298fce-d92b-436c-9f3a-841458642813}')!
FillRectangle comment: ''!
!FillRectangle categoriesForClass!Kernel-Objects! !
!FillRectangle methodsFor!

applyOffset: aPoint
	rectangle := Rectangle origin: (rectangle origin x + aPoint x) @ (rectangle origin y + aPoint y)
				corner: (rectangle corner x + aPoint x) @ (rectangle corner y + aPoint y)!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !
!FillRectangle categoriesForMethods!
applyOffset:!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

