"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexBufferDescription
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_input_rate _OffsetOf_instance_step_rate _OffsetOf_pitch _OffsetOf_slot'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexBufferDescription guid: (GUID fromString: '{11d933e3-6109-4b34-be39-998b34cbfba6}')!

SDL_GPUVertexBufferDescription addClassConstant: '_OffsetOf_input_rate' value: 16r8!
SDL_GPUVertexBufferDescription addClassConstant: '_OffsetOf_instance_step_rate' value: 16rC!
SDL_GPUVertexBufferDescription addClassConstant: '_OffsetOf_pitch' value: 16r4!
SDL_GPUVertexBufferDescription addClassConstant: '_OffsetOf_slot' value: 16r0!

SDL_GPUVertexBufferDescription comment: ''!

!SDL_GPUVertexBufferDescription categoriesForClass!Unclassified! !

!SDL_GPUVertexBufferDescription methodsFor!

input_rate
	"Answer the <Integer> value of the receiver's 'input_rate' field."

	^bytes sdwordAtOffset: _OffsetOf_input_rate!

input_rate: anInteger
	"Set the receiver's 'input_rate' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_input_rate put: anInteger!

instance_step_rate
	"Answer the <Integer> value of the receiver's 'instance_step_rate' field."

	^bytes dwordAtOffset: _OffsetOf_instance_step_rate!

instance_step_rate: anInteger
	"Set the receiver's 'instance_step_rate' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_instance_step_rate put: anInteger!

pitch
	"Answer the <Integer> value of the receiver's 'pitch' field."

	^bytes dwordAtOffset: _OffsetOf_pitch!

pitch: anInteger
	"Set the receiver's 'pitch' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_pitch put: anInteger!

slot
	"Answer the <Integer> value of the receiver's 'slot' field."

	^bytes dwordAtOffset: _OffsetOf_slot!

slot: anInteger
	"Set the receiver's 'slot' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_slot put: anInteger! !

!SDL_GPUVertexBufferDescription categoriesForMethods!
input_rate!**compiled accessors**!public! !
input_rate:!**compiled accessors**!public! !
instance_step_rate!**compiled accessors**!public! !
instance_step_rate:!**compiled accessors**!public! !
pitch!**compiled accessors**!public! !
pitch:!**compiled accessors**!public! !
slot!**compiled accessors**!public! !
slot:!**compiled accessors**!public! !
!

!SDL_GPUVertexBufferDescription class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #slot type: DWORDField new;
		defineField: #pitch type: DWORDField new;
		defineField: #input_rate type: SDWORDField new;
		defineField: #instance_step_rate type: DWORDField new!

getFieldNames
	^#(#slot #pitch #input_rate #instance_step_rate)! !

!SDL_GPUVertexBufferDescription class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

