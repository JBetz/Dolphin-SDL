"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_GPUComputePass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUComputePass guid: (GUID fromString: '{3cae5246-9856-48cc-b0d0-da4b0134326a}')!

SDL_GPUComputePass comment: ''!

!SDL_GPUComputePass categoriesForClass!External-Data-Structured! !

!SDL_GPUComputePass methodsFor!

bindComputePipeline: aComputePipeline
	self library bindGPUComputePipeline_computePass: self computePipeline: aComputePipeline!

dispatchComputeToX: x y: y z: z
	self library
		dispatchGPUCompute_computePass: self
		groupcountX: x
		groupcountY: y
		groupcountZ: z!

end
	self library endGPUComputePass_computePass: self! !

!SDL_GPUComputePass categoriesForMethods!
bindComputePipeline:!public! !
dispatchComputeToX:y:z:!public! !
end!public! !
!

