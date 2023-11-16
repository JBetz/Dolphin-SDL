"Filed out from Dolphin Smalltalk"!

RenderCommand subclass: #DrawTexture
	instanceVariableNames: 'texture rectangle stretch'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DrawTexture guid: (GUID fromString: '{9c54abcc-ece9-4793-a9b1-77a901533e9b}')!
DrawTexture comment: ''!
!DrawTexture categoriesForClass!Kernel-Objects! !
!DrawTexture methodsFor!

initialize
	super initialize.
	stretch := false!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject!

stretch
	^stretch!

stretch: anObject
	stretch := anObject!

texture
	^texture!

texture: anObject
	texture := anObject! !
!DrawTexture categoriesForMethods!
initialize!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
stretch!accessing!public! !
stretch:!accessing!public! !
texture!accessing!public! !
texture:!accessing!public! !
!

