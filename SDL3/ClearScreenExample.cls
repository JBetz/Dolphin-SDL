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
	| renderPass |
	renderPass := commandBuffer beginRenderPass: aGPUTexture clearColor: Color gray.
	renderPass end!

setup
	super setup.
	isReady := true! !

!ClearScreenExample categoriesForMethods!
renderOn:!public! !
setup!public! !
!

