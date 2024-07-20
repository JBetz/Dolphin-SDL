"Filed out from Dolphin Smalltalk"!

GLObject subclass: #GLVertexArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLVertexArray guid: (GUID fromString: '{2bce5cd8-f3c8-4379-8659-673e422b6ac7}')!

GLVertexArray comment: ''!

!GLVertexArray categoriesForClass!Kernel-Objects! !

!GLVertexArray methodsFor!

bind
	gl glBindVertexArray_array: handle!

delete
	gl glDeleteVertexArrays_n: 1 arrays: handle!

unbind
	gl glBindVertexArray_array: 0! !

!GLVertexArray categoriesForMethods!
bind!public! !
delete!public! !
unbind!public! !
!

