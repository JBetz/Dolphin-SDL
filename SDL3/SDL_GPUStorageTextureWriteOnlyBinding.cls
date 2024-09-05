"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUStorageTextureWriteOnlyBinding
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cycle _OffsetOf_layer _OffsetOf_mip_level _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_texture'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUStorageTextureWriteOnlyBinding guid: (GUID fromString: '{aaaeecfe-a5d6-4f04-b3c3-00de61ed7e24}')!

SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_cycle' value: 16rC!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_layer' value: 16r8!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_mip_level' value: 16r4!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_padding1' value: 16rD!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_padding2' value: 16rE!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_padding3' value: 16rF!
SDL_GPUStorageTextureWriteOnlyBinding addClassConstant: '_OffsetOf_texture' value: 16r0!

SDL_GPUStorageTextureWriteOnlyBinding comment: ''!

!SDL_GPUStorageTextureWriteOnlyBinding categoriesForClass!External-Data-Structured! !

!SDL_GPUStorageTextureWriteOnlyBinding methodsFor!

cycle
	"Answer the <Boolean> value of the receiver's 'cycle' field."

	^(bytes byteAtOffset: _OffsetOf_cycle) asBoolean!

cycle: aBoolean
	"Set the receiver's 'cycle' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_cycle put: aBoolean asParameter!

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

	^SDL_GPUTexture fromAddress: (bytes intPtrAtOffset: _OffsetOf_texture)!

texture: aSDL_GPUTexture
	"Set the receiver's 'texture' field to the value of the argument, aSDL_GPUTexture"

	bytes uintPtrAtOffset: _OffsetOf_texture put: aSDL_GPUTexture yourAddress! !

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
		defineField: #texture type: (PointerField type: SDL_GPUTexture);
		defineField: #mip_level type: DWORDField new;
		defineField: #layer type: DWORDField new;
		defineField: #cycle type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller!

getFieldNames
	^#(#texture #mip_level #layer #cycle)! !

!SDL_GPUStorageTextureWriteOnlyBinding class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

