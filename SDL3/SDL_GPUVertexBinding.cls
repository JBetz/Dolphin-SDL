"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexBinding
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_index _OffsetOf_input_rate _OffsetOf_instance_step_rate _OffsetOf_pitch'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexBinding guid: (GUID fromString: '{50670be2-842e-4aa8-ad73-3cfe1084962c}')!

SDL_GPUVertexBinding addClassConstant: '_OffsetOf_index' value: 16r0!
SDL_GPUVertexBinding addClassConstant: '_OffsetOf_input_rate' value: 16r8!
SDL_GPUVertexBinding addClassConstant: '_OffsetOf_instance_step_rate' value: 16rC!
SDL_GPUVertexBinding addClassConstant: '_OffsetOf_pitch' value: 16r4!

SDL_GPUVertexBinding comment: ''!

!SDL_GPUVertexBinding categoriesForClass!External-Data-Structured! !

!SDL_GPUVertexBinding methodsFor!

index
	"Answer the <Integer> value of the receiver's 'index' field."

	^bytes dwordAtOffset: _OffsetOf_index!

index: anInteger
	"Set the receiver's 'index' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_index put: anInteger!

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

	bytes dwordAtOffset: _OffsetOf_pitch put: anInteger! !

!SDL_GPUVertexBinding categoriesForMethods!
index!**compiled accessors**!public! !
index:!**compiled accessors**!public! !
input_rate!**compiled accessors**!public! !
input_rate:!**compiled accessors**!public! !
instance_step_rate!**compiled accessors**!public! !
instance_step_rate:!**compiled accessors**!public! !
pitch!**compiled accessors**!public! !
pitch:!**compiled accessors**!public! !
!

!SDL_GPUVertexBinding class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #index type: DWORDField new;
		defineField: #pitch type: DWORDField new;
		defineField: #input_rate type: SDWORDField new;
		defineField: #instance_step_rate type: DWORDField new!

getFieldNames
	^#(#index #pitch #input_rate #instance_step_rate)! !

!SDL_GPUVertexBinding class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

