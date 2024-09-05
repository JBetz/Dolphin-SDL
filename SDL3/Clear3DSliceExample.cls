"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #Clear3DSliceExample
	instanceVariableNames: 'texture3D'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Clear3DSliceExample guid: (GUID fromString: '{bd2cd8a2-572d-4607-bb4e-6c9f63973de0}')!

Clear3DSliceExample comment: ''!

!Clear3DSliceExample categoriesForClass!Kernel-Objects! !

!Clear3DSliceExample methodsFor!

renderOn: aGPUTexture
	| width height renderPass |
	width := aGPUTexture width.
	height := aGPUTexture height.
	renderPass := commandBuffer beginRenderPass: (SDL_GPUColorAttachmentInfo new
						texture: texture3D;
						cycle: true;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE;
						clear_color: Color red asSDLFColor;
						layer_or_depth_plane: 0).
	renderPass end.
	renderPass := commandBuffer beginRenderPass: (SDL_GPUColorAttachmentInfo new
						texture: texture3D;
						cycle: false;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE;
						clear_color: Color green asSDLFColor;
						layer_or_depth_plane: 1).
	renderPass end.
	renderPass := commandBuffer beginRenderPass: (SDL_GPUColorAttachmentInfo new
						texture: texture3D;
						cycle: false;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE;
						clear_color: Color blue asSDLFColor;
						layer_or_depth_plane: 2).
	renderPass end.
	renderPass := commandBuffer beginRenderPass: (SDL_GPUColorAttachmentInfo new
						texture: texture3D;
						cycle: false;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE;
						clear_color: Color magenta asSDLFColor;
						layer_or_depth_plane: 3).
	renderPass end.
	0 to: 3
		do: 
			[:i |
			| destX destY |
			destX := i % 2 * (width / 2).
			destY := i > 2 ifTrue: [height / 2] ifFalse: [0].
			commandBuffer blitTexture: (SDL_GPUBlitRegion new
						texture: texture3D;
						layer_or_depth_plane: i;
						w: 64;
						h: 64)
				destination: (SDL_GPUBlitRegion new
						texture: aGPUTexture;
						x: destX;
						y: destY;
						w: width / 2;
						h: height / 2)]!

setup
	| swapchainFormat |
	super setup.
	swapchainFormat := gpuDevice getSwapchainTextureFormat: window.
	texture3D := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_3D;
						format: swapchainFormat;
						width: 64;
						height: 64;
						layer_count_or_depth: 4;
						level_count: 1;
						usage_flags: SDL_GPU_TEXTUREUSAGE_COLOR_TARGET_BIT | SDL_GPU_TEXTUREUSAGE_SAMPLER_BIT).
	isReady := true! !

!Clear3DSliceExample categoriesForMethods!
renderOn:!public! !
setup!public! !
!

