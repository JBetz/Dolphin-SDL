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
	| swapchainTexture result width height |
	swapchainTexture := SDL_GPUTexture newPointer.
	width := DWORD new.
	height := DWORD new.
	result := self library
				acquireGPUSwapchainTexture_commandBuffer: self
				window: aWindow
				swapchainTexture: swapchainTexture
				swapchainTextureWidth: width
				swapchainTextureHeight: height.
	self checkBooleanResult: result.
	swapchainTexture extent: width value @ height value.
	^swapchainTexture!

beginComputePass: aStorageTextureReadWriteBinding
	| computePass |
	computePass := self library
				beginGPUComputePass_commandBuffer: self
				storageTextureBindings: aStorageTextureReadWriteBinding
				numStorageTextureBindings: 1
				storageBufferBindings: nil
				numStorageBufferBindings: 0.
	self checkObjectResult: computePass.
	^computePass!

beginCopyPass
	| copyPass |
	copyPass := self library
				beginGPUCopyPass_commandBuffer: self .
	self checkObjectResult: copyPass.
	^copyPass!

beginRenderPass: aGPUTexture
	^self beginRenderPass: aGPUTexture clearColor: Color black!

beginRenderPass: aGPUTexture clearColor: aColor
	^self beginRenderPass: aGPUTexture clearColor: aColor depthPlane: 0 cycle: false!

beginRenderPass: aGPUTexture clearColor: aColor depthPlane: anInteger
	^self beginRenderPass: aGPUTexture clearColor: aColor depthPlane: anInteger cycle: false!

beginRenderPass: aGPUTexture clearColor: aColor depthPlane: anInteger cycle: aBoolean
	| renderPass |
	renderPass := self library
				beginGPURenderPass_commandBuffer: self
				colorTargetInfos: (SDL_GPUColorTargetInfo new
						texture: aGPUTexture;
						clear_color: aColor asSDLFColor;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE;
						layer_or_depth_plane: anInteger;
						cycle: aBoolean)
				numColorTargets: 1
				depthStencilTargetInfo: nil.
	self checkObjectResult: renderPass.
	^renderPass!

beginRenderPassRaw: aColorTargetInfo
	| renderPass |
	renderPass := self library
				beginGPURenderPass_commandBuffer: self
				colorTargetInfos: aColorTargetInfo
				numColorTargets: 1
				depthStencilTargetInfo: nil.
	self checkObjectResult: renderPass.
	^renderPass!

blitTexture: aGPUBlitRegion destination: anotherGPUBlitRegion
	self
		blitTexture: aGPUBlitRegion
		destination: anotherGPUBlitRegion
		filter: SDL_GPU_FILTER_NEAREST!

blitTexture: aGPUBlitRegion destination: anotherGPUBlitRegion filter: anInteger
	self
		blitTexture: aGPUBlitRegion
		destination: anotherGPUBlitRegion
		flipMode: SDL_FLIP_NONE
		filter: anInteger
!

blitTexture: aGPUBlitRegion destination: anotherGPUBlitRegion flipMode: anInteger
	self
		blitTexture: aGPUBlitRegion
		destination: anotherGPUBlitRegion
		flipMode: anInteger
		filter: SDL_GPU_FILTER_NEAREST!

blitTexture: aGPUBlitRegion destination: anotherGPUBlitRegion flipMode: flipMode filter: filter
	self
		blitTexture: aGPUBlitRegion
		destination: anotherGPUBlitRegion
		loadOp: SDL_GPU_LOADOP_LOAD
		flipMode: flipMode
		filter: filter!

blitTexture: aGPUBlitRegion destination: anotherGPUBlitRegion loadOp: loadOp filter: filter
	self
		blitTexture: aGPUBlitRegion
		destination: anotherGPUBlitRegion
		loadOp: loadOp
		flipMode: SDL_FLIP_NONE
		filter: filter!

blitTexture: aGPUBlitRegion destination: anotherGPUBlitRegion loadOp: loadOp flipMode: flipMode filter: filter
	self library blitGPUTexture_commandBuffer: self
		info: (SDL_GPUBlitInfo new
				source: aGPUBlitRegion;
				destination: anotherGPUBlitRegion;
				load_op: loadOp;
				flip_mode: flipMode;
				filter: filter;
				cycle: false)!

cancel
	| result |
	result := self library cancelGPUCommandBuffer_commandBuffer: self.
	self checkBooleanResult: result!

generateMipmapsForTexture: aGPUTexture
	self library generateMipmapsForGPUTexture_commandBuffer: self texture: aGPUTexture!

pushComputeUniformData: data
	self library
		pushGPUComputeUniformData_commandBuffer: self
		slotIndex: 0
		data: data
		length: data byteSize!

pushVertexUniformData: data
	self library
		pushGPUVertexUniformData_commandBuffer: self
		slotIndex: 0
		data: data
		length: data byteSize!

submit
	self library submitGPUCommandBuffer_commandBuffer: self! !

!SDL_GPUCommandBuffer categoriesForMethods!
acquireSwapchainTexture:!public! !
beginComputePass:!public! !
beginCopyPass!public! !
beginRenderPass:!public! !
beginRenderPass:clearColor:!public! !
beginRenderPass:clearColor:depthPlane:!public! !
beginRenderPass:clearColor:depthPlane:cycle:!public! !
beginRenderPassRaw:!public! !
blitTexture:destination:!public! !
blitTexture:destination:filter:!public! !
blitTexture:destination:flipMode:!public! !
blitTexture:destination:flipMode:filter:!public! !
blitTexture:destination:loadOp:filter:!public! !
blitTexture:destination:loadOp:flipMode:filter:!public! !
cancel!public! !
generateMipmapsForTexture:!public! !
pushComputeUniformData:!public! !
pushVertexUniformData:!public! !
submit!public! !
!

