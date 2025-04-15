"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_ShaderCross_HLSL_Info
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_defines _OffsetOf_enable_debug _OffsetOf_entrypoint _OffsetOf_include_dir _OffsetOf_name _OffsetOf_props _OffsetOf_shader_stage _OffsetOf_source'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_ShaderCross_HLSL_Info guid: (GUID fromString: '{d7020c5f-8807-40b2-9b51-2968a6a83951}')!

SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_defines' value: 16rC!
SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_enable_debug' value: 16r14!
SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_entrypoint' value: 16r4!
SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_include_dir' value: 16r8!
SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_name' value: 16r18!
SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_props' value: 16r1C!
SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_shader_stage' value: 16r10!
SDL_ShaderCross_HLSL_Info addClassConstant: '_OffsetOf_source' value: 16r0!

SDL_ShaderCross_HLSL_Info comment: ''!

!SDL_ShaderCross_HLSL_Info categoriesForClass!External-Data-Structured! !

!SDL_ShaderCross_HLSL_Info methodsFor!

defines
	"Answer the <SDL_ShaderCross_HLSL_Define> value of the receiver's 'defines' field."

	^SDL_ShaderCross_HLSL_Define fromAddress: (bytes intPtrAtOffset: _OffsetOf_defines)!

defines: aSDL_ShaderCross_HLSL_Define
	"Set the receiver's 'defines' field to the value of the argument, aSDL_ShaderCross_HLSL_Define"

	bytes uintPtrAtOffset: _OffsetOf_defines put: aSDL_ShaderCross_HLSL_Define yourAddress!

enable_debug
	"Answer the <Boolean> value of the receiver's 'enable_debug' field."

	^(bytes dwordAtOffset: _OffsetOf_enable_debug) asBoolean!

enable_debug: aBoolean
	"Set the receiver's 'enable_debug' field to the value of the argument, aBoolean"

	bytes dwordAtOffset: _OffsetOf_enable_debug put: aBoolean asParameter!

entrypoint
	"Answer the <Utf8String> value of the receiver's 'entrypoint' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_entrypoint)!

entrypoint: anUtf8String
	"Set the receiver's 'entrypoint' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_entrypoint put: anUtf8String yourAddress!

include_dir
	"Answer the <Utf8String> value of the receiver's 'include_dir' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_include_dir)!

include_dir: anUtf8String
	"Set the receiver's 'include_dir' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_include_dir put: anUtf8String yourAddress!

name
	"Answer the <Utf8String> value of the receiver's 'name' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_name)!

name: anUtf8String
	"Set the receiver's 'name' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_name put: anUtf8String yourAddress!

props
	"Answer the <Integer> value of the receiver's 'props' field."

	^bytes sdwordAtOffset: _OffsetOf_props!

props: anInteger
	"Set the receiver's 'props' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_props put: anInteger!

shader_stage
	"Answer the <Integer> value of the receiver's 'shader_stage' field."

	^bytes sdwordAtOffset: _OffsetOf_shader_stage!

shader_stage: anInteger
	"Set the receiver's 'shader_stage' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_shader_stage put: anInteger!

source
	"Answer the <Utf8String> value of the receiver's 'source' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_source)!

source: anUtf8String
	"Set the receiver's 'source' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_source put: anUtf8String yourAddress! !

!SDL_ShaderCross_HLSL_Info categoriesForMethods!
defines!**compiled accessors**!public! !
defines:!**compiled accessors**!public! !
enable_debug!**compiled accessors**!public! !
enable_debug:!**compiled accessors**!public! !
entrypoint!**compiled accessors**!public! !
entrypoint:!**compiled accessors**!public! !
include_dir!**compiled accessors**!public! !
include_dir:!**compiled accessors**!public! !
name!**compiled accessors**!public! !
name:!**compiled accessors**!public! !
props!**compiled accessors**!public! !
props:!**compiled accessors**!public! !
shader_stage!**compiled accessors**!public! !
shader_stage:!**compiled accessors**!public! !
source!**compiled accessors**!public! !
source:!**compiled accessors**!public! !
!

!SDL_ShaderCross_HLSL_Info class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #source type: (PointerField type: Utf8String);
		defineField: #entrypoint type: (PointerField type: Utf8String);
		defineField: #include_dir type: (PointerField type: Utf8String);
		defineField: #defines type: (PointerField type: SDL_ShaderCross_HLSL_Define);
		defineField: #shader_stage type: SDWORDField new;
		defineField: #enable_debug type: BOOLField new;
		defineField: #name type: (PointerField type: Utf8String);
		defineField: #props type: SDWORDField new!

getFieldNames
	^#(#source #entrypoint #include_dir #defines #shader_stage #enable_debug #name #props)! !

!SDL_ShaderCross_HLSL_Info class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

