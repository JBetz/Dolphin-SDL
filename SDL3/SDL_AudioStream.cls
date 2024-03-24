"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_AudioStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_AudioStream guid: (GUID fromString: '{fe2f7633-3680-4b59-b22a-23ca3e49bf7b}')!
SDL_AudioStream comment: ''!
!SDL_AudioStream categoriesForClass!External-Data-Structured! !
!SDL_AudioStream methodsFor!

destroy
	self library destroyAudioStream_stream: self!

flush
	self library flushAudioStream_stream: self!

putData: anExternalAddress length: anInteger
	self library putAudioStreamData_stream: self buffer: anExternalAddress length: anInteger! !
!SDL_AudioStream categoriesForMethods!
destroy!public! !
flush!public! !
putData:length:!public! !
!

