"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_GPUDevice
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUDevice guid: (GUID fromString: '{50fd0928-fb76-41a2-a0bb-d99d8d3dc839}')!

SDL_GPUDevice comment: ''!

!SDL_GPUDevice categoriesForClass!External-Data-Structured! !

!SDL_GPUDevice methodsFor!

acquireCommandBuffer
	| commandBuffer |
	commandBuffer := self library acquireGPUCommandBuffer_device: self.
	self checkObjectResult: commandBuffer.
	^commandBuffer!

claimWindow: aWindow
	self checkBooleanResult: (self library claimWindowForGPUDevice_device: self window: aWindow)!

createBuffer: aBufferCreateInfo
	| buffer |
	buffer := self library createGPUBuffer_device: self createinfo: aBufferCreateInfo.
	self checkObjectResult: buffer.
	^buffer!

createComputePipeline: aComputePipelineCreateInfo
	| computePipeline |
	computePipeline := self library createGPUComputePipeline_device: self
				createinfo: aComputePipelineCreateInfo.
	self checkObjectResult: computePipeline.
	^computePipeline!

createGraphicsPipeline: aGraphicsPipelineCreateInfo
	| graphicsPipeline |
	graphicsPipeline := self library createGPUGraphicsPipeline_device: self
				createinfo: aGraphicsPipelineCreateInfo.
	self checkObjectResult: graphicsPipeline.
	^graphicsPipeline!

createSampler: aSamplerCreateInfo
	| sampler |
	sampler := self library createGPUSampler_device: self createinfo: aSamplerCreateInfo.
	self checkObjectResult: sampler.
	^sampler!

createTexture: aTextureCreateInfo
	| texture |
	texture := self library createGPUTexture_device: self createinfo: aTextureCreateInfo.
	self checkObjectResult: texture.
	texture extent: aTextureCreateInfo extent.
	^texture!

createTransferBuffer: aTransferBufferCreateInfo
	| transferBuffer |
	transferBuffer := self library createGPUTransferBuffer_device: self
				createinfo: aTransferBufferCreateInfo.
	self checkObjectResult: transferBuffer.
	^transferBuffer!

getSwapchainTextureFormat: aWindow
	^self library getGPUSwapchainTextureFormat_device: self window: aWindow!

loadFragmentShader: aString
	^self
		loadShader: aString
		stage: SDL_GPU_SHADERSTAGE_FRAGMENT
		samplerCount: 0
		uniformBufferCount: 0
		storageBufferCount: 0
		storageTextureCount: 0!

loadFragmentShader: aString samplerCount: anInteger
	^self
		loadShader: aString
		stage: SDL_GPU_SHADERSTAGE_FRAGMENT
		samplerCount: anInteger
		uniformBufferCount: 0
		storageBufferCount: 0
		storageTextureCount: 0!

loadShader: aString stage: stage samplerCount: samplerCount uniformBufferCount: uniformBufferCount storageBufferCount: storageBufferCount storageTextureCount: storageTextureCount
	| codeSize code shaderCreateInfo shader |
	codeSize := DWORD new.
	code := self library loadFile_file: aString datasize: codeSize.
	code isNull ifTrue: [self error: self library getError].
	shaderCreateInfo := SDL_GPUShaderCreateInfo new.
	shaderCreateInfo
		code: code;
		code_size: codeSize;
		entrypoint: 'main';
		format: SDL_GPU_SHADERFORMAT_SPIRV;
		stage: stage;
		num_samplers: samplerCount;
		num_uniform_buffers: uniformBufferCount;
		num_storage_buffers: storageBufferCount;
		num_storage_textures: storageTextureCount.
	shader := self library createGPUShader_device: self createinfo: shaderCreateInfo.
	self checkObjectResult: shader.
	^shader!

loadVertexShader: aString
	^self
		loadShader: aString
		stage: SDL_GPU_SHADERSTAGE_VERTEX
		samplerCount: 0
		uniformBufferCount: 0
		storageBufferCount: 0
		storageTextureCount: 0!

loadVertexShader: aString uniformBufferCount: anInteger
	^self
		loadShader: aString
		stage: SDL_GPU_SHADERSTAGE_VERTEX
		samplerCount: 0
		uniformBufferCount: anInteger
		storageBufferCount: 0
		storageTextureCount: 0!

mapTransferBuffer: aTransferBuffer
	^self library mapGPUTransferBuffer_device: self transferBuffer: aTransferBuffer cycle: false!

releaseBuffer: aGPUBuffer
	self library releaseGPUBuffer_device: self buffer: aGPUBuffer!

releaseComputePipeline: aComputePipeline
	self library releaseGPUComputePipeline_device: self computePipeline: aComputePipeline!

releaseGraphicsPipeline: aGPUGraphicsPipeline
	self library releaseGPUGraphicsPipeline_device: self graphicsPipeline: aGPUGraphicsPipeline!

releaseSampler: aGPUSampler
	self library releaseGPUSampler_device: self sampler: aGPUSampler!

releaseShader: aGPUShader
	self library releaseGPUShader_device: self shader: aGPUShader!

releaseTexture: aGPUTexture
	self library releaseGPUTexture_device: self texture: aGPUTexture!

releaseTransferBuffer: aGPUTransferBuffer
	self library releaseGPUTransferBuffer_device: self transferBuffer: aGPUTransferBuffer!

releaseWindow: aWindow
	self checkBooleanResult: (self library releaseWindowFromGPUDevice_device: self window: aWindow)!

unmapTransferBuffer: aTransferBuffer
	self library unmapGPUTransferBuffer_device: self transferBuffer: aTransferBuffer! !

!SDL_GPUDevice categoriesForMethods!
acquireCommandBuffer!public! !
claimWindow:!public! !
createBuffer:!public! !
createComputePipeline:!public! !
createGraphicsPipeline:!public! !
createSampler:!public! !
createTexture:!public! !
createTransferBuffer:!public! !
getSwapchainTextureFormat:!public! !
loadFragmentShader:!public! !
loadFragmentShader:samplerCount:!public! !
loadShader:stage:samplerCount:uniformBufferCount:storageBufferCount:storageTextureCount:!private! !
loadVertexShader:!public! !
loadVertexShader:uniformBufferCount:!public! !
mapTransferBuffer:!public! !
releaseBuffer:!public! !
releaseComputePipeline:!public! !
releaseGraphicsPipeline:!public! !
releaseSampler:!public! !
releaseShader:!public! !
releaseTexture:!public! !
releaseTransferBuffer:!public! !
releaseWindow:!public! !
unmapTransferBuffer:!public! !
!

!SDL_GPUDevice class methodsFor!

formatFlags: anInteger
	| gpuDevice |
	gpuDevice := SDL3Library default
				createGPUDevice_formatFlags: anInteger
				debugMode: true
				name: nil.
	self checkObjectResult: gpuDevice.
	^gpuDevice! !

!SDL_GPUDevice class categoriesForMethods!
formatFlags:!public! !
!

