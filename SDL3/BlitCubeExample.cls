"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #BlitCubeExample
	instanceVariableNames: 'pipeline vertexBuffer indexBuffer sourceTexture destinationTexture sampler cameraPosition bufferTransferBuffer textureTransferBuffer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BlitCubeExample guid: (GUID fromString: '{2da2629b-ba89-49ba-a2cc-50760862f843}')!

BlitCubeExample comment: ''!

!BlitCubeExample categoriesForClass!Kernel-Objects! !

!BlitCubeExample methodsFor!

blitToDestinationTexture
	1 to: self imageNames size
		do: 
			[:index |
			commandBuffer
				blitTexture: (SDL_GPUBlitRegion new
						texture: sourceTexture;
						layer_or_depth_plane: index - 1;
						w: 32;
						h: 32)
				destination: (SDL_GPUBlitRegion new
						texture: destinationTexture;
						layer_or_depth_plane: 1;
						w: 32;
						h: 32)
				filterMode: SDL_GPU_FILTER_LINEAR].
	gpuDevice
		releaseTransferBuffer: bufferTransferBuffer;
		releaseTransferBuffer: textureTransferBuffer.
	commandBuffer submit!

bytesPerImage
	^32 * 32 * 4!

close
	gpuDevice
		releaseGraphicsPipeline: pipeline;
		releaseBuffer: vertexBuffer;
		releaseBuffer: indexBuffer;
		releaseTexture: sourceTexture;
		releaseTexture: destinationTexture;
		releaseSampler: sampler.
	super close!

imageNames
	^#('cube0.bmp' 'cube1.bmp' 'cube2.bmp' 'cube3.bmp' 'cube4.bmp' 'cube5.bmp')!

initialize
	super initialize.
	cameraPosition := #(0 0 4)!

renderOn: aGPUTexture
	| projection view viewProjection uniformData renderPass |
	projection := Matrix
				perspectiveFor: 180
				aspectRatio: 640 / 480
				nearPlane: 0.01
				farPlane: 100.
	view := Matrix identity: 4.
	viewProjection := view * projection.
	uniformData := FLOATArray withAll: viewProjection asFloatArray.
	renderPass := commandBuffer beginRenderPass: aGPUTexture.
	renderPass
		bindGraphicsPipeline: pipeline;
		bindVertexBuffers: (Array with: vertexBuffer);
		bind16BitIndexBuffer: indexBuffer;
		bindFragmentSamplers: (Array
					with: (SDL_GPUTextureSamplerBinding texture: destinationTexture sampler: sampler)).
	commandBuffer pushVertexUniformData: uniformData.
	renderPass
		drawIndexedPrimitives: 36 instanceCount: 1;
		end!

setup
	super setup.
	self
		setupPipeline;
		setupResources;
		setupBufferData;
		setupTextureData;
		uploadTransferData;
		blitToDestinationTexture!

setupBufferData
	| bufferSize bufferTransferData vertexData indexData indices |
	bufferSize := PositionVertex byteSize * 24 + (WORD byteSize * 36).
	bufferTransferBuffer := gpuDevice createUploadTransferBuffer: bufferSize.
	bufferTransferData := gpuDevice mapTransferBuffer: bufferTransferBuffer.
	vertexData := StructureArray
				fromAddress: bufferTransferData
				length: 24
				elementClass: PositionVertex.
	vertexData
		at: 1
			put: (PositionVertex
					x: -10
					y: -10
					z: -10);
		at: 2
			put: (PositionVertex
					x: 10
					y: -10
					z: -10);
		at: 3
			put: (PositionVertex
					x: 10
					y: 10
					z: -10);
		at: 4
			put: (PositionVertex
					x: -10
					y: 10
					z: -10);
		at: 5
			put: (PositionVertex
					x: -10
					y: -10
					z: 10);
		at: 6
			put: (PositionVertex
					x: 10
					y: -10
					z: 10);
		at: 7
			put: (PositionVertex
					x: 10
					y: 10
					z: 10);
		at: 8
			put: (PositionVertex
					x: -10
					y: 10
					z: 10);
		at: 9
			put: (PositionVertex
					x: -10
					y: -10
					z: -10);
		at: 10
			put: (PositionVertex
					x: -10
					y: 10
					z: -10);
		at: 11
			put: (PositionVertex
					x: -10
					y: 10
					z: 10);
		at: 12
			put: (PositionVertex
					x: -10
					y: -10
					z: 10);
		at: 13
			put: (PositionVertex
					x: 10
					y: -10
					z: -10);
		at: 14
			put: (PositionVertex
					x: 10
					y: 10
					z: -10);
		at: 15
			put: (PositionVertex
					x: 10
					y: 10
					z: 10);
		at: 16
			put: (PositionVertex
					x: 10
					y: -10
					z: 10);
		at: 17
			put: (PositionVertex
					x: -10
					y: -10
					z: -10);
		at: 18
			put: (PositionVertex
					x: -10
					y: -10
					z: -10);
		at: 19
			put: (PositionVertex
					x: 10
					y: -10
					z: 10);
		at: 20
			put: (PositionVertex
					x: 10
					y: -10
					z: -10);
		at: 21
			put: (PositionVertex
					x: -10
					y: 10
					z: -10);
		at: 22
			put: (PositionVertex
					x: -10
					y: 10
					z: 10);
		at: 23
			put: (PositionVertex
					x: 10
					y: 10
					z: 10);
		at: 24
			put: (PositionVertex
					x: 10
					y: 10
					z: -10).
	indexData := DWORDArray fromAddress: bufferTransferData yourAddress + vertexData byteSize length: 36.
	indices := DWORDArray
				withAll: #(0 1 2 0 2 3 6 5 4 7 6 4 8 9 10 8 10 11 14 13 12 15 14 12 16 17 18 16 18 19 22 21 20 23 22 20).
	KernelLibrary default
		copyMemory: indexData
		source: indices
		length: indices byteSize.
	gpuDevice unmapTransferBuffer: bufferTransferBuffer!

setupPipeline
	| vertexShader fragmentShader pipelineCreateInfo |
	vertexShader := gpuDevice loadVertexShader: self shadersPath , 'Skybox.vert.spv'
				uniformBufferCount: 1.
	fragmentShader := gpuDevice loadFragmentShader: self shadersPath , 'Skybox.frag.spv' samplerCount: 1.
	pipelineCreateInfo := SDL_GPUGraphicsPipelineCreateInfo new.
	pipelineCreateInfo
		target_info: (SDL_GPUGraphicsPipelineTargetInfo new
					color_target_descriptions: (StructureArray with: (SDL_GPUColorTargetDescription new
									format: (gpuDevice getSwapchainTextureFormat: window);
									blend_state: (SDL_GPUColorTargetBlendState new
												enable_blend: true;
												alpha_blend_op: SDL_GPU_BLENDOP_ADD;
												color_blend_op: SDL_GPU_BLENDOP_ADD;
												color_write_mask: 16rF;
												src_color_blendfactor: SDL_GPU_BLENDFACTOR_ONE;
												src_alpha_blendfactor: SDL_GPU_BLENDFACTOR_ONE;
												dst_color_blendfactor: SDL_GPU_BLENDFACTOR_ZERO;
												dst_alpha_blendfactor: SDL_GPU_BLENDFACTOR_ZERO))));
		vertex_input_state: (SDL_GPUVertexInputState new
					vertex_bindings: (StructureArray with: (SDL_GPUVertexBinding new
										index: 0;
										input_rate: SDL_GPU_VERTEXINPUTRATE_VERTEX;
										instance_step_rate: 0;
										pitch: PositionVertex byteSize));
					vertex_attributes: (StructureArray with: (SDL_GPUVertexAttribute new
										binding_index: 0;
										format: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3;
										location: 0;
										offset: 0)));
		primitive_type: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3;
		vertex_shader: vertexShader;
		fragment_shader: fragmentShader.
	pipelineCreateInfo multisample_state sample_mask: 16rFFFF.
	pipeline := gpuDevice createGraphicsPipeline: pipelineCreateInfo.
	gpuDevice
		releaseShader: vertexShader;
		releaseShader: fragmentShader!

setupResources
	vertexBuffer := gpuDevice createBuffer: (SDL_GPUBufferCreateInfo new
						usage: SDL_GPU_BUFFERUSAGE_VERTEX;
						size: PositionVertex byteSize * 24).
	indexBuffer := gpuDevice createBuffer: (SDL_GPUBufferCreateInfo new
						usage: SDL_GPU_BUFFERUSAGE_INDEX;
						size: WORD byteSize * 24).
	sourceTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						type: SDL_GPU_TEXTURETYPE_CUBE;
						width: 32;
						height: 32;
						layer_count_or_depth: 6;
						num_levels: 1;
						usage: SDL_GPU_TEXTUREUSAGE_SAMPLER).
	destinationTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						type: SDL_GPU_TEXTURETYPE_CUBE;
						width: 32;
						height: 32;
						layer_count_or_depth: 6;
						num_levels: 1;
						usage: SDL_GPU_TEXTUREUSAGE_SAMPLER | SDL_GPU_TEXTUREUSAGE_COLOR_TARGET).
	sampler := gpuDevice createSampler: (SDL_GPUSamplerCreateInfo new
						min_filter: SDL_GPU_FILTER_NEAREST;
						mag_filter: SDL_GPU_FILTER_NEAREST;
						mipmap_mode: SDL_GPU_SAMPLERMIPMAPMODE_NEAREST;
						address_mode_u: SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE;
						address_mode_v: SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE;
						address_mode_w: SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE)!

setupTextureData
	| textureTransferData |
	textureTransferBuffer := gpuDevice createUploadTransferBuffer: self bytesPerImage * 6.
	textureTransferData := gpuDevice mapTransferBuffer: textureTransferBuffer.
	1 to: self imageNames size
		do: 
			[:index |
			| imageName imageData |
			imageName := self imageNames at: index.
			imageData := SDL_Surface fromBMPFile: self imagesPath , imageName.
			KernelLibrary default
				copyMemory: (ExternalAddress
						fromInteger: textureTransferData asInteger + (self bytesPerImage * (index - 1)))
				source: imageData pixels
				length: self bytesPerImage].
	gpuDevice unmapTransferBuffer: textureTransferBuffer!

uploadTransferData
	| copyPass |
	commandBuffer := gpuDevice acquireCommandBuffer.
	copyPass := commandBuffer beginCopyPass.
	copyPass
		uploadToBuffer: (SDL_GPUTransferBufferLocation new
					transfer_buffer: bufferTransferBuffer;
					offset: 0)
			destination: (SDL_GPUBufferRegion new
					buffer: vertexBuffer;
					offset: 0;
					size: PositionVertex byteSize * 24);
		uploadToBuffer: (SDL_GPUTransferBufferLocation new
					transfer_buffer: bufferTransferBuffer;
					offset: PositionVertex byteSize * 24)
			destination: (SDL_GPUBufferRegion new
					buffer: indexBuffer;
					offset: 0;
					size: DWORD byteSize * 36).
	1 to: self imageNames size
		do: 
			[:index |
			copyPass uploadToTexture: (SDL_GPUTextureTransferInfo new
						transfer_buffer: textureTransferBuffer;
						offset: self bytesPerImage * (index - 1))
				destination: (SDL_GPUTextureRegion new
						texture: sourceTexture;
						layer: index - 1;
						w: 32;
						h: 32;
						d: 1)].
	copyPass end! !

!BlitCubeExample categoriesForMethods!
blitToDestinationTexture!private! !
bytesPerImage!private! !
close!public! !
imageNames!private! !
initialize!public! !
renderOn:!public! !
setup!public! !
setupBufferData!private! !
setupPipeline!private! !
setupResources!private! !
setupTextureData!private! !
uploadTransferData!private! !
!

