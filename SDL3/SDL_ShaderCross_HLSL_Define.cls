"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_ShaderCross_HLSL_Define
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_name _OffsetOf_value'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_ShaderCross_HLSL_Define guid: (GUID fromString: '{7bfe643b-21d8-4579-a499-59973d79292e}')!

SDL_ShaderCross_HLSL_Define addClassConstant: '_OffsetOf_name' value: 16r0!
SDL_ShaderCross_HLSL_Define addClassConstant: '_OffsetOf_value' value: 16r4!

SDL_ShaderCross_HLSL_Define comment: ''!

!SDL_ShaderCross_HLSL_Define categoriesForClass!External-Data-Structured! !

!SDL_ShaderCross_HLSL_Define methodsFor!

name
	"Answer the <Utf8String> value of the receiver's 'name' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_name)!

name: anUtf8String
	"Set the receiver's 'name' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_name put: anUtf8String yourAddress!

value
	"Answer the <Utf8String> value of the receiver's 'value' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_value)!

value: anUtf8String
	"Set the receiver's 'value' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_value put: anUtf8String yourAddress! !

!SDL_ShaderCross_HLSL_Define categoriesForMethods!
name!**compiled accessors**!public! !
name:!**compiled accessors**!public! !
value!**compiled accessors**!public! !
value:!**compiled accessors**!public! !
!

!SDL_ShaderCross_HLSL_Define class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #name type: (PointerField type: Utf8String);
		defineField: #value type: (PointerField type: Utf8String)!

getFieldNames
	^#(#name #value)! !

!SDL_ShaderCross_HLSL_Define class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

