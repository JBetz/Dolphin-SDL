"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPURasterizerState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cull_mode _OffsetOf_depth_bias_clamp _OffsetOf_depth_bias_constant_factor _OffsetOf_depth_bias_enable _OffsetOf_depth_bias_slope_factor _OffsetOf_fill_mode _OffsetOf_front_face'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPURasterizerState guid: (GUID fromString: '{112ba98a-9f41-406a-809a-d7c4bd444202}')!

SDL_GPURasterizerState addClassConstant: '_OffsetOf_cull_mode' value: 16r4!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_depth_bias_clamp' value: 16r14!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_depth_bias_constant_factor' value: 16r10!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_depth_bias_enable' value: 16rC!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_depth_bias_slope_factor' value: 16r18!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_fill_mode' value: 16r0!
SDL_GPURasterizerState addClassConstant: '_OffsetOf_front_face' value: 16r8!

SDL_GPURasterizerState comment: ''!

!SDL_GPURasterizerState categoriesForClass!External-Data-Structured! !

!SDL_GPURasterizerState methodsFor!

cull_mode
	"Answer the <Integer> value of the receiver's 'cull_mode' field."

	^bytes dwordAtOffset: _OffsetOf_cull_mode!

cull_mode: anInteger
	"Set the receiver's 'cull_mode' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_cull_mode put: anInteger!

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

depth_bias_enable
	"Answer the <Boolean> value of the receiver's 'depth_bias_enable' field."

	^(bytes dwordAtOffset: _OffsetOf_depth_bias_enable) asBoolean!

depth_bias_enable: aBoolean
	"Set the receiver's 'depth_bias_enable' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_depth_bias_enable put: aBoolean asParameter!

depth_bias_slope_factor
	"Answer the <Float> value of the receiver's 'depth_bias_slope_factor' field."

	^bytes floatAtOffset: _OffsetOf_depth_bias_slope_factor!

depth_bias_slope_factor: aFloat
	"Set the receiver's 'depth_bias_slope_factor' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_depth_bias_slope_factor put: aFloat!

fill_mode
	"Answer the <Integer> value of the receiver's 'fill_mode' field."

	^bytes dwordAtOffset: _OffsetOf_fill_mode!

fill_mode: anInteger
	"Set the receiver's 'fill_mode' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_fill_mode put: anInteger!

front_face
	"Answer the <Integer> value of the receiver's 'front_face' field."

	^bytes dwordAtOffset: _OffsetOf_front_face!

front_face: anInteger
	"Set the receiver's 'front_face' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_front_face put: anInteger! !

!SDL_GPURasterizerState categoriesForMethods!
cull_mode!**compiled accessors**!public! !
cull_mode:!**compiled accessors**!public! !
depth_bias_clamp!**compiled accessors**!public! !
depth_bias_clamp:!**compiled accessors**!public! !
depth_bias_constant_factor!**compiled accessors**!public! !
depth_bias_constant_factor:!**compiled accessors**!public! !
depth_bias_enable!**compiled accessors**!public! !
depth_bias_enable:!**compiled accessors**!public! !
depth_bias_slope_factor!**compiled accessors**!public! !
depth_bias_slope_factor:!**compiled accessors**!public! !
fill_mode!**compiled accessors**!public! !
fill_mode:!**compiled accessors**!public! !
front_face!**compiled accessors**!public! !
front_face:!**compiled accessors**!public! !
!

!SDL_GPURasterizerState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #fill_mode type: DWORDField new;
		defineField: #cull_mode type: DWORDField new;
		defineField: #front_face type: DWORDField new;
		defineField: #depth_bias_enable type: BOOLField new;
		defineField: #depth_bias_constant_factor type: FLOATField new;
		defineField: #depth_bias_clamp type: FLOATField new;
		defineField: #depth_bias_slope_factor type: FLOATField new!

getFieldNames
	^#(#fill_mode #cull_mode #front_face #depth_bias_enable #depth_bias_constant_factor #depth_bias_clamp #depth_bias_slope_factor)! !

!SDL_GPURasterizerState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

