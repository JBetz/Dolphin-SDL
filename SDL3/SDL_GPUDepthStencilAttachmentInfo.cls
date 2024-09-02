﻿"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUDepthStencilAttachmentInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cyle _OffsetOf_depth_stencil_clear_value _OffsetOf_load_op _OffsetOf_stencil_load_op _OffsetOf_stencil_store_op _OffsetOf_store_op _OffsetOf_texture'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUDepthStencilAttachmentInfo guid: (GUID fromString: '{8ba0b12c-e8f0-44b6-bca3-04793a379e8b}')!

SDL_GPUDepthStencilAttachmentInfo addClassConstant: '_OffsetOf_cyle' value: 16r14!
SDL_GPUDepthStencilAttachmentInfo addClassConstant: '_OffsetOf_depth_stencil_clear_value' value: 16r0!
SDL_GPUDepthStencilAttachmentInfo addClassConstant: '_OffsetOf_load_op' value: 16r4!
SDL_GPUDepthStencilAttachmentInfo addClassConstant: '_OffsetOf_stencil_load_op' value: 16rC!
SDL_GPUDepthStencilAttachmentInfo addClassConstant: '_OffsetOf_stencil_store_op' value: 16r10!
SDL_GPUDepthStencilAttachmentInfo addClassConstant: '_OffsetOf_store_op' value: 16r8!
SDL_GPUDepthStencilAttachmentInfo addClassConstant: '_OffsetOf_texture' value: 16r0!

SDL_GPUDepthStencilAttachmentInfo comment: ''!

!SDL_GPUDepthStencilAttachmentInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUDepthStencilAttachmentInfo methodsFor!

cyle
	"Answer the <Boolean> value of the receiver's 'cyle' field."

	^(bytes dwordAtOffset: _OffsetOf_cyle) asBoolean!

cyle: aBoolean
	"Set the receiver's 'cyle' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_cyle put: aBoolean asParameter!

depth_stencil_clear_value
	"Answer the <Integer> value of the receiver's 'depth_stencil_clear_value' field."

	^bytes dwordAtOffset: _OffsetOf_depth_stencil_clear_value!

depth_stencil_clear_value: anInteger
	"Set the receiver's 'depth_stencil_clear_value' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_depth_stencil_clear_value put: anInteger!

load_op
	"Answer the <Integer> value of the receiver's 'load_op' field."

	^bytes dwordAtOffset: _OffsetOf_load_op!

load_op: anInteger
	"Set the receiver's 'load_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_load_op put: anInteger!

stencil_load_op
	"Answer the <Integer> value of the receiver's 'stencil_load_op' field."

	^bytes dwordAtOffset: _OffsetOf_stencil_load_op!

stencil_load_op: anInteger
	"Set the receiver's 'stencil_load_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_stencil_load_op put: anInteger!

stencil_store_op
	"Answer the <Integer> value of the receiver's 'stencil_store_op' field."

	^bytes dwordAtOffset: _OffsetOf_stencil_store_op!

stencil_store_op: anInteger
	"Set the receiver's 'stencil_store_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_stencil_store_op put: anInteger!

store_op
	"Answer the <Integer> value of the receiver's 'store_op' field."

	^bytes dwordAtOffset: _OffsetOf_store_op!

store_op: anInteger
	"Set the receiver's 'store_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_store_op put: anInteger!

texture
	"Answer the <SDL_GPUTexture> value of the receiver's 'texture' field."

	^SDL_GPUTexture fromAddress: bytes yourAddress!

texture: aSDL_GPUTexture
	"Set the receiver's 'texture' field to the value of the argument, aSDL_GPUTexture"

	aSDL_GPUTexture
		replaceBytesOf: bytes
		from: ##(_OffsetOf_texture + 1)
		to: ##(_OffsetOf_texture + SDL_GPUTexture basicByteSize)
		startingAt: 1! !

!SDL_GPUDepthStencilAttachmentInfo categoriesForMethods!
cyle!**compiled accessors**!public! !
cyle:!**compiled accessors**!public! !
depth_stencil_clear_value!**compiled accessors**!public! !
depth_stencil_clear_value:!**compiled accessors**!public! !
load_op!**compiled accessors**!public! !
load_op:!**compiled accessors**!public! !
stencil_load_op!**compiled accessors**!public! !
stencil_load_op:!**compiled accessors**!public! !
stencil_store_op!**compiled accessors**!public! !
stencil_store_op:!**compiled accessors**!public! !
store_op!**compiled accessors**!public! !
store_op:!**compiled accessors**!public! !
texture!**compiled accessors**!public! !
texture:!**compiled accessors**!public! !
!

!SDL_GPUDepthStencilAttachmentInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (StructureField type: SDL_GPUTexture);
		defineField: #depth_stencil_clear_value type: DWORDField new;
		defineField: #load_op type: DWORDField new;
		defineField: #store_op type: DWORDField new;
		defineField: #stencil_load_op type: DWORDField new;
		defineField: #stencil_store_op type: DWORDField new;
		defineField: #cyle type: BOOLField new!

getFieldNames
	^#(#depth_stencil_clear_value #texture #load_op #store_op #stencil_load_op #stencil_store_op #cyle)! !

!SDL_GPUDepthStencilAttachmentInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!
