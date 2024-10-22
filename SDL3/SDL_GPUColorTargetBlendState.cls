"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUColorTargetBlendState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_alpha_blend_op _OffsetOf_color_blend_op _OffsetOf_color_write_mask _OffsetOf_dst_alpha_blendfactor _OffsetOf_dst_color_blendfactor _OffsetOf_enable_blend _OffsetOf_enable_color_write_mask _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_src_alpha_blendfactor _OffsetOf_src_color_blendfactor'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUColorTargetBlendState guid: (GUID fromString: '{979172fd-65c4-4533-8b67-7f151b4840a7}')!

SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_alpha_blend_op' value: 16r14!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_color_blend_op' value: 16r8!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_color_write_mask' value: 16r18!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_dst_alpha_blendfactor' value: 16r10!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_dst_color_blendfactor' value: 16r4!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_enable_blend' value: 16r19!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_enable_color_write_mask' value: 16r1A!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_padding1' value: 16r1B!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_padding2' value: 16r1C!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_src_alpha_blendfactor' value: 16rC!
SDL_GPUColorTargetBlendState addClassConstant: '_OffsetOf_src_color_blendfactor' value: 16r0!

SDL_GPUColorTargetBlendState comment: ''!

!SDL_GPUColorTargetBlendState categoriesForClass!External-Data-Structured! !

!SDL_GPUColorTargetBlendState methodsFor!

alpha_blend_op
	"Answer the <Integer> value of the receiver's 'alpha_blend_op' field."

	^bytes sdwordAtOffset: _OffsetOf_alpha_blend_op!

alpha_blend_op: anInteger
	"Set the receiver's 'alpha_blend_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_alpha_blend_op put: anInteger!

color_blend_op
	"Answer the <Integer> value of the receiver's 'color_blend_op' field."

	^bytes sdwordAtOffset: _OffsetOf_color_blend_op!

color_blend_op: anInteger
	"Set the receiver's 'color_blend_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_color_blend_op put: anInteger!

color_write_mask
	"Answer the <Integer> value of the receiver's 'color_write_mask' field."

	^bytes byteAtOffset: _OffsetOf_color_write_mask!

color_write_mask: anInteger
	"Set the receiver's 'color_write_mask' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_color_write_mask put: anInteger!

dst_alpha_blendfactor
	"Answer the <Integer> value of the receiver's 'dst_alpha_blendfactor' field."

	^bytes sdwordAtOffset: _OffsetOf_dst_alpha_blendfactor!

dst_alpha_blendfactor: anInteger
	"Set the receiver's 'dst_alpha_blendfactor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_dst_alpha_blendfactor put: anInteger!

dst_color_blendfactor
	"Answer the <Integer> value of the receiver's 'dst_color_blendfactor' field."

	^bytes sdwordAtOffset: _OffsetOf_dst_color_blendfactor!

dst_color_blendfactor: anInteger
	"Set the receiver's 'dst_color_blendfactor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_dst_color_blendfactor put: anInteger!

enable_blend
	"Answer the <Boolean> value of the receiver's 'enable_blend' field."

	^(bytes byteAtOffset: _OffsetOf_enable_blend) asBoolean!

enable_blend: aBoolean
	"Set the receiver's 'enable_blend' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_blend put: aBoolean asParameter!

enable_color_write_mask
	"Answer the <Boolean> value of the receiver's 'enable_color_write_mask' field."

	^(bytes byteAtOffset: _OffsetOf_enable_color_write_mask) asBoolean!

enable_color_write_mask: aBoolean
	"Set the receiver's 'enable_color_write_mask' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_color_write_mask put: aBoolean asParameter!

src_alpha_blendfactor
	"Answer the <Integer> value of the receiver's 'src_alpha_blendfactor' field."

	^bytes sdwordAtOffset: _OffsetOf_src_alpha_blendfactor!

src_alpha_blendfactor: anInteger
	"Set the receiver's 'src_alpha_blendfactor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_src_alpha_blendfactor put: anInteger!

src_color_blendfactor
	"Answer the <Integer> value of the receiver's 'src_color_blendfactor' field."

	^bytes sdwordAtOffset: _OffsetOf_src_color_blendfactor!

src_color_blendfactor: anInteger
	"Set the receiver's 'src_color_blendfactor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_src_color_blendfactor put: anInteger! !

!SDL_GPUColorTargetBlendState categoriesForMethods!
alpha_blend_op!public! !
alpha_blend_op:!public! !
color_blend_op!public! !
color_blend_op:!public! !
color_write_mask!public! !
color_write_mask:!public! !
dst_alpha_blendfactor!public! !
dst_alpha_blendfactor:!public! !
dst_color_blendfactor!public! !
dst_color_blendfactor:!public! !
enable_blend!public! !
enable_blend:!public! !
enable_color_write_mask!public! !
enable_color_write_mask:!public! !
src_alpha_blendfactor!public! !
src_alpha_blendfactor:!public! !
src_color_blendfactor!public! !
src_color_blendfactor:!public! !
!

!SDL_GPUColorTargetBlendState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #src_color_blendfactor type: SDWORDField new;
		defineField: #dst_color_blendfactor type: SDWORDField new;
		defineField: #color_blend_op type: SDWORDField new;
		defineField: #src_alpha_blendfactor type: SDWORDField new;
		defineField: #dst_alpha_blendfactor type: SDWORDField new;
		defineField: #alpha_blend_op type: SDWORDField new;
		defineField: #color_write_mask type: BYTEField new;
		defineField: #enable_blend type: BOOLEANField new;
		defineField: #enable_color_write_mask type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller!

getFieldNames
	^#(#src_color_blendfactor #dst_color_blendfactor #color_blend_op #src_alpha_blendfactor #dst_alpha_blendfactor #alpha_blend_op #color_write_mask #enable_blend #enable_color_write_mask)! !

!SDL_GPUColorTargetBlendState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

