"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #SDL3ShadercrossLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL3ShadercrossLibrary guid: (GUID fromString: '{ddf2b5f6-e4f7-4b58-8f49-33f954489bd8}')!

SDL3ShadercrossLibrary comment: ''!

!SDL3ShadercrossLibrary categoriesForClass!External-Libraries! !

!SDL3ShadercrossLibrary methodsFor!

compileDXILFromHLSL_info: info size: size
	<cdecl: void* SDL_ShaderCross_CompileDXILFromHLSL SDL_ShaderCross_HLSL_Info* dword*>
	^self invalidCall: _failureCode!

compileGraphicsShaderFromSPIRV_device: device info: info metadata: metadata props: props
	<cdecl: SDL_GPUShader* SDL_ShaderCross_CompileGraphicsShaderFromSPIRV SDL_GPUDevice* SDL_ShaderCross_SPIRV_Info* SDL_ShaderCross_GraphicsShaderMetadata* dword>
	^self invalidCall: _failureCode!

compileSPIRVFromHLSL_info: info size: size
	<cdecl: void* SDL_ShaderCross_CompileSPIRVFromHLSL SDL_ShaderCross_HLSL_Info* dword*>
	^self invalidCall: _failureCode!

getHLSLShaderFormats
	<cdecl: sdword SDL_ShaderCross_GetHLSLShaderFormats>
	^self invalidCall: _failureCode!

init
	<cdecl: bool SDL_ShaderCross_Init>
	^self invalidCall: _failureCode!

quit
	<cdecl: void SDL_ShaderCross_Quit>
	^self invalidCall: _failureCode!

reflectGraphicsSPIRV_bytecode: bytecode bytecode_size: bytecode_size props: props
	<cdecl: SDL_ShaderCross_GraphicsShaderMetadata* SDL_ShaderCross_ReflectGraphicsSPIRV byte* dword dword>
	^self invalidCall: _failureCode! !

!SDL3ShadercrossLibrary categoriesForMethods!
compileDXILFromHLSL_info:size:!public! !
compileGraphicsShaderFromSPIRV_device:info:metadata:props:!public! !
compileSPIRVFromHLSL_info:size:!public! !
getHLSLShaderFormats!public! !
init!public! !
quit!public! !
reflectGraphicsSPIRV_bytecode:bytecode_size:props:!public! !
!

!SDL3ShadercrossLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'SDL3_shadercross'! !

!SDL3ShadercrossLibrary class categoriesForMethods!
fileName!public! !
!

