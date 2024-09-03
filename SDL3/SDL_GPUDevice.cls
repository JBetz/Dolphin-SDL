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

createComputePipeline: aComputePipelineCreateInfo
	| computePipeline |
	computePipeline := self library createGPUComputePipeline_device: self
				computePipelineCreateInfo: aComputePipelineCreateInfo.
	self checkObjectResult: computePipeline.
	^computePipeline!

createGraphicsPipeline: aGraphicsPipelineCreateInfo
	| graphicsPipeline |
	graphicsPipeline := self library createGPUGraphicsPipeline_device: self
				pipelineCreateInfo: aGraphicsPipelineCreateInfo.
	self checkObjectResult: graphicsPipeline.
	^graphicsPipeline!

createTexture: aTextureCreateInfo
	| texture |
	texture := self library createGPUTexture_device: self textureCreateInfo: aTextureCreateInfo.
	self checkObjectResult: texture.
	^texture!

getSwapchainTextureFormat: aWindow
	^self library getGPUSwapchainTextureFormat_device: self window: aWindow!

loadFragmentShader: aString
	^self loadShader: aString stage: SDL_GPU_SHADERSTAGE_FRAGMENT!

loadShader: aString stage: anInteger
	| codeSize code shaderCreateInfo shader |
	codeSize := DWORD new.
	code := self library loadFile_file: aString datasize: codeSize.
	code isNull ifTrue: [self error: self library getError].
	shaderCreateInfo := SDL_GPUShaderCreateInfo new.
	shaderCreateInfo
		code: code;
		code_size: codeSize;
		entry_point_name: 'main';
		format: SDL_GPU_SHADERFORMAT_SPIRV;
		stage: anInteger;
		sampler_count: 0;
		uniform_buffer_count: 0;
		storage_buffer_count: 0;
		storage_texture_count: 0.
	shader := self library createGPUShader_device: self shaderCreateInfo: shaderCreateInfo.
	self checkObjectResult: shader.
	^shader!

loadVertexShader: aString
	^self loadShader: aString stage: SDL_GPU_SHADERSTAGE_VERTEX!

releaseComputePipeline: aComputePipeline
	self library releaseGPUComputePipeline_device: self computePipeline: aComputePipeline!

releaseGraphicsPipeline: aGPUGraphicsPipeline
	self library releaseGPUGraphicsPipeline_device: self graphicsPipeline: aGPUGraphicsPipeline!

releaseShader: aGPUShader
	self library releaseGPUShader_device: self shader: aGPUShader!

releaseTexture: aGPUTexture
	self library releaseGPUTexture_device: self texture: aGPUTexture!

releaseWindow: aWindow
	self checkBooleanResult: (self library releaseWindowFromGPUDevice_device: self window: aWindow)! !

!SDL_GPUDevice categoriesForMethods!
acquireCommandBuffer!public! !
claimWindow:!public! !
createComputePipeline:!public! !
createGraphicsPipeline:!public! !
createTexture:!public! !
getSwapchainTextureFormat:!public! !
loadFragmentShader:!public! !
loadShader:stage:!private! !
loadVertexShader:!public! !
releaseComputePipeline:!public! !
releaseGraphicsPipeline:!public! !
releaseShader:!public! !
releaseTexture:!public! !
releaseWindow:!public! !
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

