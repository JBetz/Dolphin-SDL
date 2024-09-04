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

acquireSwapchainTexture: aWindow
	| swapchainTexture width height |
	width := DWORD new.
	height := DWORD new.
	swapchainTexture := self library
				acquireGPUSwapchainTexture_commandBuffer: self
				window: aWindow
				pWidth: width
				pHeight: height.
	swapchainTexture extent: width value @ height value.
	^swapchainTexture!

beginComputePass: aStorageTextureWriteOnlyBinding
	| computePass |
	computePass := self library
				beginGPUComputePass_commandBuffer: self
				storageTextureBindings: aStorageTextureWriteOnlyBinding
				storageTextureBindingCount: 1
				storageBufferBindings: nil
				storageBufferBindingCount: 0.
	self checkObjectResult: computePass.
	^computePass!

beginCopyPass
	| copyPass |
	copyPass := self library
				beginGPUCopyPass_commandBuffer: self .
	self checkObjectResult: copyPass.
	^copyPass!

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
	self blitTexture: aGPUTexture destination: anotherGPUTexture filterMode: SDL_GPU_FILTER_NEAREST!

blitTexture: aGPUTexture destination: anotherGPUTexture filterMode: anInteger
	self library
		blitGPUTexture_commandBuffer: self
		source: aGPUTexture
		destination: anotherGPUTexture
		flipMode: SDL_FLIP_NONE
		filterMode: anInteger
		cycle: false!

generateMipmapsForTexture: aGPUTexture
	self library generateMipmapsForGPUTexture_commandBuffer: self texture: aGPUTexture!

pushComputeUniformData: data
	self library
		pushGPUComputeUniformData_commandBuffer: self
		slotIndex: 0
		data: data
		dataLengthInBytes: data byteSize!

submit
	self library submitGPUCommandBuffer_commandBuffer: self! !

!SDL_GPUCommandBuffer categoriesForMethods!
acquireSwapchainTexture:!public! !
beginComputePass:!public! !
beginCopyPass!public! !
beginRenderPass:!public! !
blitTexture:destination:!public! !
blitTexture:destination:filterMode:!public! !
generateMipmapsForTexture:!public! !
pushComputeUniformData:!public! !
submit!public! !
!

