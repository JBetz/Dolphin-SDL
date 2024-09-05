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

renderOn: aGPUTexture
	| colorAttachmentInfo renderPass |
	colorAttachmentInfo := SDL_GPUColorAttachmentInfo new.
	colorAttachmentInfo
		texture: aGPUTexture;
		clear_color: Color gray asSDLFColor;
		load_op: SDL_GPU_LOADOP_CLEAR;
		store_op: SDL_GPU_STOREOP_STORE.
	renderPass := commandBuffer beginRenderPass: colorAttachmentInfo.
	renderPass end!

setup
	super setup.
	isReady := true! !

!ClearScreenExample categoriesForMethods!
renderOn:!public! !
setup!public! !
!

