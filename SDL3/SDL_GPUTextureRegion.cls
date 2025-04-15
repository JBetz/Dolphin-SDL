"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTextureRegion
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_d _OffsetOf_h _OffsetOf_layer _OffsetOf_mip_level _OffsetOf_texture _OffsetOf_w _OffsetOf_x _OffsetOf_y _OffsetOf_z'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTextureRegion guid: (GUID fromString: '{d927be9b-6646-4234-8d03-1d0030204272}')!

SDL_GPUTextureRegion addClassConstant: '_OffsetOf_d' value: 16r20!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_h' value: 16r1C!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_layer' value: 16r8!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_mip_level' value: 16r4!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_texture' value: 16r0!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_w' value: 16r18!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_x' value: 16rC!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_y' value: 16r10!
SDL_GPUTextureRegion addClassConstant: '_OffsetOf_z' value: 16r14!

SDL_GPUTextureRegion comment: ''!

!SDL_GPUTextureRegion categoriesForClass!External-Data-Structured! !

!SDL_GPUTextureRegion methodsFor!

d
	"Answer the <Integer> value of the receiver's 'd' field."

	^bytes dwordAtOffset: _OffsetOf_d!

d: anInteger
	"Set the receiver's 'd' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_d put: anInteger!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes dwordAtOffset: _OffsetOf_h!

h: anInteger
	"Set the receiver's 'h' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_h put: anInteger!

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

	bytes dwordAtOffset: _OffsetOf_y put: anInteger!

z
	"Answer the <Integer> value of the receiver's 'z' field."

	^bytes dwordAtOffset: _OffsetOf_z!

z: anInteger
	"Set the receiver's 'z' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_z put: anInteger! !

!SDL_GPUTextureRegion categoriesForMethods!
d!**compiled accessors**!public! !
d:!**compiled accessors**!public! !
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
layer!**compiled accessors**!public! !
layer:!**compiled accessors**!public! !
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
z!**compiled accessors**!public! !
z:!**compiled accessors**!public! !
!

!SDL_GPUTextureRegion class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (PointerField type: SDL_GPUTexture);
		defineField: #mip_level type: DWORDField new;
		defineField: #layer type: DWORDField new;
		defineField: #x type: DWORDField new;
		defineField: #y type: DWORDField new;
		defineField: #z type: DWORDField new;
		defineField: #w type: DWORDField new;
		defineField: #h type: DWORDField new;
		defineField: #d type: DWORDField new!

fromTexture: aGPUTexture
	| extent |
	extent := aGPUTexture extent.
	^self new
		texture: aGPUTexture;
		x: 0;
		y: 0;
		w: extent x;
		h: extent y;
		d: 1!

getFieldNames
	^#(#texture #mip_level #layer #x #y #z #w #h #d)! !

!SDL_GPUTextureRegion class categoriesForMethods!
defineFields!public! !
fromTexture:!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

