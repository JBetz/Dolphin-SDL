"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUTransferBufferCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_props _OffsetOf_size _OffsetOf_usage'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUTransferBufferCreateInfo guid: (GUID fromString: '{ab57cf1e-5de0-491a-a644-78623f2b66c0}')!

SDL_GPUTransferBufferCreateInfo addClassConstant: '_OffsetOf_props' value: 16r8!
SDL_GPUTransferBufferCreateInfo addClassConstant: '_OffsetOf_size' value: 16r4!
SDL_GPUTransferBufferCreateInfo addClassConstant: '_OffsetOf_usage' value: 16r0!

SDL_GPUTransferBufferCreateInfo comment: ''!

!SDL_GPUTransferBufferCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUTransferBufferCreateInfo methodsFor!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes dwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_props put: anInteger!

size
	"Answer the <Integer> value of the receiver's 'size' field."

	^bytes dwordAtOffset: _OffsetOf_size!

size: anInteger
	"Set the receiver's 'size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_size put: anInteger!

usage
	"Answer the <Integer> value of the receiver's 'usage' field."

	^bytes sdwordAtOffset: _OffsetOf_usage!

usage: anInteger
	"Set the receiver's 'usage' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_usage put: anInteger! !

!SDL_GPUTransferBufferCreateInfo categoriesForMethods!
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
size!**compiled accessors**!public! !
size:!**compiled accessors**!public! !
usage!**compiled accessors**!public! !
usage:!**compiled accessors**!public! !
!

!SDL_GPUTransferBufferCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #usage type: SDWORDField new;
		defineField: #size type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#usage #size #props)! !

!SDL_GPUTransferBufferCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

