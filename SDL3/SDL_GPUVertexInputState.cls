"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexInputState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_vertex_attribute_count _OffsetOf_vertex_attributes _OffsetOf_vertex_binding _OffsetOf_vertex_binding_count'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexInputState guid: (GUID fromString: '{916e7b85-9ac0-465d-94f9-a336676d1a81}')!

SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_attribute_count' value: 16r24!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_attributes' value: 16r14!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_binding' value: 16r0!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_binding_count' value: 16r10!

SDL_GPUVertexInputState comment: ''!

!SDL_GPUVertexInputState categoriesForClass!External-Data-Structured! !

!SDL_GPUVertexInputState methodsFor!

vertex_attribute_count
	"Answer the <Integer> value of the receiver's 'vertex_attribute_count' field."

	^bytes dwordAtOffset: _OffsetOf_vertex_attribute_count!

vertex_attribute_count: anInteger
	"Set the receiver's 'vertex_attribute_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_vertex_attribute_count put: anInteger!

vertex_attributes
	"Answer the <SDL_GPUVertexAttribute> value of the receiver's 'vertex_attributes' field."

	^SDL_GPUVertexAttribute fromAddress: bytes yourAddress + _OffsetOf_vertex_attributes!

vertex_attributes: aSDL_GPUVertexAttribute
	"Set the receiver's 'vertex_attributes' field to the value of the argument, aSDL_GPUVertexAttribute"

	aSDL_GPUVertexAttribute
		replaceBytesOf: bytes
		from: ##(_OffsetOf_vertex_attributes + 1)
		to: ##(_OffsetOf_vertex_attributes + SDL_GPUVertexAttribute basicByteSize)
		startingAt: 1!

vertex_binding
	"Answer the <SDL_GPUVertexBinding> value of the receiver's 'vertex_binding' field."

	^SDL_GPUVertexBinding fromAddress: bytes yourAddress!

vertex_binding: aSDL_GPUVertexBinding
	"Set the receiver's 'vertex_binding' field to the value of the argument, aSDL_GPUVertexBinding"

	aSDL_GPUVertexBinding
		replaceBytesOf: bytes
		from: ##(_OffsetOf_vertex_binding + 1)
		to: ##(_OffsetOf_vertex_binding + SDL_GPUVertexBinding basicByteSize)
		startingAt: 1!

vertex_binding_count
	"Answer the <Integer> value of the receiver's 'vertex_binding_count' field."

	^bytes dwordAtOffset: _OffsetOf_vertex_binding_count!

vertex_binding_count: anInteger
	"Set the receiver's 'vertex_binding_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_vertex_binding_count put: anInteger! !

!SDL_GPUVertexInputState categoriesForMethods!
vertex_attribute_count!**compiled accessors**!public! !
vertex_attribute_count:!**compiled accessors**!public! !
vertex_attributes!**compiled accessors**!public! !
vertex_attributes:!**compiled accessors**!public! !
vertex_binding!**compiled accessors**!public! !
vertex_binding:!**compiled accessors**!public! !
vertex_binding_count!**compiled accessors**!public! !
vertex_binding_count:!**compiled accessors**!public! !
!

!SDL_GPUVertexInputState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #vertex_binding type: (StructureField type: SDL_GPUVertexBinding);
		defineField: #vertex_binding_count type: DWORDField new;
		defineField: #vertex_attributes type: (StructureField type: SDL_GPUVertexAttribute);
		defineField: #vertex_attribute_count type: DWORDField new!

getFieldNames
	^#(#vertex_binding #vertex_binding_count #vertex_attributes #vertex_attribute_count)! !

!SDL_GPUVertexInputState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

