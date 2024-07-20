"Filed out from Dolphin Smalltalk"!

Object subclass: #GLObject
	instanceVariableNames: 'gl handle'
	classVariableNames: ''
	poolDictionaries: 'OpenGLConstants'
	classInstanceVariableNames: ''!

GLObject guid: (GUID fromString: '{11d98276-43d8-4cf3-9719-d3c34c04403a}')!

GLObject comment: ''!

!GLObject categoriesForClass!Kernel-Objects! !

!GLObject methodsFor!

handle
	^handle!

handle: anExternalHandle 
	handle := anExternalHandle!

initialize
	super initialize.
	gl := OpenGLLibrary default! !

!GLObject categoriesForMethods!
handle!public! !
handle:!public! !
initialize!public! !
!

!GLObject class methodsFor!

fromHandle: anObject
	^self new
		handle: anObject!

new
	^super new initialize! !

!GLObject class categoriesForMethods!
fromHandle:!public! !
new!public! !
!

