"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_ShaderCross_GraphicsShaderMetadata
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_inputs _OffsetOf_num_inputs _OffsetOf_num_outputs _OffsetOf_num_samplers _OffsetOf_num_storage_buffers _OffsetOf_num_storage_textures _OffsetOf_num_uniform_buffers _OffsetOf_outputs'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_ShaderCross_GraphicsShaderMetadata guid: (GUID fromString: '{47223e4d-2489-42f6-b0ae-9569f46fe903}')!

SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_inputs' value: 16r14!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_inputs' value: 16r10!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_outputs' value: 16r18!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_samplers' value: 16r0!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_storage_buffers' value: 16r8!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_storage_textures' value: 16r4!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_uniform_buffers' value: 16rC!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_outputs' value: 16r1C!

SDL_ShaderCross_GraphicsShaderMetadata comment: ''!

!SDL_ShaderCross_GraphicsShaderMetadata categoriesForClass!External-Data-Structured! !

!SDL_ShaderCross_GraphicsShaderMetadata methodsFor!

inputs
	"Answer the <StructureArray> value of the receiver's 'inputs' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_inputs)
		length: self num_inputs
		elementClass: SDL_ShaderCross_IOVarMetadata!

inputs: aStructureArray
	"Set the receiver's 'inputs' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_inputs put: aStructureArray yourAddress.
	self num_inputs: aStructureArray size!

num_inputs
	"Answer the <Integer> value of the receiver's 'num_inputs' field."

	^bytes dwordAtOffset: _OffsetOf_num_inputs!

num_inputs: anInteger
	"Set the receiver's 'num_inputs' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_inputs put: anInteger!

num_outputs
	"Answer the <Integer> value of the receiver's 'num_outputs' field."

	^bytes dwordAtOffset: _OffsetOf_num_outputs!

num_outputs: anInteger
	"Set the receiver's 'num_outputs' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_outputs put: anInteger!

num_samplers
	"Answer the <Integer> value of the receiver's 'num_samplers' field."

	^bytes dwordAtOffset: _OffsetOf_num_samplers!

num_samplers: anInteger
	"Set the receiver's 'num_samplers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_samplers put: anInteger!

num_storage_buffers
	"Answer the <Integer> value of the receiver's 'num_storage_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_storage_buffers!

num_storage_buffers: anInteger
	"Set the receiver's 'num_storage_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_storage_buffers put: anInteger!

num_storage_textures
	"Answer the <Integer> value of the receiver's 'num_storage_textures' field."

	^bytes dwordAtOffset: _OffsetOf_num_storage_textures!

num_storage_textures: anInteger
	"Set the receiver's 'num_storage_textures' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_storage_textures put: anInteger!

num_uniform_buffers
	"Answer the <Integer> value of the receiver's 'num_uniform_buffers' field."

	^bytes dwordAtOffset: _OffsetOf_num_uniform_buffers!

num_uniform_buffers: anInteger
	"Set the receiver's 'num_uniform_buffers' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_num_uniform_buffers put: anInteger!

outputs
	"Answer the <StructureArray> value of the receiver's 'outputs' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_outputs)
		length: self num_outputs
		elementClass: SDL_ShaderCross_IOVarMetadata!

outputs: aStructureArray
	"Set the receiver's 'outputs' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_outputs put: aStructureArray yourAddress.
	self num_outputs: aStructureArray size! !

!SDL_ShaderCross_GraphicsShaderMetadata categoriesForMethods!
inputs!**compiled accessors**!public! !
inputs:!**compiled accessors**!public! !
num_inputs!**compiled accessors**!public! !
num_inputs:!**compiled accessors**!public! !
num_outputs!**compiled accessors**!public! !
num_outputs:!**compiled accessors**!public! !
num_samplers!**compiled accessors**!public! !
num_samplers:!**compiled accessors**!public! !
num_storage_buffers!**compiled accessors**!public! !
num_storage_buffers:!**compiled accessors**!public! !
num_storage_textures!**compiled accessors**!public! !
num_storage_textures:!**compiled accessors**!public! !
num_uniform_buffers!**compiled accessors**!public! !
num_uniform_buffers:!**compiled accessors**!public! !
outputs!**compiled accessors**!public! !
outputs:!**compiled accessors**!public! !
!

!SDL_ShaderCross_GraphicsShaderMetadata class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #num_samplers type: DWORDField new;
		defineField: #num_storage_textures type: DWORDField new;
		defineField: #num_storage_buffers type: DWORDField new;
		defineField: #num_uniform_buffers type: DWORDField new;
		defineField: #num_inputs type: DWORDField new;
		defineField: #inputs
			type: (StructureArrayPointerField type: SDL_ShaderCross_IOVarMetadata lengthField: #num_inputs);
		defineField: #num_outputs type: DWORDField new;
		defineField: #outputs
			type: (StructureArrayPointerField type: SDL_ShaderCross_IOVarMetadata lengthField: #num_outputs)!

getFieldNames
	^#(#num_samplers #num_storage_textures #num_storage_buffers #num_uniform_buffers #num_inputs #inputs #num_outputs #outputs)! !

!SDL_ShaderCross_GraphicsShaderMetadata class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

