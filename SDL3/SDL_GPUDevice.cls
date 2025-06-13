"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_GPUDevice
	instanceVariableNames: 'swapchainTextureFormat'
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
	| result |
	result := self library claimWindowForGPUDevice_device: self window: aWindow.
	self checkBooleanResult: result.
	swapchainTextureFormat := self getSwapchainTextureFormat: aWindow.
	self assert: [swapchainTextureFormat > SDL_GPU_TEXTUREFORMAT_INVALID]!

compileShader: aShaderSource
	| shadercross hlslInfo bytecodeSize bytecodePointer bytecode spirvInfo shader metadata |
	shadercross := SDL3ShadercrossLibrary default.
	hlslInfo := SDL_ShaderCross_HLSL_Info new
				source: aShaderSource sourceCode;
				entrypoint: 'main';
				shader_stage: aShaderSource stage;
				enable_debug: true;
				name: aShaderSource name.
	bytecodeSize := DWORD new.
	bytecodePointer := shadercross compileSPIRVFromHLSL_info: hlslInfo size: bytecodeSize.
	bytecode := ByteArray fromAddress: bytecodePointer length: bytecodeSize value.
	self library free_mem: bytecodePointer.
	metadata := shadercross
				reflectGraphicsSPIRV_bytecode: bytecode
				bytecode_size: bytecodeSize value
				props: nil.
	spirvInfo := SDL_ShaderCross_SPIRV_Info new
				bytecode: bytecode;
				entrypoint: 'main';
				shader_stage: aShaderSource stage;
				enable_debug: true;
				name: aShaderSource name.
	shader := shadercross
				compileGraphicsShaderFromSPIRV_device: self
				info: spirvInfo
				metadata: metadata
				props: nil.
	self checkObjectResult: shader.
	shader metadata: metadata.
	^shader!

createBuffer: aBufferCreateInfo
	| buffer |
	buffer := self library createGPUBuffer_device: self createinfo: aBufferCreateInfo.
	self checkObjectResult: buffer.
	^buffer!

createBuffer: anInteger size: anotherInteger
	| buffer |
	buffer := self library createGPUBuffer_device: self
				createinfo: (SDL_GPUBufferCreateInfo new
						usage: anInteger;
						size: anotherInteger).
	self checkObjectResult: buffer.
	^buffer!

createComputePipeline: aComputePipelineCreateInfo
	| computePipeline |
	computePipeline := self library createGPUComputePipeline_device: self
				createinfo: aComputePipelineCreateInfo.
	self checkObjectResult: computePipeline.
	^computePipeline!

createDownloadBuffer: anInteger
	^self createTransferBuffer: SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD size: anInteger!

createGraphicsPipeline: aGraphicsPipelineCreateInfo
	| graphicsPipeline |
	graphicsPipeline := self library createGPUGraphicsPipeline_device: self
				createinfo: aGraphicsPipelineCreateInfo.
	self checkObjectResult: graphicsPipeline.
	^graphicsPipeline!

createIndexBuffer: anInteger
	| buffer |
	buffer := self library createGPUBuffer_device: self
				createinfo: (SDL_GPUBufferCreateInfo new
						usage: SDL_GPU_BUFFERUSAGE_INDEX;
						size: anInteger).
	self checkObjectResult: buffer.
	^buffer!

createSampler: aSamplerCreateInfo
	| sampler |
	sampler := self library createGPUSampler_device: self createinfo: aSamplerCreateInfo.
	self checkObjectResult: sampler.
	^sampler!

createShader: aShaderCreateInfo
	| shader |
	shader := self library createGPUShader_device: self createinfo: aShaderCreateInfo.
	self checkObjectResult: shader.
	^shader!

createTexture: aTextureCreateInfo
	| texture |
	texture := self library createGPUTexture_device: self createinfo: aTextureCreateInfo.
	self checkObjectResult: texture.
	texture
		extent: aTextureCreateInfo extent;
		pixelFormat: aTextureCreateInfo format.
	^texture!

createTransferBuffer: anInteger size: anotherInteger
	| transferBuffer |
	transferBuffer := self library createGPUTransferBuffer_device: self
				createinfo: (SDL_GPUTransferBufferCreateInfo new
						usage: anInteger;
						size: anotherInteger).
	self checkObjectResult: transferBuffer.
	transferBuffer size: anotherInteger.
	^transferBuffer!

createUploadBuffer: anInteger
	^self createTransferBuffer: SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD size: anInteger!

createVertexBuffer: anInteger
	| buffer |
	buffer := self library createGPUBuffer_device: self
				createinfo: (SDL_GPUBufferCreateInfo new
						usage: SDL_GPU_BUFFERUSAGE_VERTEX;
						size: anInteger).
	self checkObjectResult: buffer.
	^buffer!

destroy
	self library destroyGPUDevice_device: self!

downloadFromBuffer: aTransferBuffer data: anExternalAddress length: anInteger
	| transferData |
	transferData := self mapTransferBuffer: aTransferBuffer.
	KernelLibrary default
		copyMemory: anExternalAddress
		source: transferData
		length: anInteger.
	self unmapTransferBuffer: aTransferBuffer!

getShaderFormats
	^self library getGPUShaderFormats_device: self!

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
		format: SDL_GPU_SHADERFORMAT_DXIL;
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

loadVertexShader: aString uniformBufferCount: anInteger storageBufferCount: anotherInteger
	^self
		loadShader: aString
		stage: SDL_GPU_SHADERSTAGE_VERTEX
		samplerCount: 0
		uniformBufferCount: anInteger
		storageBufferCount: anotherInteger
		storageTextureCount: 0!

mapTransferBuffer: aTransferBuffer
	^self library mapGPUTransferBuffer_device: self transferBuffer: aTransferBuffer cycle: true!

releaseBuffer: aGPUBuffer
	self library releaseGPUBuffer_device: self buffer: aGPUBuffer!

releaseComputePipeline: aComputePipeline
	self library releaseGPUComputePipeline_device: self computePipeline: aComputePipeline!

releaseFence: aGPUFence
	self library releaseGPUFence_device: self fence: aGPUFence!

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
	| result |
	result := self library releaseWindowFromGPUDevice_device: self window: aWindow.
	self checkBooleanResult: result!

setSwapchainParameters: aWindow composition: anInteger presentMode: anotherInteger
	| result |
	result := self library
				setGPUSwapchainParameters_device: self
				window: aWindow
				swapchainComposition: anInteger
				presentMode: anotherInteger.
	self checkBooleanResult: result!

supportsSampleCount: anInteger textureFormat: anotherInteger
	^self library
		gpuTextureSupportsSampleCount_device: self
		format: anotherInteger
		sampleCount: anInteger!

unmapTransferBuffer: aTransferBuffer
	self library unmapGPUTransferBuffer_device: self transferBuffer: aTransferBuffer!

uploadToBuffer: aTransferBuffer data: anExternalAddress length: anInteger
	| transferData |
	transferData := self mapTransferBuffer: aTransferBuffer.
	KernelLibrary default
		copyMemory: transferData
		source: anExternalAddress
		length: anInteger.
	self unmapTransferBuffer: aTransferBuffer!

waitForAndReleaseFence: aGPUFence
	self
		waitForFence: aGPUFence;
		releaseFence: aGPUFence!

waitForFence: aGPUFence
	self waitForFences: (Array with: aGPUFence)!

waitForFences: anArrayOfGPUFences
	| result |
	result := self library
		waitForGPUFences_device: self
		waitAll: true
		fences: (PointerArray withAll: anArrayOfGPUFences)
		numFences: anArrayOfGPUFences size.
	self checkBooleanResult: result! !

!SDL_GPUDevice categoriesForMethods!
acquireCommandBuffer!public! !
claimWindow:!public! !
compileShader:!public! !
createBuffer:!public! !
createBuffer:size:!public! !
createComputePipeline:!public! !
createDownloadBuffer:!public! !
createGraphicsPipeline:!public! !
createIndexBuffer:!public! !
createSampler:!public! !
createShader:!public! !
createTexture:!public! !
createTransferBuffer:size:!public! !
createUploadBuffer:!public! !
createVertexBuffer:!public! !
destroy!public! !
downloadFromBuffer:data:length:!public! !
getShaderFormats!public! !
getSwapchainTextureFormat:!public! !
loadFragmentShader:!public! !
loadFragmentShader:samplerCount:!public! !
loadShader:stage:samplerCount:uniformBufferCount:storageBufferCount:storageTextureCount:!private! !
loadVertexShader:!public! !
loadVertexShader:uniformBufferCount:!public! !
loadVertexShader:uniformBufferCount:storageBufferCount:!public! !
mapTransferBuffer:!public! !
releaseBuffer:!public! !
releaseComputePipeline:!public! !
releaseFence:!public! !
releaseGraphicsPipeline:!public! !
releaseSampler:!public! !
releaseShader:!public! !
releaseTexture:!public! !
releaseTransferBuffer:!public! !
releaseWindow:!public! !
setSwapchainParameters:composition:presentMode:!public! !
supportsSampleCount:textureFormat:!public! !
unmapTransferBuffer:!public! !
uploadToBuffer:data:length:!public! !
waitForAndReleaseFence:!public! !
waitForFence:!public! !
waitForFences:!public! !
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

