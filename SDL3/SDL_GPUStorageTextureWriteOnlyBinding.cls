"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUStorageTextureWriteOnlyBinding
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cycle _OffsetOf_layer _OffsetOf_mip_level _OffsetOf_texture'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUStorageTextureWriteOnlyBinding guid: (GUID fromString: '{aaaeecfe-a5d6-4f04-b3c3-00de61ed7e24}')!

SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_cycle' value: 16r8!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_layer' value: 16r4!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_mip_level' value: 16r0!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_texture' value: 16r0!

SDL_GPUStorageTextureWriteOnlyBinding comment: ''!

!SDL_GPUStorageTextureWriteOnlyBinding categoriesForClass!External-Data-Structured! !

!SDL_GPUStorageTextureWriteOnlyBinding methodsFor!

cycle
	"Answer the <Boolean> value of the receiver's 'cycle' field."

	^(bytes dwordAtOffset: _OffsetOf_cycle) asBoolean!

cycle: aBoolean
	"Set the receiver's 'cycle' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_cycle put: aBoolean asParameter!

layer
	"Answer the <Integer> value of the receiver's 'layer' field."

	^bytes dwordAtOffset: _OffsetOf_layer!

layer: anInteger
	"Set the receiver's 'layer' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_layer put: anInteger!

mip_level
	"Answer the <Integer> value of the receiver's 'mip_level' field."

	^bytes dwordAtOffset: _OffsetOf_mip_level!

mip_level: anInteger
	"Set the receiver's 'mip_level' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_mip_level put: anInteger!

texture
	"Answer the <SDL_GPUTexture> value of the receiver's 'texture' field."

	^SDL_GPUTexture fromAddress: bytes yourAddress!

texture: aSDL_GPUTexture
	"Set the receiver's 'texture' field to the value of the argument, aSDL_GPUTexture"

	aSDL_GPUTexture
		replaceBytesOf: bytes
		from: ##(_OffsetOf_texture + 1)
		to: ##(_OffsetOf_texture + SDL_GPUTexture basicByteSize)
		startingAt: 1! !

!SDL_GPUStorageTextureWriteOnlyBinding categoriesForMethods!
cycle!**compiled accessors**!public! !
cycle:!**compiled accessors**!public! !
layer!**compiled accessors**!public! !
layer:!**compiled accessors**!public! !
mip_level!**compiled accessors**!public! !
mip_level:!**compiled accessors**!public! !
texture!**compiled accessors**!public! !
texture:!**compiled accessors**!public! !
!

!SDL_GPUStorageTextureWriteOnlyBinding class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (StructureField type: SDL_GPUTexture);
		defineField: #mip_level type: DWORDField new;
		defineField: #layer type: DWORDField new;
		defineField: #cycle type: BOOLField new!

getFieldNames
	^#(#mip_level #texture #layer #cycle)! !

!SDL_GPUStorageTextureWriteOnlyBinding class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

