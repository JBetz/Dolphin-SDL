"Filed out from Dolphin Smalltalk"!

NET_Object subclass: #NET_Server
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

NET_Server guid: (GUID fromString: '{8d502bb2-0e98-488e-9482-cb3f58cd76c4}')!

NET_Server comment: ''!

!NET_Server categoriesForClass!External-Data-Structured! !

!NET_Server methodsFor!

acceptClient
	| result clientStream |
	clientStream := NET_StreamSocket new.
	result := self library acceptClient_server: self clientStream: clientStream.
	self checkBooleanResult: result.
	^clientStream! !

!NET_Server categoriesForMethods!
acceptClient!public! !
!

