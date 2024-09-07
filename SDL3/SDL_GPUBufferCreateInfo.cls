"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUBufferCreateInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_props _OffsetOf_size _OffsetOf_usage'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUBufferCreateInfo guid: (GUID fromString: '{5b61c20c-1c79-4152-a6ee-31871e2de075}')!

SDL_GPUBufferCreateInfo addClassConstant: '_OffsetOf_props' value: 16r8!
SDL_GPUBufferCreateInfo addClassConstant: '_OffsetOf_size' value: 16r4!
SDL_GPUBufferCreateInfo addClassConstant: '_OffsetOf_usage' value: 16r0!

SDL_GPUBufferCreateInfo comment: ''!

!SDL_GPUBufferCreateInfo categoriesForClass!External-Data-Structured! !

!SDL_GPUBufferCreateInfo methodsFor!

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

	^bytes dwordAtOffset: _OffsetOf_usage!

usage: anInteger
	"Set the receiver's 'usage' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_usage put: anInteger! !

!SDL_GPUBufferCreateInfo categoriesForMethods!
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
size!**compiled accessors**!public! !
size:!**compiled accessors**!public! !
usage!**compiled accessors**!public! !
usage:!**compiled accessors**!public! !
!

!SDL_GPUBufferCreateInfo class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #usage type: DWORDField new;
		defineField: #size type: DWORDField new;
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#usage #size #props)! !

!SDL_GPUBufferCreateInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

