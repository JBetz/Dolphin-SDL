"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexBufferDescription
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexBufferDescription guid: (GUID fromString: '{11d933e3-6109-4b34-be39-998b34cbfba6}')!

SDL_GPUVertexBufferDescription comment: ''!

!SDL_GPUVertexBufferDescription categoriesForClass!Unclassified! !

!SDL_GPUVertexBufferDescription class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #slot type: DWORDField new;
		defineField: #pitch type: DWORDField new;
		defineField: #input_rate type: SDWORDField new;
		defineField: #instance_step_rate type: DWORDField new!

getFieldNames
	^#()! !

!SDL_GPUVertexBufferDescription class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

