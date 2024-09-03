"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUGraphicsPipelineCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_attachment_info _OffsetOf_blend_constants _OffsetOf_depth_stencil_state _OffsetOf_fragment_shader _OffsetOf_multisample_state _OffsetOf_primitive_type _OffsetOf_props _OffsetOf_rasterizer_state _OffsetOf_vertex_input_state _OffsetOf_vertex_shader'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUGraphicsPipelineCreateInfo guid: (GUID fromString: '{8d1eb090-e3d3-4cef-9972-3595e38c3da3}')!

SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_attachment_info' value: 16r74!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_blend_constants' value: 16r84!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_depth_stencil_state' value: 16r40!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_fragment_shader' value: 16r4!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_multisample_state' value: 16r38!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_primitive_type' value: 16r18!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_props' value: 16r94!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_rasterizer_state' value: 16r1C!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_vertex_input_state' value: 16r8!
SDL_GPUGraphicsPipelineCreateInfo addClassConstant: '_OffsetOf_vertex_shader' value: 16r0!

SDL_GPUGraphicsPipelineCreateInfo comment: ''!

!SDL_GPUGraphicsPipelineCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUGraphicsPipelineCreateInfo methodsFor!

attachment_info
	"Answer the <SDL_GPUGraphicsPipelineAttachmentInfo> value of the receiver's 'attachment_info' field."

	^SDL_GPUGraphicsPipelineAttachmentInfo fromAddress: bytes yourAddress + _OffsetOf_attachment_info!

attachment_info: aSDL_GPUGraphicsPipelineAttachmentInfo
	"Set the receiver's 'attachment_info' field to the value of the argument, aSDL_GPUGraphicsPipelineAttachmentInfo"

	aSDL_GPUGraphicsPipelineAttachmentInfo
		replaceBytesOf: bytes
		from: ##(_OffsetOf_attachment_info + 1)
		to: ##(_OffsetOf_attachment_info + SDL_GPUGraphicsPipelineAttachmentInfo basicByteSize)
		startingAt: 1!

blend_constants
	"Answer the <FLOATArray> value of the receiver's 'blend_constants' field."

	^FLOATArray fromAddress: bytes yourAddress + _OffsetOf_blend_constants length: 4!

blend_constants: aFLOATArray
	"Set the receiver's 'blend_constants' field to the value of the argument, aFLOATArray"

	| size |
	size := aFLOATArray byteSize min: ##(4 * FLOATArray elementSize).
	aFLOATArray
		replaceBytesOf: bytes
		from: ##(_OffsetOf_blend_constants + 1)
		to: _OffsetOf_blend_constants + size
		startingAt: 1!

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
attachment_info!**compiled accessors**!public! !
attachment_info:!**compiled accessors**!public! !
blend_constants!**compiled accessors**!public! !
blend_constants:!**compiled accessors**!public! !
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
		defineField: #attachment_info type: (StructureField type: SDL_GPUGraphicsPipelineAttachmentInfo);
		defineField: #blend_constants type: (ArrayField type: FLOATArray length: 4);
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#vertex_shader #fragment_shader #vertex_input_state #primitive_type #rasterizer_state #multisample_state #depth_stencil_state #attachment_info #blend_constants #props)! !

!SDL_GPUGraphicsPipelineCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

