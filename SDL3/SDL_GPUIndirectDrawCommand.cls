"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUIndirectDrawCommand
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_first_instance _OffsetOf_first_vertex _OffsetOf_instance_count _OffsetOf_vertex_count'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUIndirectDrawCommand guid: (GUID fromString: '{539f6da4-a478-4d05-873c-af2fe4c1a7e1}')!

SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_first_instance' value: 16rC!
SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_first_vertex' value: 16r8!
SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_instance_count' value: 16r4!
SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_vertex_count' value: 16r0!

SDL_GPUIndirectDrawCommand comment: ''!

!SDL_GPUIndirectDrawCommand categoriesForClass!External-Data-Structured! !

!SDL_GPUIndirectDrawCommand methodsFor!

first_instance
	"Answer the <Integer> value of the receiver's 'first_instance' field."

	^bytes dwordAtOffset: _OffsetOf_first_instance!

first_instance: anInteger
	"Set the receiver's 'first_instance' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_first_instance put: anInteger!

first_vertex
	"Answer the <Integer> value of the receiver's 'first_vertex' field."

	^bytes dwordAtOffset: _OffsetOf_first_vertex!

first_vertex: anInteger
	"Set the receiver's 'first_vertex' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_first_vertex put: anInteger!

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

	bytes dwordAtOffset: _OffsetOf_vertex_count put: anInteger! !

!SDL_GPUIndirectDrawCommand categoriesForMethods!
first_instance!**compiled accessors**!public! !
first_instance:!**compiled accessors**!public! !
first_vertex!**compiled accessors**!public! !
first_vertex:!**compiled accessors**!public! !
instance_count!**compiled accessors**!public! !
instance_count:!**compiled accessors**!public! !
vertex_count!**compiled accessors**!public! !
vertex_count:!**compiled accessors**!public! !
!

!SDL_GPUIndirectDrawCommand class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #vertex_count type: DWORDField new;
		defineField: #instance_count type: DWORDField new;
		defineField: #first_vertex type: DWORDField new;
		defineField: #first_instance type: DWORDField new!

getFieldNames
	^#(#vertex_count #instance_count #first_vertex #first_instance)! !

!SDL_GPUIndirectDrawCommand class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

