"Filed out from Dolphin Smalltalk"!

GLBuffer subclass: #GLArrayBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLArrayBuffer guid: (GUID fromString: '{50a2e07f-1e2d-4df7-b10d-c44283b4dc4e}')!

GLArrayBuffer comment: ''!

!GLArrayBuffer categoriesForClass!Kernel-Objects! !

!GLArrayBuffer methodsFor!

bufferStaticData: anArray
	| data |
	data := FLOATArray withAll: anArray.
	gl
		glBufferData_target: self target
		size: data byteSize
		data: data yourAddress
		usage: GL_STATIC_DRAW!

target
	^GL_ARRAY_BUFFER! !

!GLArrayBuffer categoriesForMethods!
bufferStaticData:!public! !
target!public! !
!

