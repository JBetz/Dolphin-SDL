"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTextureSamplerBinding
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_sampler _OffsetOf_texture'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTextureSamplerBinding guid: (GUID fromString: '{f3c8fe3f-cf63-4e22-a18c-1dbd80f431e0}')!

SDL_GPUTextureSamplerBinding addClassConstant: '_OffsetOf_sampler' value: 16r4!
SDL_GPUTextureSamplerBinding addClassConstant: '_OffsetOf_texture' value: 16r0!

SDL_GPUTextureSamplerBinding comment: ''!

!SDL_GPUTextureSamplerBinding categoriesForClass!External-Data-Structured! !

!SDL_GPUTextureSamplerBinding methodsFor!

sampler
	"Answer the <SDL_GPUSampler> value of the receiver's 'sampler' field."

	^SDL_GPUSampler fromAddress: (bytes intPtrAtOffset: _OffsetOf_sampler)!

sampler: aSDL_GPUSampler
	"Set the receiver's 'sampler' field to the value of the argument, aSDL_GPUSampler"

	bytes uintPtrAtOffset: _OffsetOf_sampler put: aSDL_GPUSampler yourAddress!

texture
	"Answer the <SDL_GPUTexture> value of the receiver's 'texture' field."

	^SDL_GPUTexture fromAddress: (bytes intPtrAtOffset: _OffsetOf_texture)!

texture: aSDL_GPUTexture
	"Set the receiver's 'texture' field to the value of the argument, aSDL_GPUTexture"

	bytes uintPtrAtOffset: _OffsetOf_texture put: aSDL_GPUTexture yourAddress! !

!SDL_GPUTextureSamplerBinding categoriesForMethods!
sampler!**compiled accessors**!public! !
sampler:!**compiled accessors**!public! !
texture!**compiled accessors**!public! !
texture:!**compiled accessors**!public! !
!

!SDL_GPUTextureSamplerBinding class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (PointerField type: SDL_GPUTexture);
		defineField: #sampler type: (PointerField type: SDL_GPUSampler)!

getFieldNames
	^#(#texture #sampler)!

texture: aGPUTexture sampler: aGPUSampler
	^self new
		texture: aGPUTexture;
		sampler: aGPUSampler! !

!SDL_GPUTextureSamplerBinding class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
texture:sampler:!public! !
!

