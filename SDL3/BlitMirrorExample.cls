"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #BlitMirrorExample
	instanceVariableNames: 'texture textureWidth textureHeight'
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
	clearPass := commandBuffer beginRenderPass: (SDL_GPUColorAttachmentInfo new
						texture: aGPUTexture;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE;
						clear_color: (Color black asSDLFColor );
						cycle: false).
	clearPass end!

setup
	| imageData uploadTransferBuffer uploadTransferPointer commandBuffer copyPass |
	super setup.
	imageData := SDL_Surface fromBMPFile: self imagesPath , 'ravioli.bmp'.
	textureWidth = imageData width.
	textureHeight := imageData height.
	texture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_2D;
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						width: textureWidth;
						height: textureHeight;
						layer_count_or_depth: 1;
						level_count: 1;
						usage_flags: SDL_GPU_TEXTUREUSAGE_SAMPLER_BIT).
	uploadTransferBuffer := gpuDevice createTransferBuffer: (SDL_GPUTransferBufferCreateInfo new
						usage: SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD;
						size_in_bytes: textureWidth * textureHeight).
	uploadTransferPointer := gpuDevice mapTransferBuffer: uploadTransferBuffer.
	KernelLibrary default
		copyMemory: uploadTransferPointer
		source: imageData pixels
		length: textureWidth * textureHeight * 4.
	gpuDevice unmapTransferBuffer: uploadTransferBuffer.
	commandBuffer := gpuDevice acquireCommandBuffer.
	copyPass := commandBuffer beginCopyPass.
	copyPass uploadToTexture: (SDL_GPUTextureTransferInfo new transfer_buffer: uploadTransferBuffer)
		destination: (SDL_GPUTextureRegion new
				texture: texture;
				w: textureWidth;
				h: textureHeight;
				d: 1).
	copyPass end.
	commandBuffer submit.
	gpuDevice releaseTransferBuffer: uploadTransferBuffer.
	imageData destroy.
	isReady := true! !

!BlitMirrorExample categoriesForMethods!
close!public! !
renderOn:!public! !
setup!public! !
!

