"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTextureCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_format _OffsetOf_height _OffsetOf_layer_count_or_depth _OffsetOf_level_count _OffsetOf_props _OffsetOf_sample_count _OffsetOf_type _OffsetOf_usage_flags _OffsetOf_width'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTextureCreateInfo guid: (GUID fromString: '{246162d9-758e-4795-bb2d-6f2ab129aa18}')!

SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_format' value: 16r4!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_height' value: 16r10!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_layer_count_or_depth' value: 16r14!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_level_count' value: 16r18!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_props' value: 16r20!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_sample_count' value: 16r1C!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_usage_flags' value: 16r8!
SDL_GPUTextureCreateInfo addClassConstant: '_OffsetOf_width' value: 16rC!

SDL_GPUTextureCreateInfo comment: ''!

!SDL_GPUTextureCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUTextureCreateInfo methodsFor!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes sdwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_format put: anInteger!

height
	"Answer the <Integer> value of the receiver's 'height' field."

	^bytes dwordAtOffset: _OffsetOf_height!

height: anInteger
	"Set the receiver's 'height' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_height put: anInteger!

layer_count_or_depth
	"Answer the <Integer> value of the receiver's 'layer_count_or_depth' field."

	^bytes dwordAtOffset: _OffsetOf_layer_count_or_depth!

layer_count_or_depth: anInteger
	"Set the receiver's 'layer_count_or_depth' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_layer_count_or_depth put: anInteger!

level_count
	"Answer the <Integer> value of the receiver's 'level_count' field."

	^bytes dwordAtOffset: _OffsetOf_level_count!

level_count: anInteger
	"Set the receiver's 'level_count' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_level_count put: anInteger!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger!

sample_count
	"Answer the <Integer> value of the receiver's 'sample_count' field."

	^bytes sdwordAtOffset: _OffsetOf_sample_count!

sample_count: anInteger
	"Set the receiver's 'sample_count' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_sample_count put: anInteger!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes sdwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_type put: anInteger!

usage_flags
	"Answer the <Integer> value of the receiver's 'usage_flags' field."

	^bytes dwordAtOffset: _OffsetOf_usage_flags!

usage_flags: anInteger
	"Set the receiver's 'usage_flags' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_usage_flags put: anInteger!

width
	"Answer the <Integer> value of the receiver's 'width' field."

	^bytes dwordAtOffset: _OffsetOf_width!

width: anInteger
	"Set the receiver's 'width' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_width put: anInteger! !

!SDL_GPUTextureCreateInfo categoriesForMethods!
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
height!**compiled accessors**!public! !
height:!**compiled accessors**!public! !
layer_count_or_depth!**compiled accessors**!public! !
layer_count_or_depth:!**compiled accessors**!public! !
level_count!**compiled accessors**!public! !
level_count:!**compiled accessors**!public! !
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
sample_count!**compiled accessors**!public! !
sample_count:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
usage_flags!**compiled accessors**!public! !
usage_flags:!**compiled accessors**!public! !
width!**compiled accessors**!public! !
width:!**compiled accessors**!public! !
!

!SDL_GPUTextureCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #type type: SDWORDField new;
		defineField: #format type: SDWORDField new;
		defineField: #usage_flags type: DWORDField new;
		defineField: #width type: DWORDField new;
		defineField: #height type: DWORDField new;
		defineField: #layer_count_or_depth type: DWORDField new;
		defineField: #level_count type: DWORDField new;
		defineField: #sample_count type: SDWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#type #format #usage_flags #width #height #layer_count_or_depth #level_count #sample_count #props)! !

!SDL_GPUTextureCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

