"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUIndirectDispatchCommand
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_group_count_x _OffsetOf_group_count_y _OffsetOf_group_count_z'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUIndirectDispatchCommand guid: (GUID fromString: '{1d453e51-4d1c-47c4-ba77-dadc58b2db8c}')!

SDL_GPUIndirectDispatchCommand addClassConstant: '_OffsetOf_group_count_x' value: 16r0!
SDL_GPUIndirectDispatchCommand addClassConstant: '_OffsetOf_group_count_y' value: 16r4!
SDL_GPUIndirectDispatchCommand addClassConstant: '_OffsetOf_group_count_z' value: 16r8!

SDL_GPUIndirectDispatchCommand comment: ''!

!SDL_GPUIndirectDispatchCommand categoriesForClass!External-Data-Structured! !

!SDL_GPUIndirectDispatchCommand methodsFor!

group_count_x
	"Answer the <Integer> value of the receiver's 'group_count_x' field."

	^bytes dwordAtOffset: _OffsetOf_group_count_x!

group_count_x: anInteger
	"Set the receiver's 'group_count_x' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_group_count_x put: anInteger!

group_count_y
	"Answer the <Integer> value of the receiver's 'group_count_y' field."

	^bytes dwordAtOffset: _OffsetOf_group_count_y!

group_count_y: anInteger
	"Set the receiver's 'group_count_y' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_group_count_y put: anInteger!

group_count_z
	"Answer the <Integer> value of the receiver's 'group_count_z' field."

	^bytes dwordAtOffset: _OffsetOf_group_count_z!

group_count_z: anInteger
	"Set the receiver's 'group_count_z' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_group_count_z put: anInteger! !

!SDL_GPUIndirectDispatchCommand categoriesForMethods!
group_count_x!**compiled accessors**!public! !
group_count_x:!**compiled accessors**!public! !
group_count_y!**compiled accessors**!public! !
group_count_y:!**compiled accessors**!public! !
group_count_z!**compiled accessors**!public! !
group_count_z:!**compiled accessors**!public! !
!

!SDL_GPUIndirectDispatchCommand class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #group_count_x type: DWORDField new;
		defineField: #group_count_y type: DWORDField new;
		defineField: #group_count_z type: DWORDField new!

getFieldNames
	^#(#group_count_x #group_count_y #group_count_z)! !

!SDL_GPUIndirectDispatchCommand class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

