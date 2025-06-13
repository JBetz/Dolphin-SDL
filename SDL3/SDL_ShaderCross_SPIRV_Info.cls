"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_ShaderCross_SPIRV_Info
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_bytecode _OffsetOf_bytecode_size _OffsetOf_enable_debug _OffsetOf_entrypoint _OffsetOf_name _OffsetOf_props _OffsetOf_shader_stage'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_ShaderCross_SPIRV_Info guid: (GUID fromString: '{e2c098df-18d1-435e-a7d2-55655dd47a8c}')!

SDL_ShaderCross_SPIRV_Info addClassConstant: '_OffsetOf_bytecode' value: 16r0!
SDL_ShaderCross_SPIRV_Info addClassConstant: '_OffsetOf_bytecode_size' value: 16r4!
SDL_ShaderCross_SPIRV_Info addClassConstant: '_OffsetOf_enable_debug' value: 16r10!
SDL_ShaderCross_SPIRV_Info addClassConstant: '_OffsetOf_entrypoint' value: 16r8!
SDL_ShaderCross_SPIRV_Info addClassConstant: '_OffsetOf_name' value: 16r14!
SDL_ShaderCross_SPIRV_Info addClassConstant: '_OffsetOf_props' value: 16r18!
SDL_ShaderCross_SPIRV_Info addClassConstant: '_OffsetOf_shader_stage' value: 16rC!

SDL_ShaderCross_SPIRV_Info comment: ''!

!SDL_ShaderCross_SPIRV_Info categoriesForClass!External-Data-Structured! !

!SDL_ShaderCross_SPIRV_Info methodsFor!

bytecode
	"Answer the <ByteArray> value of the receiver's 'bytecode' field."

	^ByteArray fromAddress: (bytes intPtrAtOffset: _OffsetOf_bytecode) length: self bytecode_size!

bytecode: aByteArray
	"Set the receiver's 'bytecode' field to the value of the argument, aByteArray"

	bytes uintPtrAtOffset: _OffsetOf_bytecode put: aByteArray yourAddress.
	self bytecode_size: aByteArray size!

bytecode_size
	"Answer the <Integer> value of the receiver's 'bytecode_size' field."

	^bytes dwordAtOffset: _OffsetOf_bytecode_size!

bytecode_size: anInteger
	"Set the receiver's 'bytecode_size' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_bytecode_size put: anInteger!

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

	bytes sdwordAtOffset: _OffsetOf_shader_stage put: anInteger! !

!SDL_ShaderCross_SPIRV_Info categoriesForMethods!
bytecode!**compiled accessors**!public! !
bytecode:!**compiled accessors**!public! !
bytecode_size!public! !
bytecode_size:!public! !
enable_debug!public! !
enable_debug:!public! !
entrypoint!public! !
entrypoint:!public! !
name!public! !
name:!public! !
props!public! !
props:!public! !
shader_stage!public! !
shader_stage:!public! !
!

!SDL_ShaderCross_SPIRV_Info class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #bytecode type: (ArrayPointerField type: ByteArray lengthField: #bytecode_size);
		defineField: #bytecode_size type: DWORDField new;
		defineField: #entrypoint type: (PointerField type: Utf8String);
		defineField: #shader_stage type: SDWORDField new;
		defineField: #enable_debug type: BOOLField new;
		defineField: #name type: (PointerField type: Utf8String);
		defineField: #props type: DWORDField new!

getFieldNames
	^#(#bytecode #bytecode_size #entrypoint #shader_stage #enable_debug #name #props)! !

!SDL_ShaderCross_SPIRV_Info class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

