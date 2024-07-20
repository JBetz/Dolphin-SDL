"Filed out from Dolphin Smalltalk"!

GLObject subclass: #GLBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLBuffer guid: (GUID fromString: '{51a5860f-0879-4960-8ba5-b56fa10a417f}')!

GLBuffer comment: ''!

!GLBuffer categoriesForClass!Kernel-Objects! !

!GLBuffer methodsFor!

bind
	gl glBindBuffer_target: self target buffer: handle!

bufferStaticData: anArray
	self subclassResponsibility!

delete
	gl glDeleteBuffers_n: 1 buffers: handle!

target
	self subclassResponsibility! !

!GLBuffer categoriesForMethods!
bind!public! !
bufferStaticData:!public! !
delete!public! !
target!public! !
!

