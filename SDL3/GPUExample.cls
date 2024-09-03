"Filed out from Dolphin Smalltalk"!

Application subclass: #GPUExample
	instanceVariableNames: 'gpuDevice'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GPUExample guid: (GUID fromString: '{06602b2f-ac9c-4dec-bd1c-de2a8f60b7bd}')!

GPUExample comment: ''!

!GPUExample categoriesForClass!Kernel-Objects! !

!GPUExample methodsFor!

close
	cursor := nil.
	self 
		closeGPUDevice;
		closeWindow!

closeGPUDevice
	gpuDevice ifNil: [^self].
	gpuDevice releaseWindow: window.
	gpuDevice := nil!

createGPUDevice
	| shaderFormatFlags |
	shaderFormatFlags := SDL_GPU_SHADERFORMAT_SPIRV.
	gpuDevice := SDL_GPUDevice formatFlags: shaderFormatFlags!

onCreated
	self setup!

setup
	self
		createWindow;
		createGPUDevice.
	gpuDevice claimWindow: window! !

!GPUExample categoriesForMethods!
close!public! !
closeGPUDevice!public! !
createGPUDevice!public! !
onCreated!public! !
setup!public! !
!

!GPUExample class methodsFor!

preferredExtent
	^640@480! !

!GPUExample class categoriesForMethods!
preferredExtent!public! !
!

