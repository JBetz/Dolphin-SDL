"Filed out from Dolphin Smalltalk"!

GLBuffer subclass: #GLElementArrayBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLElementArrayBuffer guid: (GUID fromString: '{bb95018b-9c3d-4ce0-bae4-b7aa0b5ccb9b}')!

GLElementArrayBuffer comment: ''!

!GLElementArrayBuffer categoriesForClass!Kernel-Objects! !

!GLElementArrayBuffer methodsFor!

bufferStaticData: anArray
	| data |
	data := DWORDArray withAll: anArray.
	gl
		glBufferData_target: self target
		size: data byteSize
		data: data yourAddress
		usage: GL_STATIC_DRAW!

target
	^GL_ELEMENT_ARRAY_BUFFER! !

!GLElementArrayBuffer categoriesForMethods!
bufferStaticData:!public! !
target!public! !
!

