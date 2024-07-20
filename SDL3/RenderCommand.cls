"Filed out from Dolphin Smalltalk"!

Object subclass: #RenderCommand
	instanceVariableNames: 'zIndex clip'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

RenderCommand guid: (GUID fromString: '{0565881b-e125-4551-b037-26816ec53091}')!

RenderCommand comment: ''!

!RenderCommand categoriesForClass!Kernel-Objects! !

!RenderCommand methodsFor!

clip
	^clip!

clip: anObject
	clip := anObject!

zIndex
	^zIndex!

zIndex: anObject
	zIndex := anObject! !

!RenderCommand categoriesForMethods!
clip!public! !
clip:!public! !
zIndex!public! !
zIndex:!public! !
!

!RenderCommand class methodsFor!

new
	^super new initialize! !

!RenderCommand class categoriesForMethods!
new!public! !
!

