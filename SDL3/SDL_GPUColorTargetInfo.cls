"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUColorTargetInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clear_color _OffsetOf_cycle _OffsetOf_cycle_resolve_texture _OffsetOf_layer_or_depth_plane _OffsetOf_load_op _OffsetOf_mip_level _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_resolve_layer _OffsetOf_resolve_mip_level _OffsetOf_resolve_texture _OffsetOf_store_op _OffsetOf_texture'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUColorTargetInfo guid: (GUID fromString: '{a38f12eb-a7b8-4d29-88d8-e74e11db447e}')!

SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_clear_color' value: 16rC!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_cycle' value: 16r30!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_cycle_resolve_texture' value: 16r31!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_layer_or_depth_plane' value: 16r8!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_load_op' value: 16r1C!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_mip_level' value: 16r4!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_padding1' value: 16r32!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_padding2' value: 16r33!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_resolve_layer' value: 16r2C!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_resolve_mip_level' value: 16r28!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_resolve_texture' value: 16r24!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_store_op' value: 16r20!
SDL_GPUColorTargetInfo addClassConstant: '_OffsetOf_texture' value: 16r0!

SDL_GPUColorTargetInfo comment: ''!

!SDL_GPUColorTargetInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUColorTargetInfo methodsFor!

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

cycle
	"Answer the <Boolean> value of the receiver's 'cycle' field."

	^(bytes byteAtOffset: _OffsetOf_cycle) asBoolean!

cycle: aBoolean
	"Set the receiver's 'cycle' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_cycle put: aBoolean asParameter!

cycle_resolve_texture
	"Answer the <Boolean> value of the receiver's 'cycle_resolve_texture' field."

	^(bytes byteAtOffset: _OffsetOf_cycle_resolve_texture) asBoolean!

cycle_resolve_texture: aBoolean
	"Set the receiver's 'cycle_resolve_texture' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_cycle_resolve_texture put: aBoolean asParameter!

layer_or_depth_plane
	"Answer the <Integer> value of the receiver's 'layer_or_depth_plane' field."

	^bytes dwordAtOffset: _OffsetOf_layer_or_depth_plane!

layer_or_depth_plane: anInteger
	"Set the receiver's 'layer_or_depth_plane' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_layer_or_depth_plane put: anInteger!

load_op
	"Answer the <Integer> value of the receiver's 'load_op' field."

	^bytes sdwordAtOffset: _OffsetOf_load_op!

load_op: anInteger
	"Set the receiver's 'load_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_load_op put: anInteger!

mip_level
	"Answer the <Integer> value of the receiver's 'mip_level' field."

	^bytes dwordAtOffset: _OffsetOf_mip_level!

mip_level: anInteger
	"Set the receiver's 'mip_level' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_mip_level put: anInteger!

resolve_layer
	"Answer the <Integer> value of the receiver's 'resolve_layer' field."

	^bytes dwordAtOffset: _OffsetOf_resolve_layer!

resolve_layer: anInteger
	"Set the receiver's 'resolve_layer' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_resolve_layer put: anInteger!

resolve_mip_level
	"Answer the <Integer> value of the receiver's 'resolve_mip_level' field."

	^bytes dwordAtOffset: _OffsetOf_resolve_mip_level!

resolve_mip_level: anInteger
	"Set the receiver's 'resolve_mip_level' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_resolve_mip_level put: anInteger!

resolve_texture
	"Answer the <SDL_GPUTexture> value of the receiver's 'resolve_texture' field."

	^SDL_GPUTexture fromAddress: (bytes intPtrAtOffset: _OffsetOf_resolve_texture)!

resolve_texture: aSDL_GPUTexture
	"Set the receiver's 'resolve_texture' field to the value of the argument, aSDL_GPUTexture"

	bytes uintPtrAtOffset: _OffsetOf_resolve_texture put: aSDL_GPUTexture yourAddress!

store_op
	"Answer the <Integer> value of the receiver's 'store_op' field."

	^bytes sdwordAtOffset: _OffsetOf_store_op!

store_op: anInteger
	"Set the receiver's 'store_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_store_op put: anInteger!

texture
	"Answer the <SDL_GPUTexture> value of the receiver's 'texture' field."

	^SDL_GPUTexture fromAddress: (bytes intPtrAtOffset: _OffsetOf_texture)!

texture: aSDL_GPUTexture
	"Set the receiver's 'texture' field to the value of the argument, aSDL_GPUTexture"

	bytes uintPtrAtOffset: _OffsetOf_texture put: aSDL_GPUTexture yourAddress! !

!SDL_GPUColorTargetInfo categoriesForMethods!
clear_color!**compiled accessors**!public! !
clear_color:!**compiled accessors**!public! !
cycle!**compiled accessors**!public! !
cycle:!**compiled accessors**!public! !
cycle_resolve_texture!**compiled accessors**!public! !
cycle_resolve_texture:!**compiled accessors**!public! !
layer_or_depth_plane!**compiled accessors**!public! !
layer_or_depth_plane:!**compiled accessors**!public! !
load_op!**compiled accessors**!public! !
load_op:!**compiled accessors**!public! !
mip_level!**compiled accessors**!public! !
mip_level:!**compiled accessors**!public! !
resolve_layer!**compiled accessors**!public! !
resolve_layer:!**compiled accessors**!public! !
resolve_mip_level!**compiled accessors**!public! !
resolve_mip_level:!**compiled accessors**!public! !
resolve_texture!**compiled accessors**!public! !
resolve_texture:!**compiled accessors**!public! !
store_op!**compiled accessors**!public! !
store_op:!**compiled accessors**!public! !
texture!**compiled accessors**!public! !
texture:!**compiled accessors**!public! !
!

!SDL_GPUColorTargetInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (PointerField type: SDL_GPUTexture);
		defineField: #mip_level type: DWORDField new;
		defineField: #layer_or_depth_plane type: DWORDField new;
		defineField: #clear_color type: (StructureField type: SDL_FColor);
		defineField: #load_op type: SDWORDField new;
		defineField: #store_op type: SDWORDField new;
		defineField: #resolve_texture type: (PointerField type: SDL_GPUTexture);
		defineField: #resolve_mip_level type: DWORDField new;
		defineField: #resolve_layer type: DWORDField new;
		defineField: #cycle type: BOOLEANField new;
		defineField: #cycle_resolve_texture type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller!

getFieldNames
	^#(#texture #mip_level #layer_or_depth_plane #clear_color #load_op #store_op #resolve_texture #resolve_mip_level #resolve_layer #cycle #cycle_resolve_texture)! !

!SDL_GPUColorTargetInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

