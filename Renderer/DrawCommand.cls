"Filed out from Dolphin Smalltalk"!

Object subclass: #DrawCommand
	instanceVariableNames: 'zIndex clip scale rotation drawData'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawCommand guid: (GUID fromString: '{0565881b-e125-4551-b037-26816ec53091}')!

DrawCommand comment: ''!

!DrawCommand categoriesForClass!Kernel-Objects! !

!DrawCommand methodsFor!

clip
	^clip!

clip: anObject
	clip := anObject!

drawData
	^drawData!

drawData: anObject
	drawData := anObject!

initialize
	super initialize.
	scale := 1.0 @ 1.0.
	rotation := 0!

rotation
	^rotation!

rotation: anObject
	rotation := anObject!

zIndex
	^zIndex!

zIndex: anObject
	zIndex := anObject! !

!DrawCommand categoriesForMethods!
clip!public! !
clip:!public! !
drawData!accessing!public! !
drawData:!accessing!public! !
initialize!public! !
rotation!public! !
rotation:!public! !
zIndex!public! !
zIndex:!public! !
!

!DrawCommand class methodsFor!

new
	^super new initialize! !

!DrawCommand class categoriesForMethods!
new!public! !
!

