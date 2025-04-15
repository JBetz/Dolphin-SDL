"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #TTF_GPUAtlasDrawSequence
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_atlas_texture _OffsetOf_image_type _OffsetOf_indices _OffsetOf_next _OffsetOf_num_indices _OffsetOf_num_vertices _OffsetOf_uv _OffsetOf_xy'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TTF_GPUAtlasDrawSequence guid: (GUID fromString: '{d7ac93ee-147f-48b3-9187-ab4e73717d95}')!

TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_atlas_texture' value: 16r0!
TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_image_type' value: 16r18!
TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_indices' value: 16r10!
TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_next' value: 16r1C!
TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_num_indices' value: 16r14!
TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_num_vertices' value: 16rC!
TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_uv' value: 16r8!
TTF_GPUAtlasDrawSequence addClassConstant: '_OffsetOf_xy' value: 16r4!

TTF_GPUAtlasDrawSequence comment: ''!

!TTF_GPUAtlasDrawSequence categoriesForClass!External-Data-Structured! !

!TTF_GPUAtlasDrawSequence methodsFor!

atlas_texture
	"Answer the <SDL_GPUTexture> value of the receiver's 'atlas_texture' field."

	^SDL_GPUTexture fromAddress: (bytes intPtrAtOffset: _OffsetOf_atlas_texture)!

atlas_texture: aSDL_GPUTexture
	"Set the receiver's 'atlas_texture' field to the value of the argument, aSDL_GPUTexture"

	bytes uintPtrAtOffset: _OffsetOf_atlas_texture put: aSDL_GPUTexture yourAddress!

image_type
	"Answer the <Integer> value of the receiver's 'image_type' field."

	^bytes sdwordAtOffset: _OffsetOf_image_type!

image_type: anInteger
	"Set the receiver's 'image_type' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_image_type put: anInteger!

indices
	"Answer the <SDWORDArray> value of the receiver's 'indices' field."

	^SDWORDArray fromAddress: (bytes intPtrAtOffset: _OffsetOf_indices) length: self num_indices!

indices: aSDWORDArray
	"Set the receiver's 'indices' field to the value of the argument, aSDWORDArray"

	bytes uintPtrAtOffset: _OffsetOf_indices put: aSDWORDArray yourAddress.
	self num_indices: aSDWORDArray size!

next
	"Answer the <TTF_GPUAtlasDrawSequence> value of the receiver's 'next' field."

	^TTF_GPUAtlasDrawSequence fromAddress: (bytes intPtrAtOffset: _OffsetOf_next)!

next: aTTF_GPUAtlasDrawSequence
	"Set the receiver's 'next' field to the value of the argument, aTTF_GPUAtlasDrawSequence"

	bytes uintPtrAtOffset: _OffsetOf_next put: aTTF_GPUAtlasDrawSequence yourAddress!

num_indices
	"Answer the <Integer> value of the receiver's 'num_indices' field."

	^bytes sdwordAtOffset: _OffsetOf_num_indices!

num_indices: anInteger
	"Set the receiver's 'num_indices' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_num_indices put: anInteger!

num_vertices
	"Answer the <Integer> value of the receiver's 'num_vertices' field."

	^bytes sdwordAtOffset: _OffsetOf_num_vertices!

num_vertices: anInteger
	"Set the receiver's 'num_vertices' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_num_vertices put: anInteger!

uv
	"Answer the <StructureArray> value of the receiver's 'uv' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_uv)
		length: self num_vertices
		elementClass: SDL_FPoint!

uv: aStructureArray
	"Set the receiver's 'uv' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_uv put: aStructureArray yourAddress.
	self num_vertices: aStructureArray size!

xy
	"Answer the <StructureArray> value of the receiver's 'xy' field."

	^StructureArray
		fromAddress: (bytes intPtrAtOffset: _OffsetOf_xy)
		length: self num_vertices
		elementClass: SDL_FPoint!

xy: aStructureArray
	"Set the receiver's 'xy' field to the value of the argument, aStructureArray"

	bytes uintPtrAtOffset: _OffsetOf_xy put: aStructureArray yourAddress.
	self num_vertices: aStructureArray size! !

!TTF_GPUAtlasDrawSequence categoriesForMethods!
atlas_texture!**compiled accessors**!public! !
atlas_texture:!**compiled accessors**!public! !
image_type!**compiled accessors**!public! !
image_type:!**compiled accessors**!public! !
indices!**compiled accessors**!public! !
indices:!**compiled accessors**!public! !
next!**compiled accessors**!public! !
next:!**compiled accessors**!public! !
num_indices!**compiled accessors**!public! !
num_indices:!**compiled accessors**!public! !
num_vertices!**compiled accessors**!public! !
num_vertices:!**compiled accessors**!public! !
uv!**compiled accessors**!public! !
uv:!**compiled accessors**!public! !
xy!**compiled accessors**!public! !
xy:!**compiled accessors**!public! !
!

!TTF_GPUAtlasDrawSequence class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #atlas_texture type: (PointerField type: SDL_GPUTexture);
		defineField: #xy type: (StructureArrayPointerField type: SDL_FPoint lengthField: #num_vertices);
		defineField: #uv type: (StructureArrayPointerField type: SDL_FPoint lengthField: #num_vertices);
		defineField: #num_vertices type: SDWORDField new;
		defineField: #indices type: (ArrayPointerField type: SDWORDArray lengthField: #num_indices);
		defineField: #num_indices type: SDWORDField new;
		defineField: #image_type type: SDWORDField new;
		defineField: #next type: (PointerField type: TTF_GPUAtlasDrawSequence)!

getFieldNames
	^#(#atlas_texture #xy #uv #num_vertices #indices #num_indices #image_type #next)! !

!TTF_GPUAtlasDrawSequence class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

