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

setup
	| codeSize code computePipelineCreateInfo windowPixelSize |
	super setup.
	codeSize := DWORD new.
	code := self sdl loadFile_file: self shadersPath , 'GradientTexture.comp.spv' datasize: codeSize.
	code isNull ifTrue: [self error: self sdl getError].
	computePipelineCreateInfo := SDL_GPUComputePipelineCreateInfo new.
	computePipelineCreateInfo
		code: code;
		code_size: codeSize;
		entry_point_name: 'main';
		format: SDL_GPU_SHADERFORMAT_SPIRV;
		write_only_storage_texture_count: 1;
		uniform_buffer_count: 1;
		thread_count_x: 8;
		thread_count_y: 8;
		thread_count_z: 1.
	gradientPipeline := gpuDevice createComputePipeline: computePipelineCreateInfo.
	windowPixelSize := window getSizeInPixels.
	width := windowPixelSize x.
	height := windowPixelSize y.
	gradientRenderTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						format: (gpuDevice getSwapchainTextureFormat: window);
						type: SDL_GPU_TEXTURETYPE_2D;
						width: width;
						height: height;
						layer_count_or_depth: 1;
						level_count: 1;
						usage_flags: SDL_GPU_TEXTUREUSAGE_SAMPLER_BIT | SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE_BIT).
	gradientUniformValues := GradientUniforms new.
	isReady := true!

update
	| commandBuffer swapchainTexture |
	isReady ifFalse: [^self].
	gradientUniformValues time: gradientUniformValues time + 0.01.
	commandBuffer := gpuDevice acquireCommandBuffer.
	swapchainTexture := commandBuffer acquireSwapchainTexture: window.
	swapchainTexture isNull
		ifFalse: 
			[| computePass |
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
						texture: swapchainTexture;
						w: width;
						h: height)
				filterMode: SDL_GPU_FILTER_LINEAR].
	commandBuffer submit! !

!ComputeUniformsExample categoriesForMethods!
close!public! !
setup!public! !
update!public! !
!

