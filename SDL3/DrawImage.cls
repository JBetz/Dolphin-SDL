"Filed out from Dolphin Smalltalk"!

RenderCommand subclass: #DrawImage
	instanceVariableNames: 'image rectangle stretch'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DrawImage guid: (GUID fromString: '{856cfa9c-5e3b-4589-834b-7abacb4c36c5}')!
DrawImage comment: ''!
!DrawImage categoriesForClass!Kernel-Objects! !
!DrawImage methodsFor!

asDrawSurface
	^DrawSurface new
		surface: image;
		rectangle: rectangle;
		stretch: stretch;
		zIndex: zIndex!

asDrawTexture
	^DrawTexture new
		texture: image;
		rectangle: rectangle;
		stretch: stretch;
		zIndex: zIndex!

image
	^image!

image: anObject
	image := anObject!

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
	stretch := anObject! !
!DrawImage categoriesForMethods!
asDrawSurface!public! !
asDrawTexture!public! !
image!accessing!public! !
image:!accessing!public! !
initialize!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
stretch!accessing!public! !
stretch:!accessing!public! !
!

