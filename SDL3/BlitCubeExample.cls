"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #BlitCubeExample
	instanceVariableNames: 'pipeline vertexBuffer indexBuffer sourceTexture destinationTexture sampler cameraPosition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BlitCubeExample guid: (GUID fromString: '{2da2629b-ba89-49ba-a2cc-50760862f843}')!

BlitCubeExample comment: ''!

!BlitCubeExample categoriesForClass!Kernel-Objects! !

!BlitCubeExample methodsFor!

close
	gpuDevice
		releaseGraphicsPipeline: pipeline;
		releaseBuffer: vertexBuffer;
		releaseBuffer: indexBuffer;
		releaseTexture: sourceTexture;
		releaseTexture: destinationTexture;
		releaseSampler: sampler.
	super close!

setup
	super setup.
	self setupPipeline.!

setupBufferData
	!

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
										binding: 0;
										input_rate: SDL_GPU_VERTEXINPUTRATE_VERTEX;
										instance_step_rate: 0;
										pitch: PositionVertex byteSize));
					vertex_attributes: (StructureArray with: (SDL_GPUVertexAttribute new
										binding: 0;
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
	! !

!BlitCubeExample categoriesForMethods!
close!private! !
setup!public! !
setupBufferData!private! !
setupPipeline!private! !
setupResources!private! !
setupTextureData!private! !
!

