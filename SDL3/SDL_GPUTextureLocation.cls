"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTextureLocation
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_layer _OffsetOf_mip_level _OffsetOf_texture _OffsetOf_x _OffsetOf_y _OffsetOf_z'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTextureLocation guid: (GUID fromString: '{7eb8a21e-4da4-4f05-92c7-eabd43abf202}')!

SDL_GPUTextureLocation addClassConstant: '_OffsetOf_layer' value: 16r8!
SDL_GPUTextureLocation addClassConstant: '_OffsetOf_mip_level' value: 16r4!
SDL_GPUTextureLocation addClassConstant: '_OffsetOf_texture' value: 16r0!
SDL_GPUTextureLocation addClassConstant: '_OffsetOf_x' value: 16rC!
SDL_GPUTextureLocation addClassConstant: '_OffsetOf_y' value: 16r10!
SDL_GPUTextureLocation addClassConstant: '_OffsetOf_z' value: 16r14!

SDL_GPUTextureLocation comment: ''!

!SDL_GPUTextureLocation categoriesForClass!External-Data-Structured! !

!SDL_GPUTextureLocation methodsFor!

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

	bytes uintPtrAtOffset: _OffsetOf_texture put: aSDL_GPUTexture yourAddress!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes dwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_x put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes dwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_y put: anInteger!

z
	"Answer the <Integer> value of the receiver's 'z' field."

	^bytes dwordAtOffset: _OffsetOf_z!

z: anInteger
	"Set the receiver's 'z' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_z put: anInteger! !

!SDL_GPUTextureLocation categoriesForMethods!
layer!**compiled accessors**!public! !
layer:!**compiled accessors**!public! !
mip_level!**compiled accessors**!public! !
mip_level:!**compiled accessors**!public! !
texture!**compiled accessors**!public! !
texture:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
z!**compiled accessors**!public! !
z:!**compiled accessors**!public! !
!

!SDL_GPUTextureLocation class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (PointerField type: SDL_GPUTexture);
		defineField: #mip_level type: DWORDField new;
		defineField: #layer type: DWORDField new;
		defineField: #x type: DWORDField new;
		defineField: #y type: DWORDField new;
		defineField: #z type: DWORDField new!

getFieldNames
	^#(#texture #mip_level #layer #x #y #z)! !

!SDL_GPUTextureLocation class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

