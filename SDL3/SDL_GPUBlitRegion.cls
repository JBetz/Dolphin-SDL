"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUBlitRegion
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_h _OffsetOf_layer_or_depth_plane _OffsetOf_mip_level _OffsetOf_texture _OffsetOf_w _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUBlitRegion guid: (GUID fromString: '{5bde7d4f-47a5-4e3e-b2a6-d8ccd8b8ad67}')!

SDL_GPUBlitRegion addClassConstant: '_OffsetOf_h' value: 16r18!
SDL_GPUBlitRegion addClassConstant: '_OffsetOf_layer_or_depth_plane' value: 16r8!
SDL_GPUBlitRegion addClassConstant: '_OffsetOf_mip_level' value: 16r4!
SDL_GPUBlitRegion addClassConstant: '_OffsetOf_texture' value: 16r0!
SDL_GPUBlitRegion addClassConstant: '_OffsetOf_w' value: 16r14!
SDL_GPUBlitRegion addClassConstant: '_OffsetOf_x' value: 16rC!
SDL_GPUBlitRegion addClassConstant: '_OffsetOf_y' value: 16r10!

SDL_GPUBlitRegion comment: ''!

!SDL_GPUBlitRegion categoriesForClass!External-Data-Structured! !

!SDL_GPUBlitRegion methodsFor!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes dwordAtOffset: _OffsetOf_h!

h: anInteger
	"Set the receiver's 'h' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_h put: anInteger!

layer_or_depth_plane
	"Answer the <Integer> value of the receiver's 'layer_or_depth_plane' field."

	^bytes dwordAtOffset: _OffsetOf_layer_or_depth_plane!

layer_or_depth_plane: anInteger
	"Set the receiver's 'layer_or_depth_plane' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_layer_or_depth_plane put: anInteger!

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

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes dwordAtOffset: _OffsetOf_w!

w: anInteger
	"Set the receiver's 'w' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_w put: anInteger!

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

	bytes dwordAtOffset: _OffsetOf_y put: anInteger! !

!SDL_GPUBlitRegion categoriesForMethods!
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
layer_or_depth_plane!**compiled accessors**!public! !
layer_or_depth_plane:!**compiled accessors**!public! !
mip_level!**compiled accessors**!public! !
mip_level:!**compiled accessors**!public! !
texture!**compiled accessors**!public! !
texture:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_GPUBlitRegion class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (PointerField type: SDL_GPUTexture);
		defineField: #mip_level type: DWORDField new;
		defineField: #layer_or_depth_plane type: DWORDField new;
		defineField: #x type: DWORDField new;
		defineField: #y type: DWORDField new;
		defineField: #w type: DWORDField new;
		defineField: #h type: DWORDField new!

getFieldNames
	^#(#texture #mip_level #layer_or_depth_plane #x #y #w #h)! !

!SDL_GPUBlitRegion class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

