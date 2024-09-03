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

render
	| commandBuffer |
	commandBuffer := gpuDevice acquireCommandBuffer.!

setup
	| shadersPath vertexShader fragmentShader graphicsPipelineCreateInfo colorAttachmentDescription |
	super setup.
	shadersPath := FileLocator imageRelative: 'Content\Shaders\Compiled\'.
	vertexShader := gpuDevice loadVertexShader: shadersPath , 'RawTriangle.vert.spv'.
	fragmentShader := gpuDevice loadFragmentShader: shadersPath , 'SolidColor.frag.spv'.
	graphicsPipelineCreateInfo := SDL_GPUGraphicsPipelineCreateInfo new.
	colorAttachmentDescription := SDL_GPUColorAttachmentDescription new.
	colorAttachmentDescription format: (gpuDevice getSwapchainTextureFormat: window).
	colorAttachmentDescription blend_state
		blend_enable: true;
		alpha_blend_op: SDL_GPU_BLENDOP_ADD;
		color_blend_op: SDL_GPU_BLENDOP_ADD;
		color_write_mask: 16rF;
		src_color_blend_factor: SDL_GPU_BLENDFACTOR_ONE;
		src_alpha_blend_factor: SDL_GPU_BLENDFACTOR_ONE;
		dst_color_blend_factor: SDL_GPU_BLENDFACTOR_ZERO;
		dst_alpha_blend_factor: SDL_GPU_BLENDFACTOR_ZERO.
	graphicsPipelineCreateInfo attachment_info
		color_attachment_descriptions: colorAttachmentDescription yourAddress.
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
		releaseShader: fragmentShader! !

!BasicTriangleExample categoriesForMethods!
close!public! !
render!public! !
setup!public! !
!

