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
	renderPass := commandBuffer
				beginRenderPass: texture3D
				clearColor: Color red
				depthPlane: 0
				cycle: true.
	renderPass end.
	renderPass := commandBuffer
				beginRenderPass: texture3D
				clearColor: Color green
				depthPlane: 1.
	renderPass end.
	renderPass := commandBuffer
				beginRenderPass: texture3D
				clearColor: Color blue
				depthPlane: 2.
	renderPass end.
	renderPass := commandBuffer
				beginRenderPass: texture3D
				clearColor: Color magenta
				depthPlane: 3.
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
						num_levels: 1;
						usage: SDL_GPU_TEXTUREUSAGE_COLOR_TARGET | SDL_GPU_TEXTUREUSAGE_SAMPLER).
	isReady := true! !

!Clear3DSliceExample categoriesForMethods!
renderOn:!public! !
setup!public! !
!

