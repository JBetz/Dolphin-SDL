"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUIndexedIndirectDrawCommand
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_first_instance _OffsetOf_index_count _OffsetOf_instance_count _OffsetOf_vertex_count _OffsetOf_vertex_offset'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUIndexedIndirectDrawCommand guid: (GUID fromString: '{4fbb5bc0-89d1-43d3-8c49-efc5a97bac6c}')!

SDL_GPUIndexedIndirectDrawCommand addClassConstant: '_OffsetOf_first_instance' value: 16r10!
SDL_GPUIndexedIndirectDrawCommand addClassConstant: '_OffsetOf_index_count' value: 16r0!
SDL_GPUIndexedIndirectDrawCommand addClassConstant: '_OffsetOf_instance_count' value: 16r8!
SDL_GPUIndexedIndirectDrawCommand addClassConstant: '_OffsetOf_vertex_count' value: 16r4!
SDL_GPUIndexedIndirectDrawCommand addClassConstant: '_OffsetOf_vertex_offset' value: 16rC!

SDL_GPUIndexedIndirectDrawCommand comment: ''!

!SDL_GPUIndexedIndirectDrawCommand categoriesForClass!External-Data-Structured! !

!SDL_GPUIndexedIndirectDrawCommand methodsFor!

first_instance
	"Answer the <Integer> value of the receiver's 'first_instance' field."

	^bytes dwordAtOffset: _OffsetOf_first_instance!

first_instance: anInteger
	"Set the receiver's 'first_instance' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_first_instance put: anInteger!

index_count
	"Answer the <Integer> value of the receiver's 'index_count' field."

	^bytes dwordAtOffset: _OffsetOf_index_count!

index_count: anInteger
	"Set the receiver's 'index_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_index_count put: anInteger!

instance_count
	"Answer the <Integer> value of the receiver's 'instance_count' field."

	^bytes dwordAtOffset: _OffsetOf_instance_count!

instance_count: anInteger
	"Set the receiver's 'instance_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_instance_count put: anInteger!

vertex_count
	"Answer the <Integer> value of the receiver's 'vertex_count' field."

	^bytes dwordAtOffset: _OffsetOf_vertex_count!

vertex_count: anInteger
	"Set the receiver's 'vertex_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_vertex_count put: anInteger!

vertex_offset
	"Answer the <Integer> value of the receiver's 'vertex_offset' field."

	^bytes sdwordAtOffset: _OffsetOf_vertex_offset!

vertex_offset: anInteger
	"Set the receiver's 'vertex_offset' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_vertex_offset put: anInteger! !

!SDL_GPUIndexedIndirectDrawCommand categoriesForMethods!
first_instance!**compiled accessors**!public! !
first_instance:!**compiled accessors**!public! !
index_count!**compiled accessors**!public! !
index_count:!**compiled accessors**!public! !
instance_count!**compiled accessors**!public! !
instance_count:!**compiled accessors**!public! !
vertex_count!**compiled accessors**!public! !
vertex_count:!**compiled accessors**!public! !
vertex_offset!**compiled accessors**!public! !
vertex_offset:!**compiled accessors**!public! !
!

!SDL_GPUIndexedIndirectDrawCommand class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #index_count type: DWORDField new;
		defineField: #vertex_count type: DWORDField new;
		defineField: #instance_count type: DWORDField new;
		defineField: #vertex_offset type: SDWORDField new;
		defineField: #first_instance type: DWORDField new!

getFieldNames
	^#(#index_count #vertex_count #instance_count #vertex_offset #first_instance)! !

!SDL_GPUIndexedIndirectDrawCommand class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

