"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUDepthStencilState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_back_stencil_state _OffsetOf_compare_mask _OffsetOf_compare_op _OffsetOf_depth_test_enable _OffsetOf_depth_write_enable _OffsetOf_front_stencil_state _OffsetOf_reference _OffsetOf_stencil_test_enable _OffsetOf_write_mask'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUDepthStencilState guid: (GUID fromString: '{053b30c9-878b-48a1-83a1-61c2ae729580}')!

SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_back_stencil_state' value: 16r10!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_compare_mask' value: 16r30!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_compare_op' value: 16r8!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_depth_test_enable' value: 16r0!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_depth_write_enable' value: 16r4!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_front_stencil_state' value: 16r20!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_reference' value: 16r32!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_stencil_test_enable' value: 16rC!
SDL_GPUDepthStencilState addClassConstant: '_OffsetOf_write_mask' value: 16r31!

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

depth_test_enable
	"Answer the <Boolean> value of the receiver's 'depth_test_enable' field."

	^(bytes dwordAtOffset: _OffsetOf_depth_test_enable) asBoolean!

depth_test_enable: aBoolean
	"Set the receiver's 'depth_test_enable' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_depth_test_enable put: aBoolean asParameter!

depth_write_enable
	"Answer the <Boolean> value of the receiver's 'depth_write_enable' field."

	^(bytes dwordAtOffset: _OffsetOf_depth_write_enable) asBoolean!

depth_write_enable: aBoolean
	"Set the receiver's 'depth_write_enable' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_depth_write_enable put: aBoolean asParameter!

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

reference
	"Answer the <Integer> value of the receiver's 'reference' field."

	^bytes byteAtOffset: _OffsetOf_reference!

reference: anInteger
	"Set the receiver's 'reference' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_reference put: anInteger!

stencil_test_enable
	"Answer the <Boolean> value of the receiver's 'stencil_test_enable' field."

	^(bytes dwordAtOffset: _OffsetOf_stencil_test_enable) asBoolean!

stencil_test_enable: aBoolean
	"Set the receiver's 'stencil_test_enable' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_stencil_test_enable put: aBoolean asParameter!

write_mask
	"Answer the <Integer> value of the receiver's 'write_mask' field."

	^bytes byteAtOffset: _OffsetOf_write_mask!

write_mask: anInteger
	"Set the receiver's 'write_mask' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_write_mask put: anInteger! !

!SDL_GPUDepthStencilState categoriesForMethods!
back_stencil_state!**compiled accessors**!public! !
back_stencil_state:!**compiled accessors**!public! !
compare_mask!**compiled accessors**!public! !
compare_mask:!**compiled accessors**!public! !
compare_op!**compiled accessors**!public! !
compare_op:!**compiled accessors**!public! !
depth_test_enable!**compiled accessors**!public! !
depth_test_enable:!**compiled accessors**!public! !
depth_write_enable!**compiled accessors**!public! !
depth_write_enable:!**compiled accessors**!public! !
front_stencil_state!**compiled accessors**!public! !
front_stencil_state:!**compiled accessors**!public! !
reference!**compiled accessors**!public! !
reference:!**compiled accessors**!public! !
stencil_test_enable!**compiled accessors**!public! !
stencil_test_enable:!**compiled accessors**!public! !
write_mask!**compiled accessors**!public! !
write_mask:!**compiled accessors**!public! !
!

!SDL_GPUDepthStencilState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #depth_test_enable type: BOOLField new;
		defineField: #depth_write_enable type: BOOLField new;
		defineField: #compare_op type: SDWORDField new;
		defineField: #stencil_test_enable type: BOOLField new;
		defineField: #back_stencil_state type: (StructureField type: SDL_GPUStencilOpState);
		defineField: #front_stencil_state type: (StructureField type: SDL_GPUStencilOpState);
		defineField: #compare_mask type: BYTEField new;
		defineField: #write_mask type: BYTEField new;
		defineField: #reference type: BYTEField new!

getFieldNames
	^#(#depth_test_enable #depth_write_enable #compare_op #stencil_test_enable #back_stencil_state #front_stencil_state #compare_mask #write_mask #reference)! !

!SDL_GPUDepthStencilState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

