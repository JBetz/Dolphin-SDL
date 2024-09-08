"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_GPURenderPass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPURenderPass guid: (GUID fromString: '{c9aa6993-c352-4100-b0b9-81d6773b0bc8}')!

SDL_GPURenderPass comment: ''!

!SDL_GPURenderPass categoriesForClass!External-Data-Structured! !

!SDL_GPURenderPass methodsFor!

bind16BitIndexBuffer: aGPUBuffer
	self bindIndexBuffer: aGPUBuffer indexElementSize: SDL_GPU_INDEXELEMENTSIZE_16BIT!

bind32BitIndexBuffer: aGPUBuffer
	self bindIndexBuffer: aGPUBuffer indexElementSize: SDL_GPU_INDEXELEMENTSIZE_32BIT!

bindFragmentSamplers: anArrayOfGPUTextureSamplerBinding
	self library
		bindGPUFragmentSamplers_renderPass: self
		firstSlot: 0
		textureSamplerBindings: anArrayOfGPUTextureSamplerBinding
		numBindings: anArrayOfGPUTextureSamplerBinding size!

bindGraphicsPipeline: aGPUGraphicsPipeline
	self library bindGPUGraphicsPipeline_renderPass: self graphicsPipeline: aGPUGraphicsPipeline!

bindIndexBuffer: aGPUBuffer indexElementSize: anInteger
	self library
		bindGPUIndexBuffer_renderPass: self
		binding: (SDL_GPUBufferBinding new
				buffer: aGPUBuffer;
				offset: 0)
		indexElementSize: anInteger!

bindVertexBuffers: anArrayOfGPUBuffers
	| bufferBindings |
	bufferBindings := anArrayOfGPUBuffers collect: 
					[:each |
					SDL_GPUBufferBinding new
						buffer: each;
						offset: 0].
	self library
		bindGPUVertexBuffers_renderPass: self
		firstBinding: 0
		bindings: bufferBindings
		numBindings: bufferBindings size!

drawIndexedPrimitives: anInteger instanceCount: anotherInteger
	self library
		drawGPUIndexedPrimitives_renderPass: self
		numIndices: anInteger
		numInstances: anotherInteger
		firstIndex: 0
		vertexOffset: 0
		firstIntance: 0!

drawPrimitives: vertexCount instanceCount: instanceCount
	self library
		drawGPUPrimitives_renderPass: self
		numVertices: vertexCount
		numInstances: instanceCount
		firstVertex: 0
		firstInstance: 0!

end
	self library endGPURenderPass_renderPass: self! !

!SDL_GPURenderPass categoriesForMethods!
bind16BitIndexBuffer:!public! !
bind32BitIndexBuffer:!public! !
bindFragmentSamplers:!public! !
bindGraphicsPipeline:!public! !
bindIndexBuffer:indexElementSize:!public! !
bindVertexBuffers:!public! !
drawIndexedPrimitives:instanceCount:!public! !
drawPrimitives:instanceCount:!public! !
end!public! !
!

