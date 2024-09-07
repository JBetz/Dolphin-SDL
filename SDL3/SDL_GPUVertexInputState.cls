"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexInputState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_num_vertex_attributes _OffsetOf_num_vertex_bindings _OffsetOf_vertex_attributes _OffsetOf_vertex_bindings'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexInputState guid: (GUID fromString: '{916e7b85-9ac0-465d-94f9-a336676d1a81}')!

SDL_GPUVertexInputState addClassConstant: '_OffsetOf_num_vertex_attributes' value: 16rC!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_num_vertex_bindings' value: 16r4!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_attributes' value: 16r8!
SDL_GPUVertexInputState addClassConstant: '_OffsetOf_vertex_bindings' value: 16r0!

SDL_GPUVertexInputState comment: ''!

!SDL_GPUVertexInputState categoriesForClass!External-Data-Structured! !

!SDL_GPUVertexInputState methodsFor!

num_vertex_attributes
	"Answer the <Integer> value of the receiver's 'num_vertex_attributes' field."

	^bytes dwordAtOffset: _OffsetOf_num_vertex_attributes!

num_vertex_attributes: anInteger
	"Set the receiver's 'num_vertex_attributes' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_vertex_attributes put: anInteger!

num_vertex_bindings
	"Answer the <Integer> value of the receiver's 'num_vertex_bindings' field."

	^bytes dwordAtOffset: _OffsetOf_num_vertex_bindings!

num_vertex_bindings: anInteger
	"Set the receiver's 'num_vertex_bindings' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_vertex_bindings put: anInteger!

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

vertex_bindings
	"Answer the <StructureArray> value of the receiver's 'vertex_bindings' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_vertex_bindings)
		length: self num_vertex_bindings
		elementClass: SDL_GPUVertexBinding!

vertex_bindings: aStructureArray
	"Set the receiver's 'vertex_bindings' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_vertex_bindings put: aStructureArray yourAddress.
	self num_vertex_bindings: aStructureArray size! !

!SDL_GPUVertexInputState categoriesForMethods!
num_vertex_attributes!**compiled accessors**!public! !
num_vertex_attributes:!**compiled accessors**!public! !
num_vertex_bindings!**compiled accessors**!public! !
num_vertex_bindings:!**compiled accessors**!public! !
vertex_attributes!**compiled accessors**!public! !
vertex_attributes:!**compiled accessors**!public! !
vertex_bindings!**compiled accessors**!public! !
vertex_bindings:!**compiled accessors**!public! !
!

!SDL_GPUVertexInputState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #vertex_bindings
			type: (StructureArrayPointerField type: SDL_GPUVertexBinding lengthField: #num_vertex_bindings);
		defineField: #num_vertex_bindings type: DWORDField new;
		defineField: #vertex_attributes
			type: (StructureArrayPointerField type: SDL_GPUVertexAttribute lengthField: #num_vertex_attributes);
		defineField: #num_vertex_attributes type: DWORDField new!

getFieldNames
	^#(#vertex_bindings #num_vertex_bindings #vertex_attributes #num_vertex_attributes)! !

!SDL_GPUVertexInputState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

