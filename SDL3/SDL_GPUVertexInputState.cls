"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexInputState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_num_vertex_attributes _OffsetOf_num_vertex_buffers _OffsetOf_vertex_attributes _OffsetOf_vertex_buffer_descriptions'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexInputState guid: (GUID fromString: '{916e7b85-9ac0-465d-94f9-a336676d1a81}')!

SDL_GPUVertexInputState addClassConstant: '_OffsetOf_num_vertex_attributes' value: 16rC!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_attributes' value: 16r8!

SDL_GPUVertexInputState comment: ''!

!SDL_GPUVertexInputState categoriesForClass!External-Data-Structured! !

!SDL_GPUVertexInputState methodsFor!

num_vertex_attributes
	"Answer the <Integer> value of the receiver's 'num_vertex_attributes' field."

	^bytes dwordAtOffset: _OffsetOf_num_vertex_attributes!

num_vertex_attributes: anInteger
	"Set the receiver's 'num_vertex_attributes' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_vertex_attributes put: anInteger!

num_vertex_buffers
	"Answer the <Integer> value of the receiver's 'num_vertex_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_vertex_buffers!

num_vertex_buffers: anInteger
	"Set the receiver's 'num_vertex_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_vertex_buffers put: anInteger!

vertex_attributes
	"Answer the <StructureArray> value of the receiver's 'vertex_attributes' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_vertex_attributes)
		length: self num_vertex_attributes
		elementClass: SDL_GPUVertexAttribute!

vertex_attributes: aStructureArray
	"Set the receiver's 'vertex_attributes' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_vertex_attributes put: aStructureArray yourAddress.
	self num_vertex_attributes: aStructureArray size!

vertex_buffer_descriptions
	"Answer the <StructureArray> value of the receiver's 'vertex_buffer_descriptions' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_vertex_buffer_descriptions)
		length: self num_vertex_buffers
		elementClass: SDL_GPUVertexBufferDescription!

vertex_buffer_descriptions: aStructureArray
	"Set the receiver's 'vertex_buffer_descriptions' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_vertex_buffer_descriptions put: aStructureArray yourAddress.
	self num_vertex_buffers: aStructureArray size! !

!SDL_GPUVertexInputState categoriesForMethods!
num_vertex_attributes!public! !
num_vertex_attributes:!public! !
num_vertex_buffers!public! !
num_vertex_buffers:!public! !
vertex_attributes!public! !
vertex_attributes:!public! !
vertex_buffer_descriptions!public! !
vertex_buffer_descriptions:!public! !
!

!SDL_GPUVertexInputState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #vertex_buffer_descriptions
			type: (StructureArrayPointerField type: SDL_GPUVertexBufferDescription
					lengthField: #num_vertex_buffers);
		defineField: #num_vertex_buffers type: DWORDField new;
		defineField: #vertex_attributes
			type: (StructureArrayPointerField type: SDL_GPUVertexAttribute lengthField: #num_vertex_attributes);
		defineField: #num_vertex_attributes type: DWORDField new!

getFieldNames
	^#(#vertex_bindings #num_vertex_bindings #vertex_attributes #num_vertex_attributes)! !

!SDL_GPUVertexInputState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

