"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_GPUCommandBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUCommandBuffer guid: (GUID fromString: '{090931ee-538e-403e-a64c-aef33b7f8500}')!

SDL_GPUCommandBuffer comment: ''!

!SDL_GPUCommandBuffer categoriesForClass!External-Data-Structured! !

!SDL_GPUCommandBuffer methodsFor!

acquireSwapchainTexture: aWindow width: aDWORD height: anotherDWORD
	| swapchainTexture |
	swapchainTexture := self library
				acquireGPUSwapchainTexture_commandBuffer: self
				window: aWindow
				pWidth: aDWORD
				pHeight: anotherDWORD.
	self checkObjectResult: swapchainTexture.
	^swapchainTexture!

beginRenderPass: aColorAttachmentInfo
	| renderPass |
	renderPass := self library
				beginGPURenderPass_commandBuffer: self
				colorAttachmentInfos: aColorAttachmentInfo yourAddress
				colorAttachmentCount: 1
				depthStencilAttachmentInfo: nil.
	self checkObjectResult: renderPass.
	^renderPass!

blitTexture: aGPUTexture destination: anotherGPUTexture
	self library
		blitGPUTexture_commandBuffer: self
		source: aGPUTexture
		destination: anotherGPUTexture
		flipMode: SDL_FLIP_NONE
		filterMode: SDL_GPU_FILTER_NEAREST
		cycle: false!

submit
	self library submitGPUCommandBuffer_commandBuffer: self! !

!SDL_GPUCommandBuffer categoriesForMethods!
acquireSwapchainTexture:width:height:!public! !
beginRenderPass:!public! !
blitTexture:destination:!public! !
submit!public! !
!

