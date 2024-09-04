"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #ClearScreenExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ClearScreenExample guid: (GUID fromString: '{f63bf3a7-bf88-4d94-9ef8-140a5ab67f9e}')!

ClearScreenExample comment: ''!

!ClearScreenExample categoriesForClass!Kernel-Objects! !

!ClearScreenExample methodsFor!

update
	| commandBuffer swapchainTexture colorAttachmentInfo renderPass |
	commandBuffer := gpuDevice acquireCommandBuffer.
	swapchainTexture := commandBuffer acquireSwapchainTexture: window.
	swapchainTexture isNull
		ifFalse: 
			[colorAttachmentInfo := SDL_GPUColorAttachmentInfo new.
			colorAttachmentInfo
				texture: swapchainTexture;
				clear_color: (SDL_FColor
							r: 0.01
							g: 0.01
							b: 0.4
							a: 1.0);
				load_op: SDL_GPU_LOADOP_CLEAR;
				store_op: SDL_GPU_STOREOP_STORE.
			renderPass := commandBuffer beginRenderPass: colorAttachmentInfo.
			renderPass end].
	commandBuffer submit! !

!ClearScreenExample categoriesForMethods!
update!public! !
!

