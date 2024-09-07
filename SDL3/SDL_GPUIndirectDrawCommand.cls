"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUIndirectDrawCommand
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_first_instance _OffsetOf_first_vertex _OffsetOf_num_instances _OffsetOf_num_vertices'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUIndirectDrawCommand guid: (GUID fromString: '{539f6da4-a478-4d05-873c-af2fe4c1a7e1}')!

SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_first_instance' value: 16rC!
SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_first_vertex' value: 16r8!
SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_num_instances' value: 16r4!
SDL_GPUIndirectDrawCommand addClassConstant: '_OffsetOf_num_vertices' value: 16r0!

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

num_instances
	"Answer the <Integer> value of the receiver's 'num_instances' field."

	^bytes dwordAtOffset: _OffsetOf_num_instances!

num_instances: anInteger
	"Set the receiver's 'num_instances' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_instances put: anInteger!

num_vertices
	"Answer the <Integer> value of the receiver's 'num_vertices' field."

	^bytes dwordAtOffset: _OffsetOf_num_vertices!

num_vertices: anInteger
	"Set the receiver's 'num_vertices' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_vertices put: anInteger! !

!SDL_GPUIndirectDrawCommand categoriesForMethods!
first_instance!**compiled accessors**!public! !
first_instance:!**compiled accessors**!public! !
first_vertex!**compiled accessors**!public! !
first_vertex:!**compiled accessors**!public! !
num_instances!**compiled accessors**!public! !
num_instances:!**compiled accessors**!public! !
num_vertices!**compiled accessors**!public! !
num_vertices:!**compiled accessors**!public! !
!

!SDL_GPUIndirectDrawCommand class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #num_vertices type: DWORDField new;
		defineField: #num_instances type: DWORDField new;
		defineField: #first_vertex type: DWORDField new;
		defineField: #first_instance type: DWORDField new!

getFieldNames
	^#(#num_vertices #num_instances #first_vertex #first_instance)! !

!SDL_GPUIndirectDrawCommand class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

