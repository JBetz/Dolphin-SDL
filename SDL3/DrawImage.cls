"Filed out from Dolphin Smalltalk"!

RenderCommand subclass: #DrawImage
	instanceVariableNames: 'rectangle filePath'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DrawImage guid: (GUID fromString: '{e179d881-b7e0-43c2-9d8e-d0d44865002b}')!
DrawImage comment: ''!
!DrawImage categoriesForClass!Kernel-Objects! !
!DrawImage methodsFor!

applyOffset: aPoint
	rectangle := Rectangle origin: (rectangle origin x + aPoint x) @ (rectangle origin y + aPoint y)
				corner: (rectangle corner x + aPoint x) @ (rectangle corner y + aPoint y)!

filePath
	^filePath!

filePath: anObject
	filePath := anObject!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !
!DrawImage categoriesForMethods!
applyOffset:!public! !
filePath!accessing!public! !
filePath:!accessing!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

