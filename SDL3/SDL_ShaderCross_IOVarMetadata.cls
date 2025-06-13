"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_ShaderCross_IOVarMetadata
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_location _OffsetOf_name _OffsetOf_offset _OffsetOf_vector_size _OffsetOf_vector_type'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_ShaderCross_IOVarMetadata guid: (GUID fromString: '{1226301b-df88-4abf-ae0b-9d3dc1fba265}')!

SDL_ShaderCross_IOVarMetadata addClassConstant: '_OffsetOf_location' value: 16r4!
SDL_ShaderCross_IOVarMetadata addClassConstant: '_OffsetOf_name' value: 16r0!
SDL_ShaderCross_IOVarMetadata addClassConstant: '_OffsetOf_offset' value: 16r8!
SDL_ShaderCross_IOVarMetadata addClassConstant: '_OffsetOf_vector_size' value: 16r10!
SDL_ShaderCross_IOVarMetadata addClassConstant: '_OffsetOf_vector_type' value: 16rC!

SDL_ShaderCross_IOVarMetadata comment: ''!

!SDL_ShaderCross_IOVarMetadata categoriesForClass!External-Data-Structured! !

!SDL_ShaderCross_IOVarMetadata methodsFor!

location
	"Answer the <Integer> value of the receiver's 'location' field."

	^bytes dwordAtOffset: _OffsetOf_location!

location: anInteger
	"Set the receiver's 'location' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_location put: anInteger!

name
	"Answer the <Utf8String> value of the receiver's 'name' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_name)!

name: anUtf8String
	"Set the receiver's 'name' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_name put: anUtf8String yourAddress!

offset
	"Answer the <Integer> value of the receiver's 'offset' field."

	^bytes dwordAtOffset: _OffsetOf_offset!

offset: anInteger
	"Set the receiver's 'offset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_offset put: anInteger!

vector_size
	"Answer the <Integer> value of the receiver's 'vector_size' field."

	^bytes dwordAtOffset: _OffsetOf_vector_size!

vector_size: anInteger
	"Set the receiver's 'vector_size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_vector_size put: anInteger!

vector_type
	"Answer the <Integer> value of the receiver's 'vector_type' field."

	^bytes dwordAtOffset: _OffsetOf_vector_type!

vector_type: anInteger
	"Set the receiver's 'vector_type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_vector_type put: anInteger! !

!SDL_ShaderCross_IOVarMetadata categoriesForMethods!
location!**compiled accessors**!public! !
location:!**compiled accessors**!public! !
name!**compiled accessors**!public! !
name:!**compiled accessors**!public! !
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
vector_size!**compiled accessors**!public! !
vector_size:!**compiled accessors**!public! !
vector_type!**compiled accessors**!public! !
vector_type:!**compiled accessors**!public! !
!

!SDL_ShaderCross_IOVarMetadata class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #name type: (PointerField type: Utf8String);
		defineField: #location type: DWORDField new;
		defineField: #offset type: DWORDField new;
		defineField: #vector_type type: DWORDField new;
		defineField: #vector_size type: DWORDField new!

getFieldNames
	^#(#name #location #offset #vector_type #vector_size)! !

!SDL_ShaderCross_IOVarMetadata class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

