"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUGraphicsPipelineTargetInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_color_target_descriptions _OffsetOf_depth_stencil_format _OffsetOf_has_depth_stencil_target _OffsetOf_num_color_targets _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUGraphicsPipelineTargetInfo guid: (GUID fromString: '{6f2a9a23-c657-4185-bb4e-604c026e7048}')!

SDL_GPUGraphicsPipelineTargetInfo addClassConstant: '_OffsetOf_color_target_descriptions' value: 16r0!
SDL_GPUGraphicsPipelineTargetInfo addClassConstant: '_OffsetOf_depth_stencil_format' value: 16r8!
SDL_GPUGraphicsPipelineTargetInfo addClassConstant: '_OffsetOf_has_depth_stencil_target' value: 16rC!
SDL_GPUGraphicsPipelineTargetInfo addClassConstant: '_OffsetOf_num_color_targets' value: 16r4!
SDL_GPUGraphicsPipelineTargetInfo addClassConstant: '_OffsetOf_padding1' value: 16rD!
SDL_GPUGraphicsPipelineTargetInfo addClassConstant: '_OffsetOf_padding2' value: 16rE!
SDL_GPUGraphicsPipelineTargetInfo addClassConstant: '_OffsetOf_padding3' value: 16rF!

SDL_GPUGraphicsPipelineTargetInfo comment: ''!

!SDL_GPUGraphicsPipelineTargetInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUGraphicsPipelineTargetInfo methodsFor!

color_target_descriptions
	"Answer the <StructureArray> value of the receiver's 'color_target_descriptions' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_color_target_descriptions)
		length: self num_color_targets
		elementClass: SDL_GPUColorTargetDescription!

color_target_descriptions: aStructureArray
	"Set the receiver's 'color_target_descriptions' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_color_target_descriptions put: aStructureArray yourAddress.
	self num_color_targets: aStructureArray size!

depth_stencil_format
	"Answer the <Integer> value of the receiver's 'depth_stencil_format' field."

	^bytes sdwordAtOffset: _OffsetOf_depth_stencil_format!

depth_stencil_format: anInteger
	"Set the receiver's 'depth_stencil_format' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_depth_stencil_format put: anInteger!

has_depth_stencil_target
	"Answer the <Boolean> value of the receiver's 'has_depth_stencil_target' field."

	^(bytes byteAtOffset: _OffsetOf_has_depth_stencil_target) asBoolean!

has_depth_stencil_target: aBoolean
	"Set the receiver's 'has_depth_stencil_target' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_has_depth_stencil_target put: aBoolean asParameter!

num_color_targets
	"Answer the <Integer> value of the receiver's 'num_color_targets' field."

	^bytes sdwordAtOffset: _OffsetOf_num_color_targets!

num_color_targets: anInteger
	"Set the receiver's 'num_color_targets' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_num_color_targets put: anInteger! !

!SDL_GPUGraphicsPipelineTargetInfo categoriesForMethods!
color_target_descriptions!public! !
color_target_descriptions:!public! !
depth_stencil_format!public! !
depth_stencil_format:!public! !
has_depth_stencil_target!public! !
has_depth_stencil_target:!public! !
num_color_targets!public! !
num_color_targets:!public! !
!

!SDL_GPUGraphicsPipelineTargetInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #color_target_descriptions
			type: (StructureArrayPointerField type: SDL_GPUColorTargetDescription lengthField: #num_color_targets);
		defineField: #num_color_targets type: SDWORDField new;
		defineField: #depth_stencil_format type: SDWORDField new;
		defineField: #has_depth_stencil_target type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller!

getFieldNames
	^#(#color_target_descriptions #num_color_targets #depth_stencil_format #has_depth_stencil_target)! !

!SDL_GPUGraphicsPipelineTargetInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

