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

compileGraphicsShaderFromHLSL_device: device info: info metadata: metadata
	<cdecl: SDL_GPUShader* SDL_ShaderCross_CompileGraphicsShaderFromHLSL SDL_GPUDevice* SDL_ShaderCross_HLSL_Info* SDL_ShaderCross_GraphicsShaderMetadata*>
	^self invalidCall: _failureCode!

getHLSLShaderFormats
	<cdecl: sdword SDL_ShaderCross_GetHLSLShaderFormats>
	^self invalidCall: _failureCode!

init
	<cdecl: bool SDL_ShaderCross_Init>
	^self invalidCall: _failureCode!

quit
	<cdecl: void SDL_ShaderCross_Quit>
	^self invalidCall: _failureCode! !

!SDL3ShadercrossLibrary categoriesForMethods!
compileDXILFromHLSL_info:size:!public! !
compileGraphicsShaderFromHLSL_device:info:metadata:!public! !
getHLSLShaderFormats!public! !
init!public! !
quit!public! !
!

!SDL3ShadercrossLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'SDL3_shadercross'! !

!SDL3ShadercrossLibrary class categoriesForMethods!
fileName!public! !
!

