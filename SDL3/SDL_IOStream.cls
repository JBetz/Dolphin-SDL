"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_IOStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_IOStream guid: (GUID fromString: '{16357d46-eacb-4640-aa30-74cc08733edc}')!

SDL_IOStream comment: ''!

!SDL_IOStream categoriesForClass!External-Data-Structured! !

!SDL_IOStream methodsFor!

destroy
	self library closeIO_context: self!

flush
	self library flushIO_context: self! !

!SDL_IOStream categoriesForMethods!
destroy!public! !
flush!public! !
!

!SDL_IOStream class methodsFor!

fromExternalArray: anExternalArray
	| ioStream |
	ioStream := SDL3Library default ioFromConstMem_mem: anExternalArray size: anExternalArray size.
	self checkObjectResult: ioStream.
	^ioStream initialize! !

!SDL_IOStream class categoriesForMethods!
fromExternalArray:!public! !
!

