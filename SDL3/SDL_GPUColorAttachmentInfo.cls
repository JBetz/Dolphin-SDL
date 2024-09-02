﻿"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUColorAttachmentInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clear_color _OffsetOf_cyle _OffsetOf_layer_or_depth_plane _OffsetOf_load_op _OffsetOf_mip_level _OffsetOf_store_op _OffsetOf_texture'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUColorAttachmentInfo guid: (GUID fromString: '{a38f12eb-a7b8-4d29-88d8-e74e11db447e}')!

SDL_GPUColorAttachmentInfo addClassConstant: '_OffsetOf_clear_color' value: 16r8!
SDL_GPUColorAttachmentInfo addClassConstant: '_OffsetOf_cyle' value: 16r20!
SDL_GPUColorAttachmentInfo addClassConstant: '_OffsetOf_layer_or_depth_plane' value: 16r4!
SDL_GPUColorAttachmentInfo addClassConstant: '_OffsetOf_load_op' value: 16r18!
SDL_GPUColorAttachmentInfo addClassConstant: '_OffsetOf_mip_level' value: 16r0!
SDL_GPUColorAttachmentInfo addClassConstant: '_OffsetOf_store_op' value: 16r1C!
SDL_GPUColorAttachmentInfo addClassConstant: '_OffsetOf_texture' value: 16r0!

SDL_GPUColorAttachmentInfo comment: ''!

!SDL_GPUColorAttachmentInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUColorAttachmentInfo methodsFor!

clear_color
	"Answer the <SDL_FColor> value of the receiver's 'clear_color' field."

	^SDL_FColor fromAddress: bytes yourAddress + _OffsetOf_clear_color!

clear_color: aSDL_FColor
	"Set the receiver's 'clear_color' field to the value of the argument, aSDL_FColor"

	aSDL_FColor
		replaceBytesOf: bytes
		from: ##(_OffsetOf_clear_color + 1)
		to: ##(_OffsetOf_clear_color + SDL_FColor basicByteSize)
		startingAt: 1!

cyle
	"Answer the <Boolean> value of the receiver's 'cyle' field."

	^(bytes dwordAtOffset: _OffsetOf_cyle) asBoolean!

cyle: aBoolean
	"Set the receiver's 'cyle' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_cyle put: aBoolean asParameter!

layer_or_depth_plane
	"Answer the <Integer> value of the receiver's 'layer_or_depth_plane' field."

	^bytes dwordAtOffset: _OffsetOf_layer_or_depth_plane!

layer_or_depth_plane: anInteger
	"Set the receiver's 'layer_or_depth_plane' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_layer_or_depth_plane put: anInteger!

load_op
	"Answer the <Integer> value of the receiver's 'load_op' field."

	^bytes dwordAtOffset: _OffsetOf_load_op!

load_op: anInteger
	"Set the receiver's 'load_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_load_op put: anInteger!

mip_level
	"Answer the <Integer> value of the receiver's 'mip_level' field."

	^bytes dwordAtOffset: _OffsetOf_mip_level!

mip_level: anInteger
	"Set the receiver's 'mip_level' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_mip_level put: anInteger!

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

!SDL_GPUColorAttachmentInfo categoriesForMethods!
clear_color!**compiled accessors**!public! !
clear_color:!**compiled accessors**!public! !
cyle!**compiled accessors**!public! !
cyle:!**compiled accessors**!public! !
layer_or_depth_plane!**compiled accessors**!public! !
layer_or_depth_plane:!**compiled accessors**!public! !
load_op!**compiled accessors**!public! !
load_op:!**compiled accessors**!public! !
mip_level!**compiled accessors**!public! !
mip_level:!**compiled accessors**!public! !
store_op!**compiled accessors**!public! !
store_op:!**compiled accessors**!public! !
texture!**compiled accessors**!public! !
texture:!**compiled accessors**!public! !
!

!SDL_GPUColorAttachmentInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (StructureField type: SDL_GPUTexture);
		defineField: #mip_level type: DWORDField new;
		defineField: #layer_or_depth_plane type: DWORDField new;
		defineField: #clear_color type: (StructureField type: SDL_FColor);
		defineField: #load_op type: DWORDField new;
		defineField: #store_op type: DWORDField new;
		defineField: #cyle type: BOOLField new!

getFieldNames
	^#(#mip_level #texture #layer_or_depth_plane #clear_color #load_op #store_op #cyle)! !

!SDL_GPUColorAttachmentInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!
