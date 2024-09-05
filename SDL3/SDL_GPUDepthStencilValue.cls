"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUDepthStencilValue
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_depth _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_stencil'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUDepthStencilValue guid: (GUID fromString: '{d56e4932-eccd-450d-a2ef-8bdb8a2b31e9}')!

SDL_GPUDepthStencilValue addClassConstant: '_OffsetOf_depth' value: 16r0!
SDL_GPUDepthStencilValue addClassConstant: '_OffsetOf_padding1' value: 16r5!
SDL_GPUDepthStencilValue addClassConstant: '_OffsetOf_padding2' value: 16r6!
SDL_GPUDepthStencilValue addClassConstant: '_OffsetOf_padding3' value: 16r7!
SDL_GPUDepthStencilValue addClassConstant: '_OffsetOf_stencil' value: 16r4!

SDL_GPUDepthStencilValue comment: ''!

!SDL_GPUDepthStencilValue categoriesForClass!External-Data-Structured! !

!SDL_GPUDepthStencilValue methodsFor!

depth
	"Answer the <Float> value of the receiver's 'depth' field."

	^bytes floatAtOffset: _OffsetOf_depth!

depth: aFloat
	"Set the receiver's 'depth' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_depth put: aFloat!

stencil
	"Answer the <Integer> value of the receiver's 'stencil' field."

	^bytes byteAtOffset: _OffsetOf_stencil!

stencil: anInteger
	"Set the receiver's 'stencil' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_stencil put: anInteger! !

!SDL_GPUDepthStencilValue categoriesForMethods!
depth!**compiled accessors**!public! !
depth:!**compiled accessors**!public! !
stencil!**compiled accessors**!public! !
stencil:!**compiled accessors**!public! !
!

!SDL_GPUDepthStencilValue class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #depth type: FLOATField new;
		defineField: #stencil type: BYTEField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller!

getFieldNames
	^#(#depth #stencil)! !

!SDL_GPUDepthStencilValue class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

