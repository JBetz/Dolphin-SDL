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

bindGraphicsPipeline: aGPUGraphicsPipeline
	self library bindGPUGraphicsPipeline_renderPass: self graphicsPipeline: aGPUGraphicsPipeline!

drawPrimitives: vertexCount instanceCount: instanceCount
	self library
		drawGPUPrimitives_renderPass: self
		vertexCount: vertexCount
		instanceCount: instanceCount
		firstVertex: 0
		firstInstance: 0!

end
	self library endGPURenderPass_renderPass: self! !

!SDL_GPURenderPass categoriesForMethods!
bindGraphicsPipeline:!public! !
drawPrimitives:instanceCount:!public! !
end!public! !
!

