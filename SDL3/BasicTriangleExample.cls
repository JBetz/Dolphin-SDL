"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #BasicTriangleExample
	instanceVariableNames: 'fillPipeline linePipeline'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BasicTriangleExample guid: (GUID fromString: '{d63901e0-b01b-4aa2-88c7-231f0ed078f4}')!

BasicTriangleExample comment: ''!

!BasicTriangleExample categoriesForClass!Kernel-Objects! !

!BasicTriangleExample methodsFor!

close
	gpuDevice
		releaseGraphicsPipeline: fillPipeline;
		releaseGraphicsPipeline: linePipeline.
	super close!

renderOn: aGPUTexture
	| renderPass |
	renderPass := commandBuffer beginRenderPass: aGPUTexture.
	renderPass
		bindGraphicsPipeline: fillPipeline;
		drawPrimitives: 3 instanceCount: 1;
		end!

setup
	| vertexShader fragmentShader graphicsPipelineCreateInfo colorTargetDescription colorTargetDescriptions |
	super setup.
	vertexShader := gpuDevice loadVertexShader: self shadersPath , 'RawTriangle.vert.spv'.
	fragmentShader := gpuDevice loadFragmentShader: self shadersPath , 'SolidColor.frag.spv'.
	graphicsPipelineCreateInfo := SDL_GPUGraphicsPipelineCreateInfo new.
	colorTargetDescription := SDL_GPUColorTargetDescription new.
	colorTargetDescription format: (gpuDevice getSwapchainTextureFormat: window).
	colorTargetDescription blend_state
		enable_blend: true;
		alpha_blend_op: SDL_GPU_BLENDOP_ADD;
		color_blend_op: SDL_GPU_BLENDOP_ADD;
		color_write_mask: 16rF;
		src_color_blendfactor: SDL_GPU_BLENDFACTOR_ONE;
		src_alpha_blendfactor: SDL_GPU_BLENDFACTOR_ONE;
		dst_color_blendfactor: SDL_GPU_BLENDFACTOR_ZERO;
		dst_alpha_blendfactor: SDL_GPU_BLENDFACTOR_ZERO.
	colorTargetDescriptions := StructureArray with: colorTargetDescription.
	graphicsPipelineCreateInfo target_info
		color_target_descriptions: colorTargetDescriptions.
	graphicsPipelineCreateInfo multisample_state sample_mask: 16rFFFF.
	graphicsPipelineCreateInfo
		primitive_type: SDL_GPU_PRIMITIVETYPE_TRIANGLELIST;
		vertex_shader: vertexShader;
		fragment_shader: fragmentShader.
	graphicsPipelineCreateInfo rasterizer_state fill_mode: SDL_GPU_FILLMODE_FILL.
	fillPipeline := gpuDevice createGraphicsPipeline: graphicsPipelineCreateInfo.
	graphicsPipelineCreateInfo rasterizer_state fill_mode: SDL_GPU_FILLMODE_LINE.
	linePipeline := gpuDevice createGraphicsPipeline: graphicsPipelineCreateInfo.
	gpuDevice
		releaseShader: vertexShader;
		releaseShader: fragmentShader.
	isReady := true! !

!BasicTriangleExample categoriesForMethods!
close!public! !
renderOn:!public! !
setup!public! !
!

