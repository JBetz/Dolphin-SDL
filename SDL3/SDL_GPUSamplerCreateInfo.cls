"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUSamplerCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_address_mode_u _OffsetOf_address_mode_v _OffsetOf_address_mode_w _OffsetOf_anisotropy_enable _OffsetOf_compare_enable _OffsetOf_compare_op _OffsetOf_mag_filter _OffsetOf_max_anisotropy _OffsetOf_max_lod _OffsetOf_min_filter _OffsetOf_min_lod _OffsetOf_mip_lod_bias _OffsetOf_mip_map_mode _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_props'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUSamplerCreateInfo guid: (GUID fromString: '{f66e96fa-527f-480b-9bc7-39c785ea8895}')!

SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_address_mode_u' value: 16rC!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_address_mode_v' value: 16r10!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_address_mode_w' value: 16r14!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_anisotropy_enable' value: 16r20!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_compare_enable' value: 16r21!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_compare_op' value: 16r24!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_mag_filter' value: 16r4!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_max_anisotropy' value: 16r1C!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_max_lod' value: 16r2C!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_min_filter' value: 16r0!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_min_lod' value: 16r28!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_mip_lod_bias' value: 16r18!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_mip_map_mode' value: 16r8!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_padding1' value: 16r22!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_padding2' value: 16r23!
SDL_GPUSamplerCreateInfo addClassConstant: '_OffsetOf_props' value: 16r30!

SDL_GPUSamplerCreateInfo comment: ''!

!SDL_GPUSamplerCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUSamplerCreateInfo methodsFor!

address_mode_u
	"Answer the <Integer> value of the receiver's 'address_mode_u' field."

	^bytes sdwordAtOffset: _OffsetOf_address_mode_u!

address_mode_u: anInteger
	"Set the receiver's 'address_mode_u' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_address_mode_u put: anInteger!

address_mode_v
	"Answer the <Integer> value of the receiver's 'address_mode_v' field."

	^bytes sdwordAtOffset: _OffsetOf_address_mode_v!

address_mode_v: anInteger
	"Set the receiver's 'address_mode_v' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_address_mode_v put: anInteger!

address_mode_w
	"Answer the <Integer> value of the receiver's 'address_mode_w' field."

	^bytes sdwordAtOffset: _OffsetOf_address_mode_w!

address_mode_w: anInteger
	"Set the receiver's 'address_mode_w' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_address_mode_w put: anInteger!

anisotropy_enable
	"Answer the <Boolean> value of the receiver's 'anisotropy_enable' field."

	^(bytes byteAtOffset: _OffsetOf_anisotropy_enable) asBoolean!

anisotropy_enable: aBoolean
	"Set the receiver's 'anisotropy_enable' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_anisotropy_enable put: aBoolean asParameter!

compare_enable
	"Answer the <Boolean> value of the receiver's 'compare_enable' field."

	^(bytes byteAtOffset: _OffsetOf_compare_enable) asBoolean!

compare_enable: aBoolean
	"Set the receiver's 'compare_enable' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_compare_enable put: aBoolean asParameter!

compare_op
	"Answer the <Integer> value of the receiver's 'compare_op' field."

	^bytes sdwordAtOffset: _OffsetOf_compare_op!

compare_op: anInteger
	"Set the receiver's 'compare_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_compare_op put: anInteger!

mag_filter
	"Answer the <Integer> value of the receiver's 'mag_filter' field."

	^bytes dwordAtOffset: _OffsetOf_mag_filter!

mag_filter: anInteger
	"Set the receiver's 'mag_filter' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_mag_filter put: anInteger!

max_anisotropy
	"Answer the <Float> value of the receiver's 'max_anisotropy' field."

	^bytes floatAtOffset: _OffsetOf_max_anisotropy!

max_anisotropy: aFloat
	"Set the receiver's 'max_anisotropy' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_max_anisotropy put: aFloat!

max_lod
	"Answer the <Float> value of the receiver's 'max_lod' field."

	^bytes floatAtOffset: _OffsetOf_max_lod!

max_lod: aFloat
	"Set the receiver's 'max_lod' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_max_lod put: aFloat!

min_filter
	"Answer the <Integer> value of the receiver's 'min_filter' field."

	^bytes dwordAtOffset: _OffsetOf_min_filter!

min_filter: anInteger
	"Set the receiver's 'min_filter' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_min_filter put: anInteger!

min_lod
	"Answer the <Float> value of the receiver's 'min_lod' field."

	^bytes floatAtOffset: _OffsetOf_min_lod!

min_lod: aFloat
	"Set the receiver's 'min_lod' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_min_lod put: aFloat!

mip_lod_bias
	"Answer the <Float> value of the receiver's 'mip_lod_bias' field."

	^bytes floatAtOffset: _OffsetOf_mip_lod_bias!

mip_lod_bias: aFloat
	"Set the receiver's 'mip_lod_bias' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_mip_lod_bias put: aFloat!

mip_map_mode
	"Answer the <Integer> value of the receiver's 'mip_map_mode' field."

	^bytes sdwordAtOffset: _OffsetOf_mip_map_mode!

mip_map_mode: anInteger
	"Set the receiver's 'mip_map_mode' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_mip_map_mode put: anInteger!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger! !

!SDL_GPUSamplerCreateInfo categoriesForMethods!
address_mode_u!**compiled accessors**!public! !
address_mode_u:!**compiled accessors**!public! !
address_mode_v!**compiled accessors**!public! !
address_mode_v:!**compiled accessors**!public! !
address_mode_w!**compiled accessors**!public! !
address_mode_w:!**compiled accessors**!public! !
anisotropy_enable!**compiled accessors**!public! !
anisotropy_enable:!**compiled accessors**!public! !
compare_enable!**compiled accessors**!public! !
compare_enable:!**compiled accessors**!public! !
compare_op!**compiled accessors**!public! !
compare_op:!**compiled accessors**!public! !
mag_filter!**compiled accessors**!public! !
mag_filter:!**compiled accessors**!public! !
max_anisotropy!**compiled accessors**!public! !
max_anisotropy:!**compiled accessors**!public! !
max_lod!**compiled accessors**!public! !
max_lod:!**compiled accessors**!public! !
min_filter!**compiled accessors**!public! !
min_filter:!**compiled accessors**!public! !
min_lod!**compiled accessors**!public! !
min_lod:!**compiled accessors**!public! !
mip_lod_bias!**compiled accessors**!public! !
mip_lod_bias:!**compiled accessors**!public! !
mip_map_mode!**compiled accessors**!public! !
mip_map_mode:!**compiled accessors**!public! !
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
!

!SDL_GPUSamplerCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #min_filter type: DWORDField new;
		defineField: #mag_filter type: DWORDField new;
		defineField: #mip_map_mode type: SDWORDField new;
		defineField: #address_mode_u type: SDWORDField new;
		defineField: #address_mode_v type: SDWORDField new;
		defineField: #address_mode_w type: SDWORDField new;
		defineField: #mip_lod_bias type: FLOATField new;
		defineField: #max_anisotropy type: FLOATField new;
		defineField: #anisotropy_enable type: BOOLEANField new;
		defineField: #compare_enable type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #compare_op type: SDWORDField new;
		defineField: #min_lod type: FLOATField new;
		defineField: #max_lod type: FLOATField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#min_filter #mag_filter #mip_map_mode #address_mode_u #address_mode_v #address_mode_w #mip_lod_bias #max_anisotropy #anisotropy_enable #compare_enable #compare_op #min_lod #max_lod #props)! !

!SDL_GPUSamplerCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

