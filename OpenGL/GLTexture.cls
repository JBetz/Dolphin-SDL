"Filed out from Dolphin Smalltalk"!

GLObject subclass: #GLTexture
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLTexture guid: (GUID fromString: '{0f26ceb8-0463-4495-99ae-b185e0a7a428}')!

GLTexture comment: ''!

!GLTexture categoriesForClass!Kernel-Objects! !

!GLTexture methodsFor!

bind
	gl glBindTexture_target: GL_TEXTURE_2D texture: handle!

setIntParameter: propertyName value: value
	gl glTexParameteri_target: GL_TEXTURE_2D pname: propertyName param: value! !

!GLTexture categoriesForMethods!
bind!public! !
setIntParameter:value:!public! !
!

