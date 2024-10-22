"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPURasterizerState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cull_mode _OffsetOf_depth_bias_clamp _OffsetOf_depth_bias_constant_factor _OffsetOf_depth_bias_slope_factor _OffsetOf_enable_depth_bias _OffsetOf_enable_depth_clip _OffsetOf_fill_mode _OffsetOf_front_face _OffsetOf_padding1 _OffsetOf_padding2'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPURasterizerState guid: (GUID fromString: '{112ba98a-9f41-406a-809a-d7c4bd444202}')!

SDL_GPURasterizerState addClassConstant: '_OffsetOf_cull_mode' value: 16r4!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_depth_bias_clamp' value: 16r10!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_depth_bias_constant_factor' value: 16rC!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_depth_bias_slope_factor' value: 16r14!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_enable_depth_bias' value: 16r18!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_enable_depth_clip' value: 16r19!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_fill_mode' value: 16r0!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_front_face' value: 16r8!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_padding1' value: 16r1A!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_padding2' value: 16r1B!

SDL_GPURasterizerState comment: ''!

!SDL_GPURasterizerState categoriesForClass!External-Data-Structured! !

!SDL_GPURasterizerState methodsFor!

cull_mode
	"Answer the <Integer> value of the receiver's 'cull_mode' field."

	^bytes sdwordAtOffset: _OffsetOf_cull_mode!

cull_mode: anInteger
	"Set the receiver's 'cull_mode' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_cull_mode put: anInteger!

depth_bias_clamp
	"Answer the <Float> value of the receiver's 'depth_bias_clamp' field."

	^bytes floatAtOffset: _OffsetOf_depth_bias_clamp!

depth_bias_clamp: aFloat
	"Set the receiver's 'depth_bias_clamp' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_depth_bias_clamp put: aFloat!

depth_bias_constant_factor
	"Answer the <Float> value of the receiver's 'depth_bias_constant_factor' field."

	^bytes floatAtOffset: _OffsetOf_depth_bias_constant_factor!

depth_bias_constant_factor: aFloat
	"Set the receiver's 'depth_bias_constant_factor' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_depth_bias_constant_factor put: aFloat!

depth_bias_slope_factor
	"Answer the <Float> value of the receiver's 'depth_bias_slope_factor' field."

	^bytes floatAtOffset: _OffsetOf_depth_bias_slope_factor!

depth_bias_slope_factor: aFloat
	"Set the receiver's 'depth_bias_slope_factor' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_depth_bias_slope_factor put: aFloat!

enable_depth_bias
	"Answer the <Boolean> value of the receiver's 'enable_depth_bias' field."

	^(bytes byteAtOffset: _OffsetOf_enable_depth_bias) asBoolean!

enable_depth_bias: aBoolean
	"Set the receiver's 'enable_depth_bias' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_depth_bias put: aBoolean asParameter!

enable_depth_clip
	"Answer the <Boolean> value of the receiver's 'enable_depth_clip' field."

	^(bytes byteAtOffset: _OffsetOf_enable_depth_clip) asBoolean!

enable_depth_clip: aBoolean
	"Set the receiver's 'enable_depth_clip' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_depth_clip put: aBoolean asParameter!

fill_mode
	"Answer the <Integer> value of the receiver's 'fill_mode' field."

	^bytes sdwordAtOffset: _OffsetOf_fill_mode!

fill_mode: anInteger
	"Set the receiver's 'fill_mode' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_fill_mode put: anInteger!

front_face
	"Answer the <Integer> value of the receiver's 'front_face' field."

	^bytes sdwordAtOffset: _OffsetOf_front_face!

front_face: anInteger
	"Set the receiver's 'front_face' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_front_face put: anInteger! !

!SDL_GPURasterizerState categoriesForMethods!
cull_mode!public! !
cull_mode:!public! !
depth_bias_clamp!public! !
depth_bias_clamp:!public! !
depth_bias_constant_factor!public! !
depth_bias_constant_factor:!public! !
depth_bias_slope_factor!public! !
depth_bias_slope_factor:!public! !
enable_depth_bias!public! !
enable_depth_bias:!public! !
enable_depth_clip!**compiled accessors**!public! !
enable_depth_clip:!**compiled accessors**!public! !
fill_mode!public! !
fill_mode:!public! !
front_face!public! !
front_face:!public! !
!

!SDL_GPURasterizerState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #fill_mode type: SDWORDField new;
		defineField: #cull_mode type: SDWORDField new;
		defineField: #front_face type: SDWORDField new;
		defineField: #depth_bias_constant_factor type: FLOATField new;
		defineField: #depth_bias_clamp type: FLOATField new;
		defineField: #depth_bias_slope_factor type: FLOATField new;
		defineField: #enable_depth_bias type: BOOLEANField new;
		defineField: #enable_depth_clip type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller!

getFieldNames
	^#(#fill_mode #cull_mode #front_face #depth_bias_constant_factor #depth_bias_clamp #depth_bias_slope_factor #enable_depth_bias #enable_depth_clip)! !

!SDL_GPURasterizerState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

