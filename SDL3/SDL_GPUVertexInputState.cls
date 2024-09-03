"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexInputState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_vertex_attribute_count _OffsetOf_vertex_attributes _OffsetOf_vertex_binding_count _OffsetOf_vertex_bindings'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexInputState guid: (GUID fromString: '{916e7b85-9ac0-465d-94f9-a336676d1a81}')!

SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_attribute_count' value: 16rC!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_attributes' value: 16r8!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_binding_count' value: 16r4!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_bindings' value: 16r0!

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
	"Answer the <StructureArray> value of the receiver's 'vertex_attributes' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_vertex_attributes)
		length: self vertex_attribute_count
		elementClass: SDL_GPUVertexAttribute!

vertex_attributes: aStructureArray
	"Set the receiver's 'vertex_attributes' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_vertex_attributes put: aStructureArray yourAddress.
	self vertex_attribute_count: aStructureArray size!

vertex_binding_count
	"Answer the <Integer> value of the receiver's 'vertex_binding_count' field."

	^bytes dwordAtOffset: _OffsetOf_vertex_binding_count!

vertex_binding_count: anInteger
	"Set the receiver's 'vertex_binding_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_vertex_binding_count put: anInteger!

vertex_bindings
	"Answer the <StructureArray> value of the receiver's 'vertex_bindings' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_vertex_bindings)
		length: self vertex_binding_count
		elementClass: SDL_GPUVertexBinding!

vertex_bindings: aStructureArray
	"Set the receiver's 'vertex_bindings' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_vertex_bindings put: aStructureArray yourAddress.
	self vertex_binding_count: aStructureArray size! !

!SDL_GPUVertexInputState categoriesForMethods!
vertex_attribute_count!**compiled accessors**!public! !
vertex_attribute_count:!**compiled accessors**!public! !
vertex_attributes!**compiled accessors**!public! !
vertex_attributes:!**compiled accessors**!public! !
vertex_binding_count!**compiled accessors**!public! !
vertex_binding_count:!**compiled accessors**!public! !
vertex_bindings!**compiled accessors**!public! !
vertex_bindings:!**compiled accessors**!public! !
!

!SDL_GPUVertexInputState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #vertex_bindings type: (StructureArrayPointerField type: SDL_GPUVertexBinding lengthField: #vertex_binding_count);
		defineField: #vertex_binding_count type: DWORDField new;
		defineField: #vertex_attributes type: (StructureArrayPointerField type: SDL_GPUVertexAttribute lengthField: #vertex_attribute_count);
		defineField: #vertex_attribute_count type: DWORDField new!

getFieldNames
	^#(#vertex_bindings #vertex_binding_count #vertex_attributes #vertex_attribute_count)! !

!SDL_GPUVertexInputState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

