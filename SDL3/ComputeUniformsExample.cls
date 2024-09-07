"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #ComputeUniformsExample
	instanceVariableNames: 'gradientPipeline gradientRenderTexture gradientUniformValues width height'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ComputeUniformsExample guid: (GUID fromString: '{683a0d67-aa41-4c14-aafa-4be0d00ad7ac}')!

ComputeUniformsExample comment: ''!

!ComputeUniformsExample categoriesForClass!Kernel-Objects! !

!ComputeUniformsExample methodsFor!

close
	gpuDevice
		releaseComputePipeline: gradientPipeline;
		releaseTexture: gradientRenderTexture.
	super close!

renderOn: aGPUTexture
	| computePass |
	gradientUniformValues time: gradientUniformValues time + 0.01.
	computePass := commandBuffer beginComputePass: (SDL_GPUStorageTextureWriteOnlyBinding new
						texture: gradientRenderTexture;
						cycle: true).
	computePass bindComputePipeline: gradientPipeline.
	commandBuffer pushComputeUniformData: gradientUniformValues.
	computePass
		dispatchComputeToX: width / 8
			y: height / 8
			z: 1;
		end.
	commandBuffer
		blitTexture: (SDL_GPUBlitRegion new
				texture: gradientRenderTexture;
				w: width;
				h: height)
		destination: (SDL_GPUBlitRegion new
				texture: aGPUTexture;
				w: width;
				h: height)
		filterMode: SDL_GPU_FILTER_LINEAR!

setup
	| codeSize code windowPixelSize |
	super setup.
	codeSize := DWORD new.
	code := self sdl loadFile_file: self shadersPath , 'GradientTexture.comp.spv' datasize: codeSize.
	code isNull ifTrue: [self error: self sdl getError].
	gradientPipeline := gpuDevice createComputePipeline: (SDL_GPUComputePipelineCreateInfo new
						code: code;
						code_size: codeSize;
						entrypoint: 'main';
						format: SDL_GPU_SHADERFORMAT_SPIRV;
						num_write_only_storage_textures: 1;
						num_uniform_buffers: 1;
						threadcount_x: 8;
						threadcount_y: 8;
						threadcount_z: 1).
	windowPixelSize := window getSizeInPixels.
	width := windowPixelSize x.
	height := windowPixelSize y.
	gradientRenderTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						format: (gpuDevice getSwapchainTextureFormat: window);
						type: SDL_GPU_TEXTURETYPE_2D;
						width: width;
						height: height;
						layer_count_or_depth: 1;
						num_levels: 1;
						usage: SDL_GPU_TEXTUREUSAGE_SAMPLER | SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE).
	gradientUniformValues := GradientUniforms new.
	isReady := true! !

!ComputeUniformsExample categoriesForMethods!
close!public! !
renderOn:!public! !
setup!public! !
!

