"Filed out from Dolphin Smalltalk"!

NET_Object subclass: #NET_StreamSocket
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

NET_StreamSocket guid: (GUID fromString: '{1cbc8b99-6e81-4230-949c-d4c0281ee290}')!

NET_StreamSocket comment: ''!

!NET_StreamSocket categoriesForClass!External-Data-Structured! !

!NET_StreamSocket methodsFor!

destroy
	self library destroyStreamSocket_socket: self!

readBytes: anInteger
	| buffer bytesRead |
	buffer := ByteArray new: anInteger.
	bytesRead := self library
				readFromStreamSocket_socket: self
				buffer: buffer
				bufferLength: buffer size.
	bytesRead = -1 ifTrue: [self error: SDL3Library default getError].
	bytesRead = 0 ifTrue: [^nil].
	^buffer first: bytesRead!

writeBytes: aByteArray
	self writeBytes: aByteArray count: aByteArray size!

writeBytes: aByteArray count: anInteger
	| result |
	result := self library
				writeToStreamSocket_socket: self
				buffer: aByteArray yourAddress
				bufferLength: anInteger.
	self checkBooleanResult: result! !

!NET_StreamSocket categoriesForMethods!
destroy!public! !
readBytes:!public! !
writeBytes:!public! !
writeBytes:count:!public! !
!

!NET_StreamSocket class methodsFor!

address: aNET_Address port: anInteger
	| result |
	result := self library createClient_address: aNET_Address port: anInteger.
	result isNull ifTrue: [self error: SDL3Library default getError].
	^result! !

!NET_StreamSocket class categoriesForMethods!
address:port:!public! !
!

