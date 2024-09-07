"Filed out from Dolphin Smalltalk"!

GPUExample subclass: #ClearScreenMultiWindowExample
	instanceVariableNames: 'secondWindow'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ClearScreenMultiWindowExample guid: (GUID fromString: '{22dd53c1-77c6-4e37-b13e-83e3480d038b}')!

ClearScreenMultiWindowExample comment: ''!

!ClearScreenMultiWindowExample categoriesForClass!Kernel-Objects! !

!ClearScreenMultiWindowExample methodsFor!

close
	gpuDevice releaseWindow: secondWindow.
	secondWindow ifNil: [^self].
	inputState closeWindow: secondWindow getID.
	secondWindow := nil.
	super close!

renderOn: aGPUTexture
	| renderPass secondSwapchainTexture |
	renderPass := commandBuffer beginRenderPass: (SDL_GPUColorTargetInfo new
						texture: aGPUTexture;
						clear_color: Color lightGray asSDLFColor;
						load_op: SDL_GPU_LOADOP_CLEAR;
						store_op: SDL_GPU_STOREOP_STORE).
	renderPass end.
	secondSwapchainTexture := commandBuffer acquireSwapchainTexture: secondWindow.
	secondSwapchainTexture isNull
		ifFalse: 
			[renderPass := commandBuffer beginRenderPass: (SDL_GPUColorTargetInfo new
								texture: secondSwapchainTexture;
								clear_color: Color gray asSDLFColor;
								load_op: SDL_GPU_LOADOP_CLEAR;
								store_op: SDL_GPU_STOREOP_STORE).
			renderPass end]!

setup
	super setup.
	secondWindow := inputState
				createWindow: self class name , ' (2)'
				extent: self calculateInitialExtent
				flags: self windowFlags
				for: self.
	gpuDevice claimWindow: secondWindow.
	isReady := true! !

!ClearScreenMultiWindowExample categoriesForMethods!
close!public! !
renderOn:!public! !
setup!public! !
!

