﻿"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUGraphicsPipelineCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_depth_stencil_state _OffsetOf_fragment_shader _OffsetOf_multisample_state _OffsetOf_primitive_type _OffsetOf_props _OffsetOf_rasterizer_state _OffsetOf_target_info _OffsetOf_vertex_input_state _OffsetOf_vertex_shader'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUGraphicsPipelineCreateInfo guid: (GUID fromString: '{8d1eb090-e3d3-4cef-9972-3595e38c3da3}')!

SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_depth_stencil_state' value: 16r44!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_fragment_shader' value: 16r4!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_multisample_state' value: 16r38!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_primitive_type' value: 16r18!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_props' value: 16r80!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_rasterizer_state' value: 16r1C!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_target_info' value: 16r70!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_vertex_input_state' value: 16r8!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_vertex_shader' value: 16r0!

SDL_GPUGraphicsPipelineCreateInfo comment: ''!

!SDL_GPUGraphicsPipelineCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUGraphicsPipelineCreateInfo methodsFor!

depth_stencil_state
	"Answer the <SDL_GPUDepthStencilState> value of the receiver's 'depth_stencil_state' field."

	^SDL_GPUDepthStencilState fromAddress: bytes yourAddress + _OffsetOf_depth_stencil_state!

depth_stencil_state: aSDL_GPUDepthStencilState
	"Set the receiver's 'depth_stencil_state' field to the value of the argument, aSDL_GPUDepthStencilState"

	aSDL_GPUDepthStencilState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_depth_stencil_state + 1)
		to: ##(_OffsetOf_depth_stencil_state + SDL_GPUDepthStencilState basicByteSize)
		startingAt: 1!

fragment_shader
	"Answer the <SDL_GPUShader> value of the receiver's 'fragment_shader' field."

	^SDL_GPUShader fromAddress: (bytes intPtrAtOffset: _OffsetOf_fragment_shader)!

fragment_shader: aSDL_GPUShader
	"Set the receiver's 'fragment_shader' field to the value of the argument, aSDL_GPUShader"

	bytes uintPtrAtOffset: _OffsetOf_fragment_shader put: aSDL_GPUShader yourAddress!

multisample_state
	"Answer the <SDL_GPUMultisampleState> value of the receiver's 'multisample_state' field."

	^SDL_GPUMultisampleState fromAddress: bytes yourAddress + _OffsetOf_multisample_state!

multisample_state: aSDL_GPUMultisampleState
	"Set the receiver's 'multisample_state' field to the value of the argument, aSDL_GPUMultisampleState"

	aSDL_GPUMultisampleState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_multisample_state + 1)
		to: ##(_OffsetOf_multisample_state + SDL_GPUMultisampleState basicByteSize)
		startingAt: 1!

primitive_type
	"Answer the <Integer> value of the receiver's 'primitive_type' field."

	^bytes sdwordAtOffset: _OffsetOf_primitive_type!

primitive_type: anInteger
	"Set the receiver's 'primitive_type' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_primitive_type put: anInteger!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger!

rasterizer_state
	"Answer the <SDL_GPURasterizerState> value of the receiver's 'rasterizer_state' field."

	^SDL_GPURasterizerState fromAddress: bytes yourAddress + _OffsetOf_rasterizer_state!

rasterizer_state: aSDL_GPURasterizerState
	"Set the receiver's 'rasterizer_state' field to the value of the argument, aSDL_GPURasterizerState"

	aSDL_GPURasterizerState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_rasterizer_state + 1)
		to: ##(_OffsetOf_rasterizer_state + SDL_GPURasterizerState basicByteSize)
		startingAt: 1!

target_info
	"Answer the <SDL_GPUGraphicsPipelineTargetInfo> value of the receiver's 'target_info' field."

	^SDL_GPUGraphicsPipelineTargetInfo fromAddress: bytes yourAddress + _OffsetOf_target_info!

target_info: aSDL_GPUGraphicsPipelineTargetInfo
	"Set the receiver's 'target_info' field to the value of the argument, aSDL_GPUGraphicsPipelineTargetInfo"

	aSDL_GPUGraphicsPipelineTargetInfo
		replaceBytesOf: bytes
		from: ##(_OffsetOf_target_info + 1)
		to: ##(_OffsetOf_target_info + SDL_GPUGraphicsPipelineTargetInfo basicByteSize)
		startingAt: 1!

vertex_input_state
	"Answer the <SDL_GPUVertexInputState> value of the receiver's 'vertex_input_state' field."

	^SDL_GPUVertexInputState fromAddress: bytes yourAddress + _OffsetOf_vertex_input_state!

vertex_input_state: aSDL_GPUVertexInputState
	"Set the receiver's 'vertex_input_state' field to the value of the argument, aSDL_GPUVertexInputState"

	aSDL_GPUVertexInputState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_vertex_input_state + 1)
		to: ##(_OffsetOf_vertex_input_state + SDL_GPUVertexInputState basicByteSize)
		startingAt: 1!

vertex_shader
	"Answer the <SDL_GPUShader> value of the receiver's 'vertex_shader' field."

	^SDL_GPUShader fromAddress: (bytes intPtrAtOffset: _OffsetOf_vertex_shader)!

vertex_shader: aSDL_GPUShader
	"Set the receiver's 'vertex_shader' field to the value of the argument, aSDL_GPUShader"

	bytes uintPtrAtOffset: _OffsetOf_vertex_shader put: aSDL_GPUShader yourAddress! !

!SDL_GPUGraphicsPipelineCreateInfo categoriesForMethods!
depth_stencil_state!**compiled accessors**!public! !
depth_stencil_state:!**compiled accessors**!public! !
fragment_shader!**compiled accessors**!public! !
fragment_shader:!**compiled accessors**!public! !
multisample_state!**compiled accessors**!public! !
multisample_state:!**compiled accessors**!public! !
primitive_type!**compiled accessors**!public! !
primitive_type:!**compiled accessors**!public! !
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
rasterizer_state!**compiled accessors**!public! !
rasterizer_state:!**compiled accessors**!public! !
target_info!**compiled accessors**!public! !
target_info:!**compiled accessors**!public! !
vertex_input_state!**compiled accessors**!public! !
vertex_input_state:!**compiled accessors**!public! !
vertex_shader!**compiled accessors**!public! !
vertex_shader:!**compiled accessors**!public! !
!

!SDL_GPUGraphicsPipelineCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #vertex_shader type: (PointerField type: SDL_GPUShader);
		defineField: #fragment_shader type: (PointerField type: SDL_GPUShader);
		defineField: #vertex_input_state type: (StructureField type: SDL_GPUVertexInputState);
		defineField: #primitive_type type: SDWORDField new;
		defineField: #rasterizer_state type: (StructureField type: SDL_GPURasterizerState);
		defineField: #multisample_state type: (StructureField type: SDL_GPUMultisampleState);
		defineField: #depth_stencil_state type: (StructureField type: SDL_GPUDepthStencilState);
		defineField: #target_info type: (StructureField type: SDL_GPUGraphicsPipelineTargetInfo);
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#vertex_shader #fragment_shader #vertex_input_state #primitive_type #rasterizer_state #multisample_state #depth_stencil_state #target_info #props)! !

!SDL_GPUGraphicsPipelineCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

