"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_ShaderCross_GraphicsShaderMetadata
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_num_samplers _OffsetOf_num_storage_buffers _OffsetOf_num_storage_textures _OffsetOf_num_uniform_buffers _OffsetOf_props'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_ShaderCross_GraphicsShaderMetadata guid: (GUID fromString: '{47223e4d-2489-42f6-b0ae-9569f46fe903}')!

SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_samplers' value: 16r0!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_storage_buffers' value: 16r8!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_storage_textures' value: 16r4!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_num_uniform_buffers' value: 16rC!
SDL_ShaderCross_GraphicsShaderMetadata addClassConstant: '_OffsetOf_props' value: 16r10!

SDL_ShaderCross_GraphicsShaderMetadata comment: ''!

!SDL_ShaderCross_GraphicsShaderMetadata categoriesForClass!External-Data-Structured! !

!SDL_ShaderCross_GraphicsShaderMetadata methodsFor!

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

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger! !

!SDL_ShaderCross_GraphicsShaderMetadata categoriesForMethods!
num_samplers!**compiled accessors**!public! !
num_samplers:!**compiled accessors**!public! !
num_storage_buffers!**compiled accessors**!public! !
num_storage_buffers:!**compiled accessors**!public! !
num_storage_textures!**compiled accessors**!public! !
num_storage_textures:!**compiled accessors**!public! !
num_uniform_buffers!**compiled accessors**!public! !
num_uniform_buffers:!**compiled accessors**!public! !
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
!

!SDL_ShaderCross_GraphicsShaderMetadata class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #num_samplers type: DWORDField new;
		defineField: #num_storage_textures type: DWORDField new;
		defineField: #num_storage_buffers type: DWORDField new;
		defineField: #num_uniform_buffers type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#num_samplers #num_storage_textures #num_storage_buffers #num_uniform_buffers #props)! !

!SDL_ShaderCross_GraphicsShaderMetadata class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

