"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUGraphicsPipelineAttachmentInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_color_attachment_count _OffsetOf_color_attachment_descriptions _OffsetOf_depth_stencil_format _OffsetOf_has_depth_stencil_attachment'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUGraphicsPipelineAttachmentInfo guid: (GUID fromString: '{6f2a9a23-c657-4185-bb4e-604c026e7048}')!

SDL_GPUGraphicsPipelineAttachmentInfo addClassConstant: '_OffsetOf_color_attachment_count' value: 16r4!
SDL_GPUGraphicsPipelineAttachmentInfo addClassConstant: '_OffsetOf_color_attachment_descriptions' value: 16r0!
SDL_GPUGraphicsPipelineAttachmentInfo addClassConstant: '_OffsetOf_depth_stencil_format' value: 16rC!
SDL_GPUGraphicsPipelineAttachmentInfo addClassConstant: '_OffsetOf_has_depth_stencil_attachment' value: 16r8!

SDL_GPUGraphicsPipelineAttachmentInfo comment: ''!

!SDL_GPUGraphicsPipelineAttachmentInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUGraphicsPipelineAttachmentInfo methodsFor!

color_attachment_count
	"Answer the <Integer> value of the receiver's 'color_attachment_count' field."

	^bytes sdwordAtOffset: _OffsetOf_color_attachment_count!

color_attachment_count: anInteger
	"Set the receiver's 'color_attachment_count' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_color_attachment_count put: anInteger!

color_attachment_descriptions
	"Answer the <StructureArray> value of the receiver's 'color_attachment_descriptions' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_color_attachment_descriptions)
		length: self color_attachment_count
		elementClass: SDL_GPUColorAttachmentDescription!

color_attachment_descriptions: aStructureArray
	"Set the receiver's 'color_attachment_descriptions' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_color_attachment_descriptions put: aStructureArray yourAddress.
	self color_attachment_count: aStructureArray size!

depth_stencil_format
	"Answer the <Integer> value of the receiver's 'depth_stencil_format' field."

	^bytes sdwordAtOffset: _OffsetOf_depth_stencil_format!

depth_stencil_format: anInteger
	"Set the receiver's 'depth_stencil_format' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_depth_stencil_format put: anInteger!

has_depth_stencil_attachment
	"Answer the <Boolean> value of the receiver's 'has_depth_stencil_attachment' field."

	^(bytes dwordAtOffset: _OffsetOf_has_depth_stencil_attachment) asBoolean!

has_depth_stencil_attachment: aBoolean
	"Set the receiver's 'has_depth_stencil_attachment' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_has_depth_stencil_attachment put: aBoolean asParameter! !

!SDL_GPUGraphicsPipelineAttachmentInfo categoriesForMethods!
color_attachment_count!**compiled accessors**!public! !
color_attachment_count:!**compiled accessors**!public! !
color_attachment_descriptions!**compiled accessors**!public! !
color_attachment_descriptions:!**compiled accessors**!public! !
depth_stencil_format!**compiled accessors**!public! !
depth_stencil_format:!**compiled accessors**!public! !
has_depth_stencil_attachment!**compiled accessors**!public! !
has_depth_stencil_attachment:!**compiled accessors**!public! !
!

!SDL_GPUGraphicsPipelineAttachmentInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #color_attachment_descriptions
			type: (StructureArrayPointerField type: SDL_GPUColorAttachmentDescription
					lengthField: #color_attachment_count);
		defineField: #color_attachment_count type: SDWORDField new;
		defineField: #has_depth_stencil_attachment type: BOOLField new;
		defineField: #depth_stencil_format type: SDWORDField new!

getFieldNames
	^#(#color_attachment_descriptions #color_attachment_count #has_depth_stencil_attachment #depth_stencil_format)! !

!SDL_GPUGraphicsPipelineAttachmentInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

