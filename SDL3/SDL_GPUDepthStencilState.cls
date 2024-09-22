"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUDepthStencilState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_back_stencil_state _OffsetOf_compare_mask _OffsetOf_compare_op _OffsetOf_enable_depth_test _OffsetOf_enable_depth_write _OffsetOf_enable_stencil_test _OffsetOf_front_stencil_state _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_write_mask'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUDepthStencilState guid: (GUID fromString: '{053b30c9-878b-48a1-83a1-61c2ae729580}')!

SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_back_stencil_state' value: 16r8!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_compare_mask' value: 16r28!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_compare_op' value: 16r4!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_enable_depth_test' value: 16r0!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_enable_depth_write' value: 16r1!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_enable_stencil_test' value: 16r2!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_front_stencil_state' value: 16r18!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_padding1' value: 16r3!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_padding2' value: 16r2A!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_padding3' value: 16r2B!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_write_mask' value: 16r29!

SDL_GPUDepthStencilState comment: ''!

!SDL_GPUDepthStencilState categoriesForClass!External-Data-Structured! !

!SDL_GPUDepthStencilState methodsFor!

back_stencil_state
	"Answer the <SDL_GPUStencilOpState> value of the receiver's 'back_stencil_state' field."

	^SDL_GPUStencilOpState fromAddress: bytes yourAddress + _OffsetOf_back_stencil_state!

back_stencil_state: aSDL_GPUStencilOpState
	"Set the receiver's 'back_stencil_state' field to the value of the argument, aSDL_GPUStencilOpState"

	aSDL_GPUStencilOpState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_back_stencil_state + 1)
		to: ##(_OffsetOf_back_stencil_state + SDL_GPUStencilOpState basicByteSize)
		startingAt: 1!

compare_mask
	"Answer the <Integer> value of the receiver's 'compare_mask' field."

	^bytes byteAtOffset: _OffsetOf_compare_mask!

compare_mask: anInteger
	"Set the receiver's 'compare_mask' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_compare_mask put: anInteger!

compare_op
	"Answer the <Integer> value of the receiver's 'compare_op' field."

	^bytes sdwordAtOffset: _OffsetOf_compare_op!

compare_op: anInteger
	"Set the receiver's 'compare_op' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_compare_op put: anInteger!

enable_depth_test
	"Answer the <Boolean> value of the receiver's 'enable_depth_test' field."

	^(bytes byteAtOffset: _OffsetOf_enable_depth_test) asBoolean!

enable_depth_test: aBoolean
	"Set the receiver's 'enable_depth_test' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_depth_test put: aBoolean asParameter!

enable_depth_write
	"Answer the <Boolean> value of the receiver's 'enable_depth_write' field."

	^(bytes byteAtOffset: _OffsetOf_enable_depth_write) asBoolean!

enable_depth_write: aBoolean
	"Set the receiver's 'enable_depth_write' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_depth_write put: aBoolean asParameter!

enable_stencil_test
	"Answer the <Boolean> value of the receiver's 'enable_stencil_test' field."

	^(bytes byteAtOffset: _OffsetOf_enable_stencil_test) asBoolean!

enable_stencil_test: aBoolean
	"Set the receiver's 'enable_stencil_test' field to the value of the argument, aBoolean"

	bytes byteAtOffset: _OffsetOf_enable_stencil_test put: aBoolean asParameter!

front_stencil_state
	"Answer the <SDL_GPUStencilOpState> value of the receiver's 'front_stencil_state' field."

	^SDL_GPUStencilOpState fromAddress: bytes yourAddress + _OffsetOf_front_stencil_state!

front_stencil_state: aSDL_GPUStencilOpState
	"Set the receiver's 'front_stencil_state' field to the value of the argument, aSDL_GPUStencilOpState"

	aSDL_GPUStencilOpState
		replaceBytesOf: bytes
		from: ##(_OffsetOf_front_stencil_state + 1)
		to: ##(_OffsetOf_front_stencil_state + SDL_GPUStencilOpState basicByteSize)
		startingAt: 1!

write_mask
	"Answer the <Integer> value of the receiver's 'write_mask' field."

	^bytes byteAtOffset: _OffsetOf_write_mask!

write_mask: anInteger
	"Set the receiver's 'write_mask' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_write_mask put: anInteger! !

!SDL_GPUDepthStencilState categoriesForMethods!
back_stencil_state!public! !
back_stencil_state:!public! !
compare_mask!public! !
compare_mask:!public! !
compare_op!public! !
compare_op:!public! !
enable_depth_test!public! !
enable_depth_test:!public! !
enable_depth_write!public! !
enable_depth_write:!public! !
enable_stencil_test!public! !
enable_stencil_test:!public! !
front_stencil_state!public! !
front_stencil_state:!public! !
write_mask!public! !
write_mask:!public! !
!

!SDL_GPUDepthStencilState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #compare_op type: SDWORDField new;
		defineField: #back_stencil_state type: (StructureField type: SDL_GPUStencilOpState);
		defineField: #front_stencil_state type: (StructureField type: SDL_GPUStencilOpState);
		defineField: #compare_mask type: BYTEField new;
		defineField: #write_mask type: BYTEField new;
		defineField: #enable_depth_test type: BOOLEANField new;
		defineField: #enable_depth_write type: BOOLEANField new;
		defineField: #enable_stencil_test type: BOOLEANField new;
		defineField: #padding1 type: BYTEField new beFiller;
		defineField: #padding2 type: BYTEField new beFiller;
		defineField: #padding3 type: BYTEField new beFiller!

getFieldNames
	^#(#enable_depth_test #enable_depth_write #enable_stencil_test #compare_op #back_stencil_state #front_stencil_state #compare_mask #write_mask)! !

!SDL_GPUDepthStencilState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

