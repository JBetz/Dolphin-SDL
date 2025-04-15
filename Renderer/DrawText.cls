"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #DrawText
	instanceVariableNames: 'text rectangle color wrapWidth'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawText guid: (GUID fromString: '{3752de07-922d-4285-a83c-1b728fed4a50}')!

DrawText comment: ''!

!DrawText categoriesForClass!Kernel-Objects! !

!DrawText methodsFor!

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
	color := Color black!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject!

scaledBy: aFloat 
	rectangle := rectangle scaledBy: aFloat center: rectangle center !

text
	^text!

text: anObject
	text := anObject!

wrapWidth
	^wrapWidth!

wrapWidth: anObject
	wrapWidth := anObject! !

!DrawText categoriesForMethods!
applyClip:!public! !
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
initialize!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
scaledBy:!public! !
text!accessing!public! !
text:!accessing!public! !
wrapWidth!accessing!public! !
wrapWidth:!accessing!public! !
!

