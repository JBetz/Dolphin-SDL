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

end
	self library endGPUCopyPass_copyPass: self!

uploadToBuffer: aGPUTransferBufferLocation destination: aGPUBufferRegion 
	self library
		uploadToGPUBuffer_copyPass: self
		source: aGPUTransferBufferLocation
		destination: aGPUBufferRegion
		cycle: false!

uploadToTexture: aGPUTextureTransferInfo destination: aGPUTextureRegion
	self library
		uploadToGPUTexture_copyPass: self
		source: aGPUTextureTransferInfo
		destination: aGPUTextureRegion
		cycle: false! !

!SDL_GPUCopyPass categoriesForMethods!
end!public! !
uploadToBuffer:destination:!public! !
uploadToTexture:destination:!public! !
!

