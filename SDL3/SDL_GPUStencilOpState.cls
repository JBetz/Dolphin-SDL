"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUStencilOpState
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_compare_op _OffsetOf_depth_fail_op _OffsetOf_fail_op _OffsetOf_pass_op'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUStencilOpState guid: (GUID fromString: '{f18fc2cb-1a85-433f-b034-d1949321f615}')!

SDL_GPUStencilOpState addClassConstant: '_OffsetOf_compare_op' value: 16rC!
SDL_GPUStencilOpState addClassConstant: '_OffsetOf_depth_fail_op' value: 16r8!
SDL_GPUStencilOpState addClassConstant: '_OffsetOf_fail_op' value: 16r0!
SDL_GPUStencilOpState addClassConstant: '_OffsetOf_pass_op' value: 16r4!

SDL_GPUStencilOpState comment: ''!

!SDL_GPUStencilOpState categoriesForClass!External-Data-Structured! !

!SDL_GPUStencilOpState methodsFor!

compare_op
	"Answer the <Integer> value of the receiver's 'compare_op' field."

	^bytes dwordAtOffset: _OffsetOf_compare_op!

compare_op: anInteger
	"Set the receiver's 'compare_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_compare_op put: anInteger!

depth_fail_op
	"Answer the <Integer> value of the receiver's 'depth_fail_op' field."

	^bytes dwordAtOffset: _OffsetOf_depth_fail_op!

depth_fail_op: anInteger
	"Set the receiver's 'depth_fail_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_depth_fail_op put: anInteger!

fail_op
	"Answer the <Integer> value of the receiver's 'fail_op' field."

	^bytes dwordAtOffset: _OffsetOf_fail_op!

fail_op: anInteger
	"Set the receiver's 'fail_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_fail_op put: anInteger!

pass_op
	"Answer the <Integer> value of the receiver's 'pass_op' field."

	^bytes dwordAtOffset: _OffsetOf_pass_op!

pass_op: anInteger
	"Set the receiver's 'pass_op' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_pass_op put: anInteger! !

!SDL_GPUStencilOpState categoriesForMethods!
compare_op!**compiled accessors**!public! !
compare_op:!**compiled accessors**!public! !
depth_fail_op!**compiled accessors**!public! !
depth_fail_op:!**compiled accessors**!public! !
fail_op!**compiled accessors**!public! !
fail_op:!**compiled accessors**!public! !
pass_op!**compiled accessors**!public! !
pass_op:!**compiled accessors**!public! !
!

!SDL_GPUStencilOpState class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #fail_op type: DWORDField new;
		defineField: #pass_op type: DWORDField new;
		defineField: #depth_fail_op type: DWORDField new;
		defineField: #compare_op type: DWORDField new!

getFieldNames
	^#(#fail_op #pass_op #depth_fail_op #compare_op)! !

!SDL_GPUStencilOpState class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

