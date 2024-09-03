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

setup
	super setup.
	secondWindow := inputState
				createWindow: self class name , ' (2)'
				extent: self calculateInitialExtent
				flags: self windowFlags
				for: self.
	gpuDevice claimWindow: secondWindow!

update
	| commandBuffer width height swapchainTexture renderPass |
	secondWindow ifNil: [^self].
	commandBuffer := gpuDevice acquireCommandBuffer.
	width := DWORD new.
	height := DWORD new.
	swapchainTexture := commandBuffer
				acquireSwapchainTexture: window
				width: width
				height: height.
	swapchainTexture isNull
		ifFalse: 
			[renderPass := commandBuffer beginRenderPass: (SDL_GPUColorAttachmentInfo new
								texture: swapchainTexture;
								clear_color: (SDL_FColor
											r: 0.3
											g: 0.4
											b: 0.5
											a: 1.0);
								load_op: SDL_GPU_LOADOP_CLEAR;
								store_op: SDL_GPU_STOREOP_STORE).
			renderPass end].
	swapchainTexture := commandBuffer
				acquireSwapchainTexture: secondWindow
				width: width
				height: height.
	swapchainTexture isNull
		ifFalse: 
			[renderPass := commandBuffer beginRenderPass: (SDL_GPUColorAttachmentInfo new
								texture: swapchainTexture;
								clear_color: (SDL_FColor
											r: 1.0
											g: 0.5
											b: 0.6
											a: 1.0);
								load_op: SDL_GPU_LOADOP_CLEAR;
								store_op: SDL_GPU_STOREOP_STORE).
			renderPass end].
	commandBuffer submit! !

!ClearScreenMultiWindowExample categoriesForMethods!
close!public! !
setup!public! !
update!public! !
!

