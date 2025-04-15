"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #DrawTexture
	instanceVariableNames: 'rectangle stretch texture'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawTexture guid: (GUID fromString: '{856cfa9c-5e3b-4589-834b-7abacb4c36c5}')!

DrawTexture comment: ''!

!DrawTexture categoriesForClass!Kernel-Objects! !

!DrawTexture methodsFor!

applyClip: aRectangle
	rectangle := rectangle intersect: aRectangle!

applyOffset: aPoint
	rectangle := rectangle moveBy: aPoint!

initialize
	super initialize.
	stretch := false.
	rotation := 0.0!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject!

scaledBy: aFloat 
	rectangle := rectangle scaledBy: aFloat center: rectangle center !

stretch
	^stretch!

stretch: anObject
	stretch := anObject!

texture
	^texture!

texture: anObject
	texture := anObject! !

!DrawTexture categoriesForMethods!
applyClip:!public! !
applyOffset:!public! !
initialize!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
scaledBy:!public! !
stretch!accessing!public! !
stretch:!accessing!public! !
texture!accessing!public! !
texture:!accessing!public! !
!

