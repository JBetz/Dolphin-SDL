"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_GPUCopyPass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUCopyPass guid: (GUID fromString: '{8819b6d3-d2a2-4f42-b794-21227f1126fe}')!

SDL_GPUCopyPass comment: ''!

!SDL_GPUCopyPass categoriesForClass!External-Data-Structured! !

!SDL_GPUCopyPass methodsFor!

downloadFromTexture: source destination: destination
	self library
		downloadFromGPUTexture_copyPass: self
		source: source
		destination: destination!

end
	self library endGPUCopyPass_copyPass: self!

uploadToBuffer: aGPUTransferBufferLocation destination: aGPUBufferRegion 
	self library
		uploadToGPUBuffer_copyPass: self
		source: aGPUTransferBufferLocation
		destination: aGPUBufferRegion
		cycle: false!

uploadToBuffer: aBuffer destination: anotherBuffer size: anotherInteger
	self library
		uploadToGPUBuffer_copyPass: self
		source: (SDL_GPUTransferBufferLocation new
				transfer_buffer: aBuffer;
				offset: 0)
		destination: (SDL_GPUBufferRegion new
				buffer: anotherBuffer;
				offset: 0;
				size: anotherInteger)
		cycle: false!

uploadToBuffer: aBuffer offset: anInteger destination: anotherBuffer size: anotherInteger
	self library
		uploadToGPUBuffer_copyPass: self
		source: (SDL_GPUTransferBufferLocation new
				transfer_buffer: aBuffer;
				offset: anInteger)
		destination: (SDL_GPUBufferRegion new
				buffer: anotherBuffer;
				offset: 0;
				size: anotherInteger)
		cycle: false!

uploadToTexture: aGPUTextureTransferInfo destination: aGPUTextureRegion
	self library
		uploadToGPUTexture_copyPass: self
		source: aGPUTextureTransferInfo
		destination: aGPUTextureRegion
		cycle: false! !

!SDL_GPUCopyPass categoriesForMethods!
downloadFromTexture:destination:!public! !
end!public! !
uploadToBuffer:destination:!public! !
uploadToBuffer:destination:size:!public! !
uploadToBuffer:offset:destination:size:!public! !
uploadToTexture:destination:!public! !
!

