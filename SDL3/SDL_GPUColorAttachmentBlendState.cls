"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUColorAttachmentBlendState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_alpha_blend_op _OffsetOf_blend_enable _OffsetOf_color_blend_op _OffsetOf_color_write_mask _OffsetOf_dst_alpha_blend_factor _OffsetOf_dst_color_blend_factor _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_src_alpha_blend_factor _OffsetOf_src_color_blend_factor'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUColorAttachmentBlendState guid: (GUID fromString: '{979172fd-65c4-4533-8b67-7f151b4840a7}')!

SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_alpha_blend_op' value: 16r18!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_blend_enable' value: 16r0!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_color_blend_op' value: 16rC!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_color_write_mask' value: 16r1C!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_dst_alpha_blend_factor' value: 16r14!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_dst_color_blend_factor' value: 16r8!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_padding1' value: 16r1!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_padding2' value: 16r2!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_padding3' value: 16r3!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_src_alpha_blend_factor' value: 16r10!
SDL_GPUColorAttachmentBlendState addClassConstant: '_OffsetOf_src_color_blend_factor' value: 16r4!

SDL_GPUColorAttachmentBlendState comment: ''!

!SDL_GPUColorAttachmentBlendState categoriesForClass!External-Data-Structured! !

!SDL_GPUColorAttachmentBlendState methodsFor!

alpha_blend_op
	"Answer the <Integer> value of the receiver's 'alpha_blend_op' field."

	^bytes sdwordAtOffset: _OffsetOf_alpha_blend_op!

alpha_blend_op: anInteger
	"Set the receiver's 'alpha_blend_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_alpha_blend_op put: anInteger!

blend_enable
	"Answer the <Boolean> value of the receiver's 'blend_enable' field."

	^(bytes byteAtOffset: _OffsetOf_blend_enable) asBoolean!

blend_enable: aBoolean
	"Set the receiver's 'blend_enable' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_blend_enable put: aBoolean asParameter!

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

dst_alpha_blend_factor
	"Answer the <Integer> value of the receiver's 'dst_alpha_blend_factor' field."

	^bytes sdwordAtOffset: _OffsetOf_dst_alpha_blend_factor!

dst_alpha_blend_factor: anInteger
	"Set the receiver's 'dst_alpha_blend_factor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_dst_alpha_blend_factor put: anInteger!

dst_color_blend_factor
	"Answer the <Integer> value of the receiver's 'dst_color_blend_factor' field."

	^bytes sdwordAtOffset: _OffsetOf_dst_color_blend_factor!

dst_color_blend_factor: anInteger
	"Set the receiver's 'dst_color_blend_factor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_dst_color_blend_factor put: anInteger!

src_alpha_blend_factor
	"Answer the <Integer> value of the receiver's 'src_alpha_blend_factor' field."

	^bytes sdwordAtOffset: _OffsetOf_src_alpha_blend_factor!

src_alpha_blend_factor: anInteger
	"Set the receiver's 'src_alpha_blend_factor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_src_alpha_blend_factor put: anInteger!

src_color_blend_factor
	"Answer the <Integer> value of the receiver's 'src_color_blend_factor' field."

	^bytes sdwordAtOffset: _OffsetOf_src_color_blend_factor!

src_color_blend_factor: anInteger
	"Set the receiver's 'src_color_blend_factor' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_src_color_blend_factor put: anInteger! !

!SDL_GPUColorAttachmentBlendState categoriesForMethods!
alpha_blend_op!**compiled accessors**!public! !
alpha_blend_op:!**compiled accessors**!public! !
blend_enable!**compiled accessors**!public! !
blend_enable:!**compiled accessors**!public! !
color_blend_op!**compiled accessors**!public! !
color_blend_op:!**compiled accessors**!public! !
color_write_mask!**compiled accessors**!public! !
color_write_mask:!**compiled accessors**!public! !
dst_alpha_blend_factor!**compiled accessors**!public! !
dst_alpha_blend_factor:!**compiled accessors**!public! !
dst_color_blend_factor!**compiled accessors**!public! !
dst_color_blend_factor:!**compiled accessors**!public! !
src_alpha_blend_factor!**compiled accessors**!public! !
src_alpha_blend_factor:!**compiled accessors**!public! !
src_color_blend_factor!**compiled accessors**!public! !
src_color_blend_factor:!**compiled accessors**!public! !
!

!SDL_GPUColorAttachmentBlendState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #blend_enable type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller;
		defineField: #src_color_blend_factor type: SDWORDField new;
		defineField: #dst_color_blend_factor type: SDWORDField new;
		defineField: #color_blend_op type: SDWORDField new;
		defineField: #src_alpha_blend_factor type: SDWORDField new;
		defineField: #dst_alpha_blend_factor type: SDWORDField new;
		defineField: #alpha_blend_op type: SDWORDField new;
		defineField: #color_write_mask type: BYTEField new!

getFieldNames
	^#(#blend_enable #src_color_blend_factor #dst_color_blend_factor #color_blend_op #src_alpha_blend_factor #dst_alpha_blend_factor #alpha_blend_op #color_write_mask)! !

!SDL_GPUColorAttachmentBlendState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

