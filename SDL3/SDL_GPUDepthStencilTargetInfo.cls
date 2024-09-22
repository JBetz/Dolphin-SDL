"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUDepthStencilTargetInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clear_depth _OffsetOf_clear_stencil _OffsetOf_cyle _OffsetOf_load_op _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_stencil_load_op _OffsetOf_stencil_store_op _OffsetOf_store_op _OffsetOf_texture'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUDepthStencilTargetInfo guid: (GUID fromString: '{8ba0b12c-e8f0-44b6-bca3-04793a379e8b}')!

SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_clear_depth' value: 16r4!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_clear_stencil' value: 16r19!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_cyle' value: 16r18!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_load_op' value: 16r8!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_padding1' value: 16r1A!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_padding2' value: 16r1B!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_stencil_load_op' value: 16r10!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_stencil_store_op' value: 16r14!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_store_op' value: 16rC!
SDL_GPUDepthStencilTargetInfo addClassConstant: '_OffsetOf_texture' value: 16r0!

SDL_GPUDepthStencilTargetInfo comment: ''!

!SDL_GPUDepthStencilTargetInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUDepthStencilTargetInfo methodsFor!

clear_depth
	"Answer the <Float> value of the receiver's 'clear_depth' field."

	^bytes floatAtOffset: _OffsetOf_clear_depth!

clear_depth: aFloat
	"Set the receiver's 'clear_depth' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_clear_depth put: aFloat!

clear_stencil
	"Answer the <Integer> value of the receiver's 'clear_stencil' field."

	^bytes byteAtOffset: _OffsetOf_clear_stencil!

clear_stencil: anInteger
	"Set the receiver's 'clear_stencil' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_clear_stencil put: anInteger!

clear_stencile
	"Answer the <Integer> value of the receiver's 'clear_stencile' field."

	^bytes byteAtOffset: _OffsetOf_clear_stencile!

clear_stencile: anInteger
	"Set the receiver's 'clear_stencile' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_clear_stencile put: anInteger!

cyle
	"Answer the <Boolean> value of the receiver's 'cyle' field."

	^(bytes byteAtOffset: _OffsetOf_cyle) asBoolean!

cyle: aBoolean
	"Set the receiver's 'cyle' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_cyle put: aBoolean asParameter!

load_op
	"Answer the <Integer> value of the receiver's 'load_op' field."

	^bytes sdwordAtOffset: _OffsetOf_load_op!

load_op: anInteger
	"Set the receiver's 'load_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_load_op put: anInteger!

stencil_load_op
	"Answer the <Integer> value of the receiver's 'stencil_load_op' field."

	^bytes sdwordAtOffset: _OffsetOf_stencil_load_op!

stencil_load_op: anInteger
	"Set the receiver's 'stencil_load_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_stencil_load_op put: anInteger!

stencil_store_op
	"Answer the <Integer> value of the receiver's 'stencil_store_op' field."

	^bytes sdwordAtOffset: _OffsetOf_stencil_store_op!

stencil_store_op: anInteger
	"Set the receiver's 'stencil_store_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_stencil_store_op put: anInteger!

store_op
	"Answer the <Integer> value of the receiver's 'store_op' field."

	^bytes sdwordAtOffset: _OffsetOf_store_op!

store_op: anInteger
	"Set the receiver's 'store_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_store_op put: anInteger!

texture
	"Answer the <SDL_GPUTexture> value of the receiver's 'texture' field."

	^SDL_GPUTexture fromAddress: (bytes intPtrAtOffset: _OffsetOf_texture)!

texture: aSDL_GPUTexture
	"Set the receiver's 'texture' field to the value of the argument, aSDL_GPUTexture"

	bytes uintPtrAtOffset: _OffsetOf_texture put: aSDL_GPUTexture yourAddress! !

!SDL_GPUDepthStencilTargetInfo categoriesForMethods!
clear_depth!public! !
clear_depth:!public! !
clear_stencil!**compiled accessors**!public! !
clear_stencil:!**compiled accessors**!public! !
clear_stencile!public! !
clear_stencile:!public! !
cyle!public! !
cyle:!public! !
load_op!public! !
load_op:!public! !
stencil_load_op!public! !
stencil_load_op:!public! !
stencil_store_op!public! !
stencil_store_op:!public! !
store_op!public! !
store_op:!public! !
texture!public! !
texture:!public! !
!

!SDL_GPUDepthStencilTargetInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #texture type: (PointerField type: SDL_GPUTexture);
		defineField: #clear_depth type: FLOATField new;
		defineField: #load_op type: SDWORDField new;
		defineField: #store_op type: SDWORDField new;
		defineField: #stencil_load_op type: SDWORDField new;
		defineField: #stencil_store_op type: SDWORDField new;
		defineField: #cyle type: BOOLEANField new;
		defineField: #clear_stencil type: BYTEField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller!

getFieldNames
	^#(#texture #clear_depth #load_op #store_op #stencil_load_op #stencil_store_op #cyle #clear_stencil)! !

!SDL_GPUDepthStencilTargetInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

