"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #BlitMirrorExample
	instanceVariableNames: 'texture'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

BlitMirrorExample guid: (GUID fromString: '{85d680af-5210-4a5f-ba49-048bc26d94c2}')!

BlitMirrorExample comment: ''!

!BlitMirrorExample categoriesForClass!Kernel-Objects! !

!BlitMirrorExample methodsFor!

close
	gpuDevice releaseTexture: texture.
	super close!

renderOn: aGPUTexture
	| clearPass |
	clearPass := commandBuffer beginRenderPass: (SDL_GPUColorTargetInfo new
						texture: aGPUTexture;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE;
						clear_color: Color black asSDLFColor;
						cycle: false).
	clearPass end.
	commandBuffer
		blitTexture: (SDL_GPUBlitRegion new
					texture: texture;
					w: texture width;
					h: texture height)
			destination: (SDL_GPUBlitRegion new
					texture: aGPUTexture;
					w: aGPUTexture width / 2;
					h: aGPUTexture height / 2);
		blitTexture: (SDL_GPUBlitRegion new
					texture: texture;
					w: texture width;
					h: texture height)
			destination: (SDL_GPUBlitRegion new
					texture: aGPUTexture;
					x: aGPUTexture width / 2;
					w: aGPUTexture width / 2;
					h: aGPUTexture height / 2)
			flipMode: SDL_FLIP_HORIZONTAL;
		blitTexture: (SDL_GPUBlitRegion new
					texture: texture;
					w: texture width;
					h: texture height)
			destination: (SDL_GPUBlitRegion new
					texture: aGPUTexture;
					w: aGPUTexture width / 2;
					y: aGPUTexture height / 2;
					h: aGPUTexture height / 2)
			flipMode: SDL_FLIP_VERTICAL;
		blitTexture: (SDL_GPUBlitRegion new
					texture: texture;
					w: texture width;
					h: texture height)
			destination: (SDL_GPUBlitRegion new
					texture: aGPUTexture;
					x: aGPUTexture width / 2;
					w: aGPUTexture width / 2;
					y: aGPUTexture height / 2;
					h: aGPUTexture height / 2)
			flipMode: SDL_FLIP_HORIZONTAL | SDL_FLIP_VERTICAL!

setup
	| imageData uploadTransferBuffer uploadTransferPointer copyPass |
	super setup.
	imageData := SDL_Surface fromBMPFile: self imagesPath , 'ravioli.bmp'.
	texture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_2D;
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						width: imageData width;
						height: imageData height;
						layer_count_or_depth: 1;
						num_levels: 1;
						usage: SDL_GPU_TEXTUREUSAGE_SAMPLER).
	uploadTransferBuffer := gpuDevice createTransferBuffer: (SDL_GPUTransferBufferCreateInfo new
						usage: SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD;
						size: texture width * texture height).
	uploadTransferPointer := gpuDevice mapTransferBuffer: uploadTransferBuffer.
	KernelLibrary default
		copyMemory: uploadTransferPointer
		source: imageData pixels
		length: texture width * texture height * 4.
	gpuDevice unmapTransferBuffer: uploadTransferBuffer.
	commandBuffer := gpuDevice acquireCommandBuffer.
	copyPass := commandBuffer beginCopyPass.
	copyPass uploadToTexture: (SDL_GPUTextureTransferInfo new transfer_buffer: uploadTransferBuffer)
		destination: (SDL_GPUTextureRegion new
				texture: texture;
				w: texture width;
				h: texture height;
				d: 1).
	copyPass end.
	commandBuffer submit.
	gpuDevice releaseTransferBuffer: uploadTransferBuffer.
	isReady := true! !

!BlitMirrorExample categoriesForMethods!
close!public! !
renderOn:!public! !
setup!public! !
!

