"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #GenerateMipmapsExample
	instanceVariableNames: 'mipmapTexture'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GenerateMipmapsExample guid: (GUID fromString: '{4199c48e-787b-4e9c-9224-1903cd64a7bd}')!

GenerateMipmapsExample comment: ''!

!GenerateMipmapsExample categoriesForClass!Kernel-Objects! !

!GenerateMipmapsExample methodsFor!

close
	gpuDevice releaseTexture: mipmapTexture.
	super close!

renderOn: aGPUTexture
	| width height |
	width := aGPUTexture width.
	height := aGPUTexture height.
	commandBuffer blitTexture: (SDL_GPUBlitRegion new
				texture: mipmapTexture;
				w: 8;
				h: 8;
				mip_level: 2)
		destination: (SDL_GPUBlitRegion new
				texture: aGPUTexture;
				w: width;
				h: height)!

setup
	| byteCount textureTransferBuffer textureTransferData imageSurface copyPass |
	super setup.
	mipmapTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_2D;
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						usage: SDL_GPU_TEXTUREUSAGE_SAMPLER | SDL_GPU_TEXTUREUSAGE_COLOR_TARGET;
						width: 32;
						height: 32;
						layer_count_or_depth: 1;
						num_levels: 3).
	byteCount := 32 * 32 * 4.
	textureTransferBuffer := gpuDevice createUploadTransferBuffer: byteCount.
	textureTransferData := gpuDevice mapTransferBuffer: textureTransferBuffer.
	imageSurface := SDL_Surface fromBMPFile: self imagesPath , 'cube0.bmp'.
	imageSurface format ~= SDL_PIXELFORMAT_ABGR8888
		ifTrue: 
			[| newImageSurface |
			newImageSurface := imageSurface convertPixelFormat: SDL_PIXELFORMAT_ABGR8888.
			imageSurface := newImageSurface].
	KernelLibrary default
		copyMemory: textureTransferData
		source: imageSurface pixels
		length: byteCount.
	imageSurface destroy.
	gpuDevice unmapTransferBuffer: textureTransferBuffer.
	commandBuffer := gpuDevice acquireCommandBuffer.
	copyPass := commandBuffer beginCopyPass.
	copyPass uploadToTexture: (SDL_GPUTextureTransferInfo new transfer_buffer: textureTransferBuffer)
		destination: (SDL_GPUTextureRegion new
				texture: mipmapTexture;
				w: 32;
				h: 32;
				d: 1).
	copyPass end.
	commandBuffer generateMipmapsForTexture: mipmapTexture.
	commandBuffer submit.
	gpuDevice releaseTransferBuffer: textureTransferBuffer.
	isReady := true! !

!GenerateMipmapsExample categoriesForMethods!
close!public! !
renderOn:!public! !
setup!public! !
!

