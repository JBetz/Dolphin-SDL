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

bind16BitIndexBuffer: aGPUBuffer offset: anInteger
	self bindIndexBuffer: aGPUBuffer indexElementSize: SDL_GPU_INDEXELEMENTSIZE_16BIT offset: anInteger!

bind32BitIndexBuffer: aGPUBuffer
	self bindIndexBuffer: aGPUBuffer indexElementSize: SDL_GPU_INDEXELEMENTSIZE_32BIT!

bind32BitIndexBuffer: aGPUBuffer offset: anInteger
	self bindIndexBuffer: aGPUBuffer indexElementSize: SDL_GPU_INDEXELEMENTSIZE_32BIT offset: anInteger!

bindFragmentSamplers: anArrayOfGPUTextureSamplerBinding
	self library
		bindGPUFragmentSamplers_renderPass: self
		firstSlot: 0
		textureSamplerBindings: (StructureArray withAll: anArrayOfGPUTextureSamplerBinding elementClass: SDL_GPUTextureSamplerBinding)
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

bindIndexBuffer: aGPUBuffer indexElementSize: anInteger offset: anotherInteger
	self library
		bindGPUIndexBuffer_renderPass: self
		binding: (SDL_GPUBufferBinding new
				buffer: aGPUBuffer;
				offset: anotherInteger)
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
		firstSlot: 0
		bindings: (StructureArray withAll: bufferBindings elementClass: SDL_GPUBufferBinding)
		numBindings: bufferBindings size!

bindVertexBuffers: anArrayOfGPUBuffers firstSlot: anInteger
	| bufferBindings |
	bufferBindings := anArrayOfGPUBuffers collect: 
					[:each |
					SDL_GPUBufferBinding new
						buffer: each;
						offset: 0].
	self library
		bindGPUVertexBuffers_renderPass: self
		firstSlot: anInteger
		bindings: (StructureArray withAll: bufferBindings elementClass: SDL_GPUBufferBinding)
		numBindings: bufferBindings size!

drawIndexedPrimitives: anInteger 
	self library
		drawGPUIndexedPrimitives_renderPass: self
		numIndices: anInteger
		numInstances: 1
		firstIndex: 0
		vertexOffset: 0
		firstIntance: 0!

drawIndexedPrimitives: indicesCount firstIndex: firstIndex vertexOffset: vertexOffset
	self library
		drawGPUIndexedPrimitives_renderPass: self
		numIndices: indicesCount
		numInstances: 1
		firstIndex: firstIndex
		vertexOffset: vertexOffset
		firstIntance: 0!

drawIndexedPrimitives: anInteger instanceCount: anotherInteger
	self library
		drawGPUIndexedPrimitives_renderPass: self
		numIndices: anInteger
		numInstances: anotherInteger
		firstIndex: 0
		vertexOffset: 0
		firstIntance: 0!

drawPrimitives: vertexCount
	self library
		drawGPUPrimitives_renderPass: self
		numVertices: vertexCount
		numInstances: 1
		firstVertex: 0
		firstInstance: 0!

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
bind16BitIndexBuffer:offset:!public! !
bind32BitIndexBuffer:!public! !
bind32BitIndexBuffer:offset:!public! !
bindFragmentSamplers:!public! !
bindGraphicsPipeline:!public! !
bindIndexBuffer:indexElementSize:!public! !
bindIndexBuffer:indexElementSize:offset:!public! !
bindVertexBuffers:!public! !
bindVertexBuffers:firstSlot:!public! !
drawIndexedPrimitives:!public! !
drawIndexedPrimitives:firstIndex:vertexOffset:!public! !
drawIndexedPrimitives:instanceCount:!public! !
drawPrimitives:!public! !
drawPrimitives:instanceCount:!public! !
end!public! !
!

