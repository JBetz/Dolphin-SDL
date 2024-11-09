"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #SDL3Library
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL3Library guid: (GUID fromString: '{d80d9ac6-6a3b-4435-927f-a7dec1b341ed}')!

SDL3Library comment: ''!

!SDL3Library categoriesForClass!External-Libraries! !

!SDL3Library methodsFor!

acquireGPUCommandBuffer_device: device
	<cdecl: SDL_GPUCommandBuffer* SDL_AcquireGPUCommandBuffer SDL_GPUDevice*>
	^self invalidCall: _failureCode!

acquireGPUSwapchainTexture_commandBuffer: commandBuffer window: window swapchainTexture: swapchainTexture swapchainTextureWidth: swapchainTextureWidth swapchainTextureHeight: swapchainTextureHeight
	<cdecl: bool SDL_AcquireGPUSwapchainTexture SDL_GPUCommandBuffer* SDL_Window* SDL_GPUTexture** dword* dword*>
	^self invalidCall: _failureCode!

addEventWatch_filter: filter userdata: userdata
	<cdecl: bool SDL_AddEventWatch SDL_EventFilter void*>
	^self invalidCall: _failureCode!

addTimer_interval: interval callback: callback param: param
	<cdecl: sdword SDL_AddTimer dword void* void*>
	^self invalidCall: _failureCode!

audioDevicePaused_devid: devid
	<cdecl: bool SDL_AudioDevicePaused dword>
	^self invalidCall: _failureCode!

beginGPUComputePass_commandBuffer: commandBuffer storageTextureBindings: storageTextureBindings numStorageTextureBindings: numStorageTextureBindings storageBufferBindings: storageBufferBindings numStorageBufferBindings: numStorageBufferBindings
	<cdecl: SDL_GPUComputePass* SDL_BeginGPUComputePass SDL_GPUCommandBuffer* SDL_GPUStorageTextureWriteOnlyBinding* dword SDL_GPUStorageBufferWriteOnlyBinding* dword>
	^self invalidCall: _failureCode!

beginGPUCopyPass_commandBuffer: commandBuffer
	<cdecl: SDL_GPUCopyPass* SDL_BeginGPUCopyPass SDL_GPUCommandBuffer*>
	^self invalidCall: _failureCode!

beginGPURenderPass_commandBuffer: commandBuffer colorTargetInfos: colorTargetInfos numColorTargets: numColorTargets depthStencilTargetInfo: depthStencilTargetInfo
	<cdecl: SDL_GPURenderPass* SDL_BeginGPURenderPass SDL_GPUCommandBuffer* SDL_GPUColorTargetInfo* dword SDL_GPUDepthStencilTargetInfo*>
	^self invalidCall: _failureCode!

bindAudioStream_devid: devid stream: stream
	<cdecl: bool SDL_BindAudioStreams dword SDL_AudioStream*>
	^self invalidCall: _failureCode!

bindAudioStreams_devid: devid streams: streams numStreams: numStreams
	<cdecl: bool SDL_BindAudioStreams dword SDL_AudioStream** sdword>
	^self invalidCall: _failureCode!

bindGPUComputePipeline_computePass: computePass computePipeline: computePipeline
	<cdecl: void SDL_BindGPUComputePipeline SDL_GPUComputePass* SDL_GPUComputePipeline*>
	^self invalidCall: _failureCode!

bindGPUComputeSamplers_computePass: computePass firstSlot: firstSlot textureSamplerBindings: textureSamplerBindings numBindings: numBindings
	<cdecl: void SDL_BindGPUComputeSamplers SDL_GPUComputePass* dword SDL_GPUTextureSamplerBinding* dword>
	^self invalidCall: _failureCode!

bindGPUComputeStorageBuffers_computePass: computePass firstSlot: firstSlot storageBuffers: storageBuffers numBindings: numBindings
	<cdecl: void SDL_BindGPUComputeStorageBuffers SDL_GPUComputePass* dword SDL_GPUBuffer** dword>
	^self invalidCall: _failureCode!

bindGPUComputeStorageTextures_computePass: computePass firstSlot: firstSlot storageTextures: storageTextures numBindings: numBindings
	<cdecl: void SDL_BindGPUComputStorageTextures SDL_GPUComputePass* dword SDL_GPUTexture** dword>
	^self invalidCall: _failureCode!

bindGPUFragmentSamplers_renderPass: renderPass firstSlot: firstSlot textureSamplerBindings: textureSamplerBindings numBindings: numBindings
	<cdecl: void SDL_BindGPUFragmentSamplers SDL_GPURenderPass* dword SDL_GPUTextureSamplerBinding* dword>
	^self invalidCall: _failureCode!

bindGPUFragmentStorageBuffers_renderPass: renderPass firstSlot: firstSlot storageBuffers: storageBuffers numBindings: numBindings
	<cdecl: void SDL_BindGPUFragmentStorageBuffers SDL_GPURenderPass* dword SDL_GPUBuffer** dword>
	^self invalidCall: _failureCode!

bindGPUFragmentStorageTextures_renderPass: renderPass firstSlot: firstSlot storageTextures: storageTextures numBindings: numBindings
	<cdecl: void SDL_BindGPUFragmentStorageTextures SDL_GPURenderPass* dword SDL_GPUTexture** dword>
	^self invalidCall: _failureCode!

bindGPUGraphicsPipeline_renderPass: renderPass graphicsPipeline: graphicsPipeline
	<cdecl: void SDL_BindGPUGraphicsPipeline SDL_GPURenderPass* SDL_GPUGraphicsPipeline*>
	^self invalidCall: _failureCode!

bindGPUIndexBuffer_renderPass: renderPass binding: binding indexElementSize: indexElementSize
	<cdecl: void SDL_BindGPUIndexBuffer SDL_GPURenderPass* SDL_GPUBufferBinding* sdword>
	^self invalidCall: _failureCode!

bindGPUVertexBuffers_renderPass: renderPass firstSlot: firstSlot bindings: bindings numBindings: numBindings
	<cdecl: void SDL_BindGPUVertexBuffers SDL_GPURenderPass* dword SDL_GPUBufferBinding* dword>
	^self invalidCall: _failureCode!

bindGPUVertexSamplers_renderPass: renderPass firstSlot: firstSlot textureSamplerBindings: textureSamplerBindings numBindings: numBindings
	<cdecl: void SDL_BindGPUVertexSamplers SDL_GPURenderPass* dword SDL_GPUTextureSamplerBinding* dword>
	^self invalidCall: _failureCode!

bindGPUVertexStorageBuffers_renderPass: renderPass firstSlot: firstSlot storageBuffers: storageBuffers numBindings: numBindings
	<cdecl: void SDL_BindGPUVertexStorageBuffers SDL_GPURenderPass* dword SDL_GPUBuffer** dword>
	^self invalidCall: _failureCode!

bindGPUVertexStorageTextures_renderPass: renderPass firstSlot: firstSlot storageTextures: storageTextures numBindings: numBindings
	<cdecl: void SDL_BindGPUVertexStorageTextures SDL_GPURenderPass* dword SDL_GPUTexture** dword>
	^self invalidCall: _failureCode!

blitGPUTexture_commandBuffer: commandBuffer info: info
	<cdecl: void SDL_BlitGPUTexture SDL_GPUCommandBuffer* SDL_GPUBlitInfo*>
	^self invalidCall: _failureCode!

blitSurface_src: src srcrect: srcrect dst: dst dstrect: dstrect
	<cdecl: bool SDL_UpperBlit SDL_Surface* SDL_Rect* SDL_Surface* SDL_Rect*>
	^self invalidCall: _failureCode!

calculateGPUTextureFormatSize_format: format width: width height: height depthOrLayerCount: depthOrLayerCount
	<cdecl: dword SDL_CalculateGPUTextureFormatSize sdword dword dword dword>
	^self invalidCall: _failureCode!

cancelGPUCommandBuffer_commandBuffer: commandBuffer
	<cdecl: bool SDL_CancelGPUCommandBuffer SDL_GPUCommandBuffer*>
	^self invalidCall: _failureCode!

claimWindowForGPUDevice_device: device window: window
	<cdecl: bool SDL_ClaimWindowForGPUDevice SDL_GPUDevice* SDL_Window*>
	^self invalidCall: _failureCode!

clearAudioStream_stream: stream
	<cdecl: bool SDL_ClearAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

clearProperty_props: props name: name
	<cdecl: bool SDL_ClearProperty dword lpstr>
	^self invalidCall: _failureCode!

closeAudioDevice_devid: devid
	<cdecl: void SDL_CloseAudioDevice dword>
	^self invalidCall: _failureCode!

convertSurface_surface: surface format: format
	<cdecl: SDL_Surface* SDL_ConvertSurface SDL_Surface* sdword>
	^self invalidCall: _failureCode!

copyFile_oldpath: oldpath newpath: newpath
	<cdecl: bool SDL_CopyFile char* char*>
	^self invalidCall: _failureCode!

copyGPUBufferToBuffer_copyPass: copyPass source: source destination: destination size: size cycle: cycle
	<cdecl: void SDL_CopyGPUBufferToBuffer SDL_GPUCopyPass* SDL_GPUBufferLocation* SDL_GPUBufferLocation* dword bool>
	^self invalidCall: _failureCode!

copyGPUTextureToTexture_copyPass: copyPass source: source destination: destination w: w h: h d: d cycle: cycle
	<cdecl: void SDL_CopyGPUTextureToTexture SDL_GPUCopyPass* SDL_GPUTextureLocation* SDL_GPUTextureLocation* dword dword dword bool>
	^self invalidCall: _failureCode!

copyProperties_src: src dst: dst
	<cdecl: bool SDL_CopyProperties dword dword>
	^self invalidCall: _failureCode!

createAudioStream_sourceSpec: sourceSpec destinationSpec: destinationSpec
	<cdecl: SDL_AudioStream* SDL_CreateAudioStream SDL_AudioSpec* SDL_AudioSpec*>
	^self invalidCall: _failureCode!

createCursor_data: data mask: mask w: w h: h hotX: hotX hotY: hotY
	<cdecl: SDL_Cursor* SDL_CreateCursor word* word* sdword sdword sdword sdword>
	^self invalidCall: _failureCode!

createDirectory_path: path
	<cdecl: bool SDL_CreateDirectory char*>
	^self invalidCall: _failureCode!

createGPUBuffer_device: device createinfo: createinfo
	<cdecl: SDL_GPUBuffer* SDL_CreateGPUBuffer SDL_GPUDevice* SDL_GPUBufferCreateInfo*>
	^self invalidCall: _failureCode!

createGPUComputePipeline_device: device createinfo: createinfo
	<cdecl: SDL_GPUComputePipeline* SDL_CreateGPUComputePipeline SDL_GPUDevice* SDL_GPUComputePipelineCreateInfo*>
	^self invalidCall: _failureCode!

createGPUDevice_formatFlags: formatFlags debugMode: debugMode name: name
	<cdecl: SDL_GPUDevice* SDL_CreateGPUDevice dword bool lpstr>
	^self invalidCall: _failureCode!

createGPUDeviceWithProperties_props: props
	<cdecl: SDL_GPUDevice* SDL_CreateGPUDeviceWithProperties dword>
	^self invalidCall: _failureCode!

createGPUGraphicsPipeline_device: device createinfo: createinfo
	<cdecl: SDL_GPUGraphicsPipeline* SDL_CreateGPUGraphicsPipeline SDL_GPUDevice* SDL_GPUGraphicsPipelineCreateInfo*>
	^self invalidCall: _failureCode!

createGPUSampler_device: device createinfo: samplerCreateInfo
	<cdecl: SDL_GPUSampler* SDL_CreateGPUSampler SDL_GPUDevice* SDL_GPUSamplerCreateInfo*>
	^self invalidCall: _failureCode!

createGPUShader_device: device createinfo: createinfo
	<cdecl: SDL_GPUShader* SDL_CreateGPUShader SDL_GPUDevice* SDL_GPUShaderCreateInfo*>
	^self invalidCall: _failureCode!

createGPUTexture_device: device createinfo: createinfo
	<cdecl: SDL_GPUTexture* SDL_CreateGPUTexture SDL_GPUDevice* SDL_GPUTextureCreateInfo*>
	^self invalidCall: _failureCode!

createGPUTransferBuffer_device: device createinfo: createinfo
	<cdecl: SDL_GPUTransferBuffer* SDL_CreateGPUTransferBuffer SDL_GPUDevice* SDL_GPUTransferBufferCreateInfo*>
	^self invalidCall: _failureCode!

createProperties
	<cdecl: dword SDL_CreateProperties>
	^self invalidCall: _failureCode!

createRenderer_window: window name: name
	<cdecl: SDL_Renderer* SDL_CreateRenderer SDL_Window* lpstr>
	^self invalidCall: _failureCode!

createSoftwareRenderer_surface: surface
	<cdecl: SDL_Renderer* SDL_CreateSoftwareRenderer SDL_Surface*>
	^self invalidCall: _failureCode!

createSurface_width: width height: height format: format
	<cdecl: SDL_Surface* SDL_CreateSurface sdword sdword dword>
	^self invalidCall: _failureCode!

createSurfaceFrom_pixels: pixels width: width height: height pitch: sdword format: format
	<cdecl: SDL_Surface* SDL_CreateSurfaceFrom void* sdword sdword sdword dword>
	^self invalidCall: _failureCode!

createSystemCursor_id: id
	<cdecl: SDL_Cursor* SDL_CreateSystemCursor sdword>
	^self invalidCall: _failureCode!

createTexture_renderer: renderer format: format access: access w: w h: h
	<cdecl: SDL_Texture* SDL_CreateTexture SDL_Renderer* dword sdword sdword sdword>
	^self invalidCall: _failureCode!

createTextureFromSurface_renderer: renderer surface: surface
	<cdecl: SDL_Texture* SDL_CreateTextureFromSurface SDL_Renderer* SDL_Surface*>
	^self invalidCall: _failureCode!

createWindow_title: title w: w h: h flags: flags
	<cdecl: SDL_Window* SDL_CreateWindow lpstr sdword sdword dword>
	^self invalidCall: _failureCode!

createWindowAndRenderer_title: title width: width height: height windowFlags: windowFlags window: window renderer: renderer
	<cdecl: bool SDL_CreateWindowAndRenderer lpstr sdword sdword dword SDL_Window** SDL_Renderer**>
	^self invalidCall: _failureCode!

delay_ms: ms
	<cdecl: void SDL_Delay dword>
	^self invalidCall: _failureCode!

delayNS_ns: ns
	<cdecl: void SDL_DelayNS qword>
	^self invalidCall: _failureCode!

delayPrecise_ns: ns
	<cdecl: void SDL_DelayPrecise qword>
	^self invalidCall: _failureCode!

destroyAudioStream_stream: stream
	<cdecl: void SDL_DestroyAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

destroyCursor_cursor: cursor
	<cdecl: void SDL_DestroyCursor SDL_Cursor*>
	^self invalidCall: _failureCode!

destroyGPUDevice_device: device
	<cdecl: void SDL_DestroyGPUDevice SDL_GPUDevice*>
	^self invalidCall: _failureCode!

destroyProperties_props: props
	<cdecl: void SDL_DestroyProperties dword>
	^self invalidCall: _failureCode!

destroyRenderer_renderer: renderer
	<cdecl: void SDL_DestroyRenderer SDL_Renderer*>
	^self invalidCall: _failureCode!

destroySurface_surface: surface
	<cdecl: void SDL_DestroySurface SDL_Surface*>
	^self invalidCall: _failureCode!

destroyTexture_texture: texture
	<cdecl: void SDL_DestroyTexture SDL_Texture*>
	^self invalidCall: _failureCode!

destroyWindow_window: window
	<cdecl: void SDL_DestroyWindow SDL_Window*>
	^self invalidCall: _failureCode!

dispatchGPUCompute_computePass: computePass groupcountX: groupcountX groupcountY: groupcountY groupcountZ: groupcountZ
	<cdecl: void SDL_DispatchGPUCompute SDL_GPUComputePass* dword dword dword>
	^self invalidCall: _failureCode!

dispatchGPUComputeIndirect_computePass: computePass buffer: buffer offset: offset
	<cdecl: void SDL_DispatchGPUComputeIndirect SDL_GPUComputePass* SDL_GPUBuffer* dword>
	^self invalidCall: _failureCode!

downloadFromGPUBuffer_copyPass: copyPass source: source destination: destionation
	<cdecl: void SDL_DownloadFromGPUBuffer SDL_GPUCopyPass* SDL_GPUBufferRegion* SDL_GPUTransferBufferLocation*>
	^self invalidCall: _failureCode!

downloadFromGPUTexture_copyPass: copyPass source: source destination: destination
	<cdecl: void SDL_DownloadFromGPUTexture SDL_GPUCopyPass* SDL_GPUTextureRegion* SDL_GPUTextureTransferInfo*>
	^self invalidCall: _failureCode!

drawGPUIndexedPrimitives_renderPass: renderPass numIndices: numIndices numInstances: numInstances firstIndex: firstIndex vertexOffset: vertexOffset firstIntance: firstInstance
	<cdecl: void SDL_DrawGPUIndexedPrimitives SDL_GPURenderPass* dword dword dword sdword dword>
	^self invalidCall: _failureCode!

drawGPUIndexedPrimitivesIndirect_renderPass: renderPass buffer: buffer offset: offset drawCount: drawCount
	<cdecl: void SDL_DrawGPUIndexedPrimitivesIndirect SDL_GPURenderPass* SDL_GPUBuffer* dword dword>
	^self invalidCall: _failureCode!

drawGPUPrimitives_renderPass: renderPass numVertices: numVertices numInstances: numInstances firstVertex: firstVertex firstInstance: firstInstance
	<cdecl: void SDL_DrawGPUPrimitives SDL_GPURenderPass* dword dword dword dword>
	^self invalidCall: _failureCode!

drawGPUPrimitivesIndirect_renderPass: renderPass buffer: buffer offset: offset drawCount: drawCount
	<cdecl: void SDL_DrawGPUPrimitivesIndirect SDL_GPURenderPass* SDL_GPUBuffer* dword dword>
	^self invalidCall: _failureCode!

endGPUComputePass_computePass: computePass
	<cdecl: void SDL_EndGPUComputePass SDL_GPUComputePass*>
	^self invalidCall: _failureCode!

endGPUCopyPass_copyPass: copyPass
	<cdecl: void SDL_EndGPUCopyPass SDL_GPUCopyPass*>
	^self invalidCall: _failureCode!

endGPURenderPass_renderPass: renderPass
	<cdecl: void SDL_EndGPURenderPass SDL_GPURenderPass*>
	^self invalidCall: _failureCode!

enterAppMainCallbacks_argc: argc argv: argv appInit: appInit  appIter: appIter appEvent: appEvent appQuit: appQuit
	<cdecl: sdword SDL_EnterAppMainCallbacks sdword lpstr void* void* void* void*>
	^self invalidCall: _failureCode!

enumerateDirectory_path: path callback: callback userdata: userdata
	<cdecl: bool SDL_EnumerateDirectory char* lpvoid lpvoid>
	^self invalidCall: _failureCode!

enumerateProperties_props: props callback: callback userdata: userdata
	<cdecl: bool SDL_EnumerateProperties dword lpvoid lpvoid>
	^self invalidCall: _failureCode!

flashWindow_window: window operation: operation
	<cdecl: bool SDL_DestroyWindow SDL_Window* dword>
	^self invalidCall: _failureCode!

flushAudioStream_stream: stream
	<cdecl: bool SDL_FlushAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

gdkResumeGPU_device: device
	<cdecl: void SDL_GDKResumeGPU SDL_GPUDevice*>
	^self invalidCall: _failureCode!

gdkSuspendGPU_device: device
	<cdecl: void SDL_GDKSuspendGPU SDL_GPUDevice*>
	^self invalidCall: _failureCode!

generateMipmapsForGPUTexture_commandBuffer: commandBuffer texture: texture
	<cdecl: void SDL_GenerateMipmapsForGPUTexture SDL_GPUCommandBuffer* SDL_GPUTexture*>
	^self invalidCall: _failureCode!

getAudioDeviceFormat_devid: devid spec: spec sampleFrames: sampleFrames
	<cdecl: bool SDL_GetAudioDeviceName dword SDL_AudioSpec* sdword*>
	^self invalidCall: _failureCode!

getAudioDeviceName_devid: devid
	<cdecl: lpstr SDL_GetAudioDeviceName dword>
	^self invalidCall: _failureCode!

getAudioDriver_index: index
	<cdecl: lpstr SDL_GetAudioDriver sdword>
	^self invalidCall: _failureCode!

getAudioStreamAvailable_stream: stream
	<cdecl: sdword SDL_GetAudioStreamAvailable SDL_AudioStream*>
	^self invalidCall: _failureCode!

getAudioStreamDevice_stream: stream
	<cdecl: dword SDL_GetAudioStreamDevice SDL_AudioStream*>
	^self invalidCall: _failureCode!

getAudioStreamFormat_stream: stream sourceSpec: sourceSpec destinationSpec: destinationSpec
	<cdecl: bool SDL_GetAudioStreamFormat SDL_AudioStream* SDL_AudioSpec* SDL_AudioSpec*>
	^self invalidCall: _failureCode!

getAudioStreamFrequencyRatio_stream: stream
	<cdecl: float SDL_GetAudioStreamFrequencyRatio SDL_AudioStream*>
	^self invalidCall: _failureCode!

getAudioStreamProperties_stream: stream
	<cdecl: dword SDL_GetAudioStreamProperties SDL_AudioStream*>
	^self invalidCall: _failureCode!

getAudioStreamQueued_stream: stream
	<cdecl: sdword SDL_GetAudioStreamQueued SDL_AudioStream*>
	^self invalidCall: _failureCode!

getBasePath
	<cdecl: char* SDL_GetBasePath>
	^self invalidCall: _failureCode!

getBooleanProperty_props: props name: name defaultValue: defaultValue
	<cdecl: bool SDL_GetBooleanProperty dword lpstr bool>
	^self invalidCall: _failureCode!

getCurrentAudioDriver
	<cdecl: lpstr SDL_GetCurrentAudioDriver>
	^self invalidCall: _failureCode!

getCurrentDisplayMode_displayID: displayID
	<cdecl: SDL_DisplayMode* SDL_GetCurrentDisplayMode dword>
	^self invalidCall: _failureCode!

getCurrentVideoDriver
	<cdecl: lpstr SDL_GetCurrentVideoDriver>
	^self invalidCall: _failureCode!

getDesktopDisplayMode_displayIndex: displayIndex
	<cdecl: SDL_DisplayMode* SDL_GetDesktopDisplayMode sdword>
	^self invalidCall: _failureCode!

getDisplayBounds_displayIndex: displayIndex rect: rect
	<cdecl: bool SDL_GetDisplayBounds sdword SDL_Rect*>
	^self invalidCall: _failureCode!

getDisplayMode_displayIndex: displayIndex modeIndex: modeIndex mode: mode
	<cdecl: sdword SDL_GetDisplayMode sdword sdword SDL_DisplayMode*>
	^self invalidCall: _failureCode!

getDisplayName_displayIndex: displayIndex
	<cdecl: lpstr SDL_GetDisplayName sdword>
	^self invalidCall: _failureCode!

getDisplays_count: count
	<cdecl: dword* SDL_GetDisplays sdword*>
	^self invalidCall: _failureCode!

getDisplayUsableBounds_displayIndex: displayIndex rect: rect
	<cdecl: bool SDL_GetDisplayUsableBounds sdword SDL_Rect*>
	^self invalidCall: _failureCode!

getError
	<cdecl: lpstr SDL_GetError>
	^self invalidCall: _failureCode!

getFloatProperty_props: props name: name defaultValue: defaultValue
	<cdecl: float SDL_GetFloatProperty dword lpstr float>
	^self invalidCall: _failureCode!

getGlobalProperties
	<cdecl: dword SDL_GetGlobalProperties>
	^self invalidCall: _failureCode!

getGPUDeviceDriver_device: device
	<cdecl: char* SDL_GetGPUDeviceDriver SDL_GPUDevice*>
	^self invalidCall: _failureCode!

getGPUDriver_index: index
	<cdecl: char* SDL_GetGPUDriver sdword>
	^self invalidCall: _failureCode!

getGPUShaderFormats_device: device
	<cdecl: sdword SDL_GetGPUShaderFormats SDL_GPUDevice*>
	^self invalidCall: _failureCode!

getGPUSwapchainTextureFormat_device: device window: window
	<cdecl: sdword SDL_GetGPUSwapchainTextureFormat SDL_GPUDevice* SDL_Window*>
	^self invalidCall: _failureCode!

getKeyboardState_numkeys: numkeys
	<cdecl: byte* SDL_GetKeyboardState sdword*>
	^self invalidCall: _failureCode!

getKeyFromScancode_scancode: scancode
	<cdecl: sdword SDL_GetKeyFromScancode sdword>
	^self invalidCall: _failureCode!

getNumAudioDrivers
	<cdecl: sdword SDL_GetNumAudioDrivers>
	^self invalidCall: _failureCode!

getNumberProperty_props: props name: name defaultValue: defaultValue
	<cdecl: sqword SDL_GetNumberProperty dword lpstr sqword>
	^self invalidCall: _failureCode!

getNumGPUDrivers
	<cdecl: sdword SDL_GetNumGPUDrivers>
	^self invalidCall: _failureCode!

getNumVideoDrivers
	<cdecl: sdword SDL_GetNumVideoDrivers>
	^self invalidCall: _failureCode!

getPathInfo_path: path info: info
	<cdecl: bool SDL_GetPathInfo char* SDL_PathInfo*>
	^self invalidCall: _failureCode!

getPerformanceCounter
	<cdecl: qword SDL_GetPerformanceCounter>
	^self invalidCall: _failureCode!

getPerformanceFrequency
	<cdecl: qword SDL_GetPerformanceFrequency>
	^self invalidCall: _failureCode!

getPixelFormatForMasks_bpp: bpp rMask: rMask gMask: gMask bMask: bMask aMask: aMask
	<cdecl: dword SDL_GetPixelFormatForMasks sdword dword dword dword dword>
	^self invalidCall: _failureCode!

getPointerProperty_props: props name: name defaultValue: defaultValue
	<cdecl: void* SDL_GetPointerProperty dword lpstr void*>
	^self invalidCall: _failureCode!

getPrefPath_org: org app: app
	<cdecl: char* SDL_GetPrefPath char* char*>
	^self invalidCall: _failureCode!

getPrimaryDisplay
	<cdecl: dword SDL_GetPrimaryDisplay>
	^self invalidCall: _failureCode!

getPropertyType_props: props name: name
	<cdecl: dword SDL_GetPropertyType dword lpstr>
	^self invalidCall: _failureCode!

getRectIntersection_a: a b: b result: result
	<cdecl: bool SDL_GetRectIntersection SDL_Rect* SDL_Rect* SDL_Rect*>
	^self invalidCall: _failureCode!

getRectIntersectionFloat_a: a b: b result: result
	<cdecl: bool SDL_GetRectIntersectionFloat SDL_FRect* SDL_FRect* SDL_FRect*>
	^self invalidCall: _failureCode!

getRenderClipRect_renderer: renderer rect: rect
	<cdecl: bool SDL_GetRenderClipRect SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

getRenderer_window: window
	<cdecl: SDL_Renderer* SDL_GetRenderer SDL_Window*>
	^self invalidCall: _failureCode!

getRendererProperties_renderer: renderer
	<cdecl: dword SDL_GetRendererProperties SDL_Renderer*>
	^self invalidCall: _failureCode!

getRenderScale_renderer: renderer scaleX: scaleX scaleY: scaleY
	<cdecl: bool SDL_GetRenderScale SDL_Renderer* float* float*>
	^self invalidCall: _failureCode!

getRenderTarget_renderer: renderer
	<cdecl: SDL_Texture* SDL_GetRenderTarget SDL_Renderer*>
	^self invalidCall: _failureCode!

getRenderWindow_renderer: renderer
	<cdecl: SDL_Window* SDL_GetRenderWindow SDL_Renderer*>
	^self invalidCall: _failureCode!

getSandbox
	<cdecl: sdword SDL_GetSandbox>
	^self invalidCall: _failureCode!

getStringProperty_props: props name: name defaultValue: defaultValue
	<cdecl: lpstr SDL_GetStringProperty dword lpstr lpstr>
	^self invalidCall: _failureCode!

getTextureBlendMode_texture: texture blendMode: blendMode
	<cdecl: bool SDL_GetTextureBlendMode SDL_Texture* dword*>
	^self invalidCall: _failureCode!

getTextureProperties_texture: texture
	<cdecl: dword SDL_GetTextureProperties SDL_Texture*>
	^self invalidCall: _failureCode!

getTextureSize_texture: texture w: w h: h
	<cdecl: bool SDL_GetTextureSize SDL_Texture* float* float*>
	^self invalidCall: _failureCode!

getTicks
	<cdecl: qword SDL_GetTicks>
	^self invalidCall: _failureCode!

getTicksNS
	<cdecl: qword SDL_GetTicks>
	^self invalidCall: _failureCode!

getUserFolder_folder: folder
	<cdecl: char* SDL_GetUserFolder sdword>
	^self invalidCall: _failureCode!

getVersion
	<cdecl: sdword SDL_GetVersion>
	^self invalidCall: _failureCode!

getVideoDriver_index: index
	<cdecl: lpstr SDL_GetVideoDriver sdword>
	^self invalidCall: _failureCode!

getWindowBordersSize_window: window top: top left: left bottom: bottom right: right
	<cdecl: bool SDL_GetWindowBordersSize SDL_Window* sdword* sdword* sdword* sdword*>
	^self invalidCall: _failureCode!

getWindowFlags_window: window
	<cdecl: dword SDL_GetWindowFlags SDL_Window*>
	^self invalidCall: _failureCode!

getWindowFromID_id: id
	<cdecl: SDL_Window* SDL_GetWindowFromID dword>
	^self invalidCall: _failureCode!

getWindowFullscreenMode_window: window
	<cdecl: SDL_DisplayMode* SDL_GetWindowDisplayMode SDL_Window*>
	^self invalidCall: _failureCode!

getWindowICCProfile_window: window size: size
	<cdecl: void* SDL_GetWindowICCProfile SDL_Window* intptr*>
	^self invalidCall: _failureCode!

getWindowID_window: window
	<cdecl: dword SDL_GetWindowID SDL_Window*>
	^self invalidCall: _failureCode!

getWindowKeyboardGrab_window: window
	<cdecl: bool SDL_GetWindowKeyboardGrab SDL_Window*>
	^self invalidCall: _failureCode!

getWindowPixelFormat_window: window
	<cdecl: dword SDL_GetWindowPixelFormat SDL_Window*>
	^self invalidCall: _failureCode!

getWindowPosition_window: window x: x y: y
	<cdecl: void SDL_GetWindowPosition SDL_Window* sdword* sdword*>
	^self invalidCall: _failureCode!

getWindowProperties_window: window
	<cdecl: dword SDL_GetWindowProperties SDL_Window*>
	^self invalidCall: _failureCode!

getWindowSize_window: window w: w h: h
	<cdecl: bool SDL_GetWindowSize SDL_Window* sdword* sdword*>
	^self invalidCall: _failureCode!

getWindowSizeInPixels_window: window w: w h: h
	<cdecl: bool SDL_GetWindowSizeInPixels SDL_Window* sdword* sdword*>
	^self invalidCall: _failureCode!

getWindowSurface_window: window
	<cdecl: SDL_Surface* SDL_GetWindowSurface SDL_Window*>
	^self invalidCall: _failureCode!

getWindowTitle_window: window
	<cdecl: lpstr SDL_SetWindowTitle SDL_Window*>
	^self invalidCall: _failureCode!

glCreateContext_window: window
	<cdecl: handle SDL_GL_CreateContext SDL_Window*>
	^self invalidCall: _failureCode!

glDestroyContext_context: context
	<cdecl: bool SDL_GL_DestroyContext handle>
	^self invalidCall: _failureCode!

glExtensionSupported_extension: extension
	<cdecl: bool SDL_GL_ExtensionSupported char*>
	^self invalidCall: _failureCode!

glGetAttribute_attr: attr value: value
	<cdecl: bool SDL_GL_GetAttribute sdword sdword*>
	^self invalidCall: _failureCode!

glGetCurrentContext
	<cdecl: handle SDL_GL_GetCurrentContext>
	^self invalidCall: _failureCode!

glGetCurrentWindow
	<cdecl: SDL_Window* SDL_GL_GetCurrentWindow>
	^self invalidCall: _failureCode!

glGetProcAddress_proc: proc
	<cdecl: lpvoid SDL_GL_GetProcAddress char*>
	^self invalidCall: _failureCode!

glGetSwapInterval_interval: interval
	<cdecl: bool SDL_GL_GetSwapInterval sdword*>
	^self invalidCall: _failureCode!

glLoadLibrary_path: path
	<cdecl: bool SDL_GL_LoadLibrary char*>
	^self invalidCall: _failureCode!

glMakeCurrent_window: window context: context
	<cdecl: bool SDL_GL_MakeCurrent SDL_Window* handle>
	^self invalidCall: _failureCode!

globDirectory_path: path pattern: pattern flags: flags count: count
	<cdecl: char** SDL_GlobDirectory char* char* dword sdword*>
	^self invalidCall: _failureCode!

glResetAttributes
	<cdecl: void SDL_GL_ResetAttributes>
	^self invalidCall: _failureCode!

glSetAttribute_attr: attr value: value
	<cdecl: bool SDL_GL_SetAttribute sdword sdword>
	^self invalidCall: _failureCode!

glSetSwapInterval_interval: interval
	<cdecl: bool SDL_GL_SetSwapInterval sdword>
	^self invalidCall: _failureCode!

glSwapWindow_window: window
	<cdecl: bool SDL_GL_SwapWindow SDL_Window*>
	^self invalidCall: _failureCode!

glUnloadLibrary
	<cdecl: void SDL_GL_UnloadLibrary>
	^self invalidCall: _failureCode!

gpuSupportsProperties_props: props
	<cdecl: bool SDL_GPUSupportsProperties dword>
	^self invalidCall: _failureCode!

gpuSupportsShaderFormats_formatFlags: formatFlags name: name
	<cdecl: bool SDL_GPUSupportsShaderFormats sdword lpstr>
	^self invalidCall: _failureCode!

gpuTextureFormatTexelBlockSize_format: format
	<cdecl: dword SDL_GPUTextureFormatTexelBlockSize dword>
	^self invalidCall: _failureCode!

gpuTextureSupportsFormat_device: device format: format type: type usage: usage
	<cdecl: bool SDL_GPUTextureSupportsFormat SDL_GPUDevice* sdword sdword dword>
	^self invalidCall: _failureCode!

gpuTextureSupportsSampleCount_device: device format: format sampleCount: sampleCount
	<cdecl: bool SDL_GPUTextureSupportsSampleCount SDL_GPUDevice* sdword sdword>
	^self invalidCall: _failureCode!

hasProperty_props: props name: name
	<cdecl: bool SDL_HasProperty dword lpstr>
	^self invalidCall: _failureCode!

hideWindow_window: window
	<cdecl: bool SDL_HideWindow SDL_Window*>
	^self invalidCall: _failureCode!

init_flags: flags
	<cdecl: bool SDL_Init dword>
	^self invalidCall: _failureCode!

initSubSystem_flags: flags
	<cdecl: bool SDL_InitSubSystem dword>
	^self invalidCall: _failureCode!

insertGPUDebugLabel_commandBuffer: commandBuffer text: text 
	<cdecl: void SDL_InsertGPUDebugLabel SDL_GPUCommandBuffer* lpstr>
	^self invalidCall: _failureCode!

loadBMP_file: file
	<cdecl: SDL_Surface* SDL_LoadBMP char*>
	^self invalidCall: _failureCode!

loadFile_file: file datasize: datasize
	<cdecl: lpvoid SDL_LoadFile lpstr dword*>
	^self invalidCall: _failureCode!

lockAudioStream_stream: stream
	<cdecl: bool SDL_LockAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

lockProperties_props: props
	<cdecl: bool SDL_LockProperties dword>
	^self invalidCall: _failureCode!

lockTexture_texture: texture rect: rect pixels: pixels pitch: pitch
	<cdecl: bool SDL_LockTexture SDL_Texture* SDL_Rect* void** sdword*>
	^self invalidCall: _failureCode!

mapGPUTransferBuffer_device: device transferBuffer: transferBuffer cycle: cycle 
	<cdecl: void* SDL_MapGPUTransferBuffer SDL_GPUDevice* SDL_GPUTransferBuffer* bool>
	^self invalidCall: _failureCode!

maximizeWindow_window: window
	<cdecl: bool SDL_MaximizeWindow SDL_Window*>
	^self invalidCall: _failureCode!

minimizeWindow_window: window
	<cdecl: bool SDL_MinimizeWindow SDL_Window*>
	^self invalidCall: _failureCode!

openAudioDevice_devid: devid spec: spec
	<cdecl: dword SDL_OpenAudioDevice dword SDL_AudioSpec*>
	^self invalidCall: _failureCode!

openAudioDeviceStream_devid: devid spec: spec callback: callback userdata: userdata
	<cdecl: SDL_AudioStream* SDL_OpenAudioDeviceStream dword SDL_AudioSpec* void* void*>
	^self invalidCall: _failureCode!

pauseAudioDevice_devid: devid
	<cdecl: bool SDL_PauseAudioDevice dword>
	^self invalidCall: _failureCode!

peepEvents_events: events numevents: numevents action: action minType: minType maxType: maxType
	<cdecl: sdword SDL_PeepEvents SDL_Event* sdword dword dword dword>
	^self invalidCall: _failureCode!

pollEvent_event: event
	<cdecl: bool SDL_PollEvent SDL_Event*>
	^self invalidCall: _failureCode!

popGPUDebugGroup_commandBuffer: commandBuffer 
	<cdecl: void SDL_PopGPUDebugGroup SDL_GPUCommandBuffer*>
	^self invalidCall: _failureCode!

pumpEvents
	<cdecl: void SDL_PumpEvents>
	^self invalidCall: _failureCode!

pushEvent_event: event
	<cdecl: bool SDL_PushEvent SDL_Event*>
	^self invalidCall: _failureCode!

pushGPUComputeUniformData_commandBuffer: commandBuffer slotIndex: slotIndex data: data length: length
	<cdecl: void SDL_PushGPUComputeUniformData SDL_GPUCommandBuffer* dword lpvoid dword>
	^self invalidCall: _failureCode!

pushGPUDebugGroup_commandBuffer: commandBuffer name: name
	<cdecl: void SDL_PushGPUDebugGroup SDL_GPUCommandBuffer* lpstr>
	^self invalidCall: _failureCode!

pushGPUFragmentUniformData_commandBuffer: commandBuffer slotIndex: slotIndex data: data length: length
	<cdecl: void SDL_PushGPUFragmentUniformData SDL_GPUCommandBuffer* dword lpvoid dword>
	^self invalidCall: _failureCode!

pushGPUVertexUniformData_commandBuffer: commandBuffer slotIndex: slotIndex data: data length: length
	<cdecl: void SDL_PushGPUVertexUniformData SDL_GPUCommandBuffer* dword void* dword>
	^self invalidCall: _failureCode!

putAudioStreamData_stream: stream buffer: buffer length: length
	<cdecl: bool SDL_PutAudioStreamData SDL_AudioStream* void* sdword>
	^self invalidCall: _failureCode!

queryGPUFence_device: device fence: fence
	<cdecl: bool SDL_QueryGPUFence SDL_GPUDevice* SDL_GPUFence*>
	^self invalidCall: _failureCode!

quit
	<cdecl: void SDL_Quit>
	^self invalidCall: _failureCode!

quitIfOpen
	[self isOpen ifTrue: [self quit]] on: Error
		do: 
			[:error |
			Transcript
				display: error;
				cr]!

quitSubSystem_flags: flags
	<cdecl: void SDL_QuitSubSystem dword>
	^self invalidCall: _failureCode!

raiseWindow_window: window
	<cdecl: bool SDL_RaiseWindow SDL_Window*>
	^self invalidCall: _failureCode!

registerEvents_numevents: numevents
	<cdecl: dword SDL_RegisterEvents sdword>
	^self invalidCall: _failureCode!

releaseGPUBuffer_device: device buffer: buffer
	<cdecl: void SDL_ReleaseGPUBuffer SDL_GPUDevice* SDL_GPUBuffer*>
	^self invalidCall: _failureCode!

releaseGPUComputePipeline_device: device computePipeline: computePipeline
	<cdecl: void SDL_ReleaseGPUComputePipeline SDL_GPUDevice* SDL_GPUComputePipeline*>
	^self invalidCall: _failureCode!

releaseGPUFence_device: device fence: fence
	<cdecl: void SDL_ReleaseGPUFence SDL_GPUDevice* SDL_GPUFence*>
	^self invalidCall: _failureCode!

releaseGPUGraphicsPipeline_device: device graphicsPipeline: graphicsPipeline
	<cdecl: void SDL_ReleaseGPUGraphicsPipeline SDL_GPUDevice* SDL_GPUGraphicsPipeline*>
	^self invalidCall: _failureCode!

releaseGPUSampler_device: device sampler: sampler
	<cdecl: void SDL_ReleaseGPUSampler SDL_GPUDevice* SDL_GPUSampler*>
	^self invalidCall: _failureCode!

releaseGPUShader_device: device shader: shader
	<cdecl: void SDL_ReleaseGPUShader SDL_GPUDevice* SDL_GPUShader*>
	^self invalidCall: _failureCode!

releaseGPUTexture_device: device texture: texture
	<cdecl: void SDL_ReleaseGPUTexture SDL_GPUDevice* SDL_GPUTexture*>
	^self invalidCall: _failureCode!

releaseGPUTransferBuffer_device: device transferBuffer: transferBuffer
	<cdecl: void SDL_ReleaseGPUTransferBuffer SDL_GPUDevice* SDL_GPUTransferBuffer*>
	^self invalidCall: _failureCode!

releaseWindowFromGPUDevice_device: device window: window
	<cdecl: bool SDL_ReleaseWindowFromGPUDevice SDL_GPUDevice* SDL_Window*>
	^self invalidCall: _failureCode!

removeEventWatch_filter: filter userdata: userdata
	<cdecl: void SDL_RemoveEventWatch SDL_EventFilter void*>
	^self invalidCall: _failureCode!

removePath_path: path
	<cdecl: bool SDL_RemovePath char*>
	^self invalidCall: _failureCode!

removeTimer_id: id
	<cdecl: bool SDL_RemoveTimer sdword>
	^self invalidCall: _failureCode!

renamePath_oldpath: oldpath newpath: newpath
	<cdecl: bool SDL_RenamePath char* char*>
	^self invalidCall: _failureCode!

renderClear_renderer: renderer
	<cdecl: bool SDL_RenderClear SDL_Renderer*>
	^self invalidCall: _failureCode!

renderClipEnabled_renderer: renderer
	<cdecl: bool SDL_RenderClipEnabled SDL_Renderer*>
	^self invalidCall: _failureCode!

renderDebugText_renderer: renderer x: x y: y str: str
	<cdecl: bool SDL_RenderDebugText SDL_Renderer* float float char*>
	^self invalidCall: _failureCode!

renderFillRect_renderer: renderer rect: rect
	<cdecl: bool SDL_RenderFillRect SDL_Renderer* SDL_FRect*>
	^self invalidCall: _failureCode!

renderGeometry_renderer: renderer texture: texture vertices: vertices numVertices: numVertices indices: indices numIndices: numIndices
	<cdecl: bool SDL_RenderGeometry SDL_Renderer* SDL_Texture* SDL_Vertex* sdword sdword* sdword>
	^self invalidCall: _failureCode!

renderLine_renderer: renderer x1: x1 y1: y1 x2: x2 y2: y2
	<cdecl: bool SDL_RenderLine SDL_Renderer* float float float float>
	^self invalidCall: _failureCode!

renderPoint_renderer: renderer x: x y: y
	<cdecl: bool SDL_RenderPoint SDL_Renderer* float float>
	^self invalidCall: _failureCode!

renderPresent_renderer: renderer
	<cdecl: bool SDL_RenderPresent SDL_Renderer*>
	^self invalidCall: _failureCode!

renderReadPixels_renderer: renderer rect: rect
	<cdecl: SDL_Surface* SDL_RenderReadPixels SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

renderRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_RenderRect SDL_Renderer* SDL_FRect*>
	^self invalidCall: _failureCode!

renderTexture_renderer: renderer texture: texture srcrect: srcrect dstrect: dstrect
	<cdecl: bool SDL_RenderTexture SDL_Renderer* SDL_Texture* SDL_FRect* SDL_FRect*>
	^self invalidCall: _failureCode!

restoreWindow_window: window
	<cdecl: bool SDL_RestoreWindow SDL_Window*>
	^self invalidCall: _failureCode!

resumeAudioDevice_devid: devid
	<cdecl: bool SDL_ResumeAudioDevice dword>
	^self invalidCall: _failureCode!

setAudioStreamFormat_stream: stream sourceSpec: sourceSpec destinationSpec: destinationSpec
	<cdecl: bool SDL_SetAudioStreamFormat SDL_AudioStream* SDL_AudioSpec* SDL_AudioSpec*>
	^self invalidCall: _failureCode!

setBooleanProperty_props: props name: name value: value
	<cdecl: bool SDL_SetBooleanProperty dword lpstr bool>
	^self invalidCall: _failureCode!

setCursor_cursor: cursor
	<cdecl: bool SDL_SetCursor SDL_Cursor*>
	^self invalidCall: _failureCode!

setEventFilter_filter: filter userdata: userdata
	<cdecl: void SDL_SetEventFilter SDL_EventFilter void*>
	^self invalidCall: _failureCode!

setFloatProperty_props: props name: name value: value
	<cdecl: bool SDL_SetFloatProperty dword lpstr float>
	^self invalidCall: _failureCode!

setGPUBlendConstants_renderPass: renderPass blendConstants: blendConstants
	<cdecl: void SDL_SetGPUBlendConstants SDL_GPURenderPass* SDL_FColor*>
	^self invalidCall: _failureCode!

setGPUBufferName_device: device buffer: buffer text: text
	<cdecl: void SDL_SetGPUBufferName SDL_GPUDevice* SDL_GPUBuffer* lpstr>
	^self invalidCall: _failureCode!

setGPUScissor_renderPass: renderPass scissor: scissor
	<cdecl: void SDL_SetGPUScissor SDL_GPURenderPass* SDL_Rect*>
	^self invalidCall: _failureCode!

setGPUStencilReference_renderPass: renderPass reference: reference
	<cdecl: void SDL_SetGPUStencilReference SDL_GPURenderPass* word>
	^self invalidCall: _failureCode!

setGPUSwapchainParameters_device: device window: window swapchainComposition: swapchainComposition presentMode: presentMode
	<cdecl: bool SDL_SetGPUSwapchainParameters SDL_GPUDevice* SDL_Window* sdword sdword>
	^self invalidCall: _failureCode!

setGPUTextureName_device: device texture: texture text: text
	<cdecl: void SDL_SetGPUTextureName SDL_GPUDevice* SDL_Texture* lpstr>
	^self invalidCall: _failureCode!

setGPUViewport_renderPass: renderPass viewport: viewport
	<cdecl: void SDL_SetGPUViewport SDL_GPURenderPass* SDL_GPUViewport*>
	^self invalidCall: _failureCode!

setHint_name: name value: value
	<cdecl: bool SDL_SetHint lpstr lpstr>
	^self invalidCall: _failureCode!

setNumberProperty_props: props name: name value: value
	<cdecl: bool SDL_GetNumberProperty dword lpstr sqword>
	^self invalidCall: _failureCode!

setPointerProperty_props: props name: name value: value
	<cdecl: bool SDL_GetPointerProperty dword lpstr void*>
	^self invalidCall: _failureCode!

setPointerPropertyWithCleanup_props: props name: name value: value cleanup: cleanup userdata: userdata
	<cdecl: bool SDL_GetPointerPropertyWithCleanup dword lpstr void* void* void*>
	^self invalidCall: _failureCode!

setRenderClipRect_renderer: renderer rect: rect
	<cdecl: bool SDL_SetRenderClipRect SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

setRenderDrawBlendMode_renderer: renderer blendMode: blendMode
	<cdecl: bool SDL_SetRenderDrawBlendMode SDL_Renderer* dword>
	^self invalidCall: _failureCode!

setRenderDrawColor_renderer: renderer r: r g: g b: b a: a
	<cdecl: bool SDL_SetRenderDrawColor SDL_Renderer* byte byte byte byte>
	^self invalidCall: _failureCode!

setRenderScale_renderer: renderer scaleX: scaleX scaleY: scaleY
	<cdecl: bool SDL_SetRenderScale SDL_Renderer* float float>
	^self invalidCall: _failureCode!

setRenderTarget_renderer: renderer texture: texture
	<cdecl: bool SDL_SetRenderTarget SDL_Renderer* SDL_Texture*>
	^self invalidCall: _failureCode!

setStringProperty_props: props name: name value: value
	<cdecl: lpstr SDL_SetStringProperty dword lpstr lpstr>
	^self invalidCall: _failureCode!

setTextureBlendMode_texture: texture blendMode: blendMode
	<cdecl: bool SDL_SetTextureBlendMode SDL_Texture* dword>
	^self invalidCall: _failureCode!

setWindowFullscreen_window: window fullscreen: fullscreen
	<cdecl: bool SDL_SetWindowFullscreen SDL_Window* bool>
	^self invalidCall: _failureCode!

setWindowIcon_window: window icon: icon
	<cdecl: bool SDL_SetWindowIcon SDL_Window* SDL_Surface*>
	^self invalidCall: _failureCode!

setWindowKeyboardGrab_window: window grabbed: grabbed
	<cdecl: bool SDL_SetWindowKeyboardGrab SDL_Window* bool>
	^self invalidCall: _failureCode!

setWindowPosition_window: window x: x y: y
	<cdecl: bool SDL_SetWindowPosition SDL_Window* sdword sdword>
	^self invalidCall: _failureCode!

setWindowSize_window: window w: w h: h
	<cdecl: bool SDL_SetWindowSize SDL_Window* sdword sdword>
	^self invalidCall: _failureCode!

setWindowTitle_window: window title: title
	<cdecl: bool SDL_SetWindowTitle SDL_Window* lpstr>
	^self invalidCall: _failureCode!

showOpenFileDialog_callback: callback userdata: userdata window: window filters: filters nfilters: nfilters defaultLocation: defaultLocation allowMany: allowMany
	<cdecl: void SDL_ShowOpenFileDialog lpvoid lpvoid SDL_Window* SDL_DialogFileFilter* sdword lpstr bool>
	^self invalidCall: _failureCode!

showOpenFolderDialog_callback: callback userdata: userdata window: window defaultLocation: defaultLocation allowMany: allowMany
	<cdecl: void SDL_ShowOpenFolderDialog lpvoid lpvoid SDL_Window* lpstr bool>
	^self invalidCall: _failureCode!

showSaveFileDialog_callback: callback userdata: userdata window: window filters: filters nfilters: nfilters defaultLocation: defaultLocation
	<cdecl: void SDL_ShowSaveFileDialog lpvoid lpvoid SDL_Window* SDL_DialogFileFilter* lpstr bool>
	^self invalidCall: _failureCode!

showWindow_window: window
	<cdecl: bool SDL_ShowWindow SDL_Window*>
	^self invalidCall: _failureCode!

startTextInput_window: window
	<cdecl: bool SDL_StartTextInput SDL_Window*>
	^self invalidCall: _failureCode!

stepBackUTF8_start: start pstr: pstr
	<cdecl: dword SDL_StepBackUTF8 char* char**>
	^self invalidCall: _failureCode!

submitGPUCommandBuffer_commandBuffer: commandBuffer
	<cdecl: void SDL_SubmitGPUCommandBuffer SDL_GPUCommandBuffer*>
	^self invalidCall: _failureCode!

submitGPUCommandBufferAndAcquireFence_commandBuffer: commandBuffer
	<cdecl: SDL_GPUFence* SDL_SubmitGPUCommandBufferAndAcquireFence SDL_GPUCommandBuffer*>
	^self invalidCall: _failureCode!

syncWindow_window: window
	<cdecl: bool SDL_SyncWindow SDL_Window*>
	^self invalidCall: _failureCode!

unbindAudioStream_stream: stream
	<cdecl: void SDL_UnbindAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

unbindAudioStreams_streams: streams numStreams: numStreams
	<cdecl: void SDL_BindAudioStreams SDL_AudioStream** sdword>
	^self invalidCall: _failureCode!

unlockAudioStream_stream: stream
	<cdecl: bool SDL_UnlockAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

unlockProperties_props: props
	<cdecl: void SDL_UnlockProperties dword>
	^self invalidCall: _failureCode!

unlockTexture_texture: texture
	<cdecl: void SDL_UnlockTexture SDL_Texture*>
	^self invalidCall: _failureCode!

unmapGPUTransferBuffer_device: device transferBuffer: transferBuffer 
	<cdecl: void SDL_UnmapGPUTransferBuffer SDL_GPUDevice* SDL_GPUTransferBuffer*>
	^self invalidCall: _failureCode!

updateTexture_texture: texture rect: rect pixels: pixels pitch: pitch
	<cdecl: bool SDL_UpdateTexture SDL_Texture* SDL_Rect* void* sdword>
	^self invalidCall: _failureCode!

updateWindowSurface_window: window
	<cdecl: bool SDL_UpdateWindowSurface SDL_Window*>
	^self invalidCall: _failureCode!

updateWindowSurfaceRects_window: window rects: rects numrects: numrects
	<cdecl: bool SDL_UpdateWindowSurface SDL_Window* SDL_Rect* sdword>
	^self invalidCall: _failureCode!

uploadToGPUBuffer_copyPass: copyPass source: source destination: destination cycle: cycle 
	<cdecl: void SDL_UploadToGPUBuffer SDL_GPUCopyPass* SDL_GPUTransferBufferLocation* SDL_GPUBufferRegion* bool>
	^self invalidCall: _failureCode!

uploadToGPUTexture_copyPass: copyPass source: source destination: destination cycle: cycle
	<cdecl: void SDL_UploadToGPUTexture SDL_GPUCopyPass* SDL_GPUTextureTransferInfo* SDL_GPUTextureRegion* bool>
	^self invalidCall: _failureCode!

waitEvent_event: event
	<cdecl: bool SDL_WaitEvent SDL_Event*>
	^self invalidCall: _failureCode!

waitEventTimeout_event: event timeout: timeout
	<cdecl: bool SDL_WaitEventTimeout SDL_Event* sdword>
	^self invalidCall: _failureCode!

waitForGPUFences_device: device waitAll: waitAll fences: fences numFences: numFences
	<cdecl: bool SDL_WaitForGPUFences SDL_GPUDevice* bool SDL_GPUFence** dword>
	^self invalidCall: _failureCode!

waitForGPUIdle_device: device
	<cdecl: void SDL_WaitForGPUIdle SDL_GPUDevice*>
	^self invalidCall: _failureCode!

wasInit_flags: flags
	<cdecl: dword SDL_WasInit dword>
	^self invalidCall: _failureCode!

windowSupportsGPUPresentMode_device: device window: window presentMode: presentMode
	<cdecl: bool SDL_WindowSupportsGPUPresentMode SDL_GPUDevice* SDL_Window* dword>
	^self invalidCall: _failureCode!

windowSupportsGPUSwapchainComposition_device: device window: window swapchainComposition: swapchainComposition
	<cdecl: bool SDL_WindowSupportsGPUSwapchainComposition SDL_GPUDevice* SDL_Window* dword>
	^self invalidCall: _failureCode! !

!SDL3Library categoriesForMethods!
acquireGPUCommandBuffer_device:!gpu!public! !
acquireGPUSwapchainTexture_commandBuffer:window:swapchainTexture:swapchainTextureWidth:swapchainTextureHeight:!gpu!public! !
addEventWatch_filter:userdata:!events!public! !
addTimer_interval:callback:param:!public!video! !
audioDevicePaused_devid:!audio!public! !
beginGPUComputePass_commandBuffer:storageTextureBindings:numStorageTextureBindings:storageBufferBindings:numStorageBufferBindings:!gpu!public! !
beginGPUCopyPass_commandBuffer:!gpu!public! !
beginGPURenderPass_commandBuffer:colorTargetInfos:numColorTargets:depthStencilTargetInfo:!gpu!public! !
bindAudioStream_devid:stream:!audio!public! !
bindAudioStreams_devid:streams:numStreams:!audio!public! !
bindGPUComputePipeline_computePass:computePipeline:!gpu!public! !
bindGPUComputeSamplers_computePass:firstSlot:textureSamplerBindings:numBindings:!public! !
bindGPUComputeStorageBuffers_computePass:firstSlot:storageBuffers:numBindings:!gpu!public! !
bindGPUComputeStorageTextures_computePass:firstSlot:storageTextures:numBindings:!gpu!public! !
bindGPUFragmentSamplers_renderPass:firstSlot:textureSamplerBindings:numBindings:!gpu!public! !
bindGPUFragmentStorageBuffers_renderPass:firstSlot:storageBuffers:numBindings:!gpu!public! !
bindGPUFragmentStorageTextures_renderPass:firstSlot:storageTextures:numBindings:!gpu!public! !
bindGPUGraphicsPipeline_renderPass:graphicsPipeline:!gpu!public! !
bindGPUIndexBuffer_renderPass:binding:indexElementSize:!gpu!public! !
bindGPUVertexBuffers_renderPass:firstSlot:bindings:numBindings:!public! !
bindGPUVertexSamplers_renderPass:firstSlot:textureSamplerBindings:numBindings:!gpu!public! !
bindGPUVertexStorageBuffers_renderPass:firstSlot:storageBuffers:numBindings:!gpu!public! !
bindGPUVertexStorageTextures_renderPass:firstSlot:storageTextures:numBindings:!gpu!public! !
blitGPUTexture_commandBuffer:info:!public! !
blitSurface_src:srcrect:dst:dstrect:!public!render! !
calculateGPUTextureFormatSize_format:width:height:depthOrLayerCount:!gpu!public! !
cancelGPUCommandBuffer_commandBuffer:!gpu!public! !
claimWindowForGPUDevice_device:window:!gpu!public! !
clearAudioStream_stream:!audio!public! !
clearProperty_props:name:!properties!public! !
closeAudioDevice_devid:!audio!public! !
convertSurface_surface:format:!properties!public! !
copyFile_oldpath:newpath:!file system!public! !
copyGPUBufferToBuffer_copyPass:source:destination:size:cycle:!gpu!public! !
copyGPUTextureToTexture_copyPass:source:destination:w:h:d:cycle:!gpu!public! !
copyProperties_src:dst:!properties!public! !
createAudioStream_sourceSpec:destinationSpec:!audio!public! !
createCursor_data:mask:w:h:hotX:hotY:!events!public! !
createDirectory_path:!file system!public! !
createGPUBuffer_device:createinfo:!gpu!public! !
createGPUComputePipeline_device:createinfo:!gpu!public! !
createGPUDevice_formatFlags:debugMode:name:!gpu!public! !
createGPUDeviceWithProperties_props:!gpu!public! !
createGPUGraphicsPipeline_device:createinfo:!gpu!public! !
createGPUSampler_device:createinfo:!gpu!public! !
createGPUShader_device:createinfo:!gpu!public! !
createGPUTexture_device:createinfo:!gpu!public! !
createGPUTransferBuffer_device:createinfo:!gpu!public! !
createProperties!properties!public! !
createRenderer_window:name:!public!render! !
createSoftwareRenderer_surface:!public!render! !
createSurface_width:height:format:!public!render! !
createSurfaceFrom_pixels:width:height:pitch:format:!public!render! !
createSystemCursor_id:!events!public! !
createTexture_renderer:format:access:w:h:!public!render! !
createTextureFromSurface_renderer:surface:!public!render! !
createWindow_title:w:h:flags:!public!video! !
createWindowAndRenderer_title:width:height:windowFlags:window:renderer:!public!render! !
delay_ms:!public!video! !
delayNS_ns:!public!video! !
delayPrecise_ns:!public!video! !
destroyAudioStream_stream:!audio!public! !
destroyCursor_cursor:!public! !
destroyGPUDevice_device:!gpu!public! !
destroyProperties_props:!properties!public! !
destroyRenderer_renderer:!public!render! !
destroySurface_surface:!public! !
destroyTexture_texture:!public!video! !
destroyWindow_window:!public!video! !
dispatchGPUCompute_computePass:groupcountX:groupcountY:groupcountZ:!gpu!public! !
dispatchGPUComputeIndirect_computePass:buffer:offset:!gpu!public! !
downloadFromGPUBuffer_copyPass:source:destination:!gpu!public! !
downloadFromGPUTexture_copyPass:source:destination:!gpu!public! !
drawGPUIndexedPrimitives_renderPass:numIndices:numInstances:firstIndex:vertexOffset:firstIntance:!gpu!public! !
drawGPUIndexedPrimitivesIndirect_renderPass:buffer:offset:drawCount:!public! !
drawGPUPrimitives_renderPass:numVertices:numInstances:firstVertex:firstInstance:!gpu!public! !
drawGPUPrimitivesIndirect_renderPass:buffer:offset:drawCount:!public! !
endGPUComputePass_computePass:!gpu!public! !
endGPUCopyPass_copyPass:!gpu!public! !
endGPURenderPass_renderPass:!gpu!public! !
enterAppMainCallbacks_argc:argv:appInit:appIter:appEvent:appQuit:!init!public! !
enumerateDirectory_path:callback:userdata:!file system!public! !
enumerateProperties_props:callback:userdata:!properties!public! !
flashWindow_window:operation:!public!video! !
flushAudioStream_stream:!audio!public! !
gdkResumeGPU_device:!gpu!public! !
gdkSuspendGPU_device:!gpu!public! !
generateMipmapsForGPUTexture_commandBuffer:texture:!gpu!public! !
getAudioDeviceFormat_devid:spec:sampleFrames:!audio!public! !
getAudioDeviceName_devid:!audio!public! !
getAudioDriver_index:!audio!public! !
getAudioStreamAvailable_stream:!audio!public! !
getAudioStreamDevice_stream:!audio!public! !
getAudioStreamFormat_stream:sourceSpec:destinationSpec:!audio!public! !
getAudioStreamFrequencyRatio_stream:!audio!public! !
getAudioStreamProperties_stream:!audio!public! !
getAudioStreamQueued_stream:!audio!public! !
getBasePath!file system!public! !
getBooleanProperty_props:name:defaultValue:!properties!public! !
getCurrentAudioDriver!audio!public! !
getCurrentDisplayMode_displayID:!public! !
getCurrentVideoDriver!public!video! !
getDesktopDisplayMode_displayIndex:!public!video! !
getDisplayBounds_displayIndex:rect:!public!video! !
getDisplayMode_displayIndex:modeIndex:mode:!public!video! !
getDisplayName_displayIndex:!public!video! !
getDisplays_count:!public!video! !
getDisplayUsableBounds_displayIndex:rect:!public!video! !
getError!error!public! !
getFloatProperty_props:name:defaultValue:!properties!public! !
getGlobalProperties!properties!public! !
getGPUDeviceDriver_device:!public! !
getGPUDriver_index:!public! !
getGPUShaderFormats_device:!public! !
getGPUSwapchainTextureFormat_device:window:!gpu!public! !
getKeyboardState_numkeys:!public!video! !
getKeyFromScancode_scancode:!public!video! !
getNumAudioDrivers!audio!public! !
getNumberProperty_props:name:defaultValue:!properties!public! !
getNumGPUDrivers!public! !
getNumVideoDrivers!public!video! !
getPathInfo_path:info:!file system!public! !
getPerformanceCounter!public!video! !
getPerformanceFrequency!public!video! !
getPixelFormatForMasks_bpp:rMask:gMask:bMask:aMask:!public!video! !
getPointerProperty_props:name:defaultValue:!properties!public! !
getPrefPath_org:app:!file system!public! !
getPrimaryDisplay!public! !
getPropertyType_props:name:!properties!public! !
getRectIntersection_a:b:result:!public!video! !
getRectIntersectionFloat_a:b:result:!public!video! !
getRenderClipRect_renderer:rect:!public!render! !
getRenderer_window:!public!render! !
getRendererProperties_renderer:!public!video! !
getRenderScale_renderer:scaleX:scaleY:!public!render! !
getRenderTarget_renderer:!public!render! !
getRenderWindow_renderer:!public!render! !
getSandbox!public!video! !
getStringProperty_props:name:defaultValue:!properties!public! !
getTextureBlendMode_texture:blendMode:!public!render! !
getTextureProperties_texture:!public!video! !
getTextureSize_texture:w:h:!public!render! !
getTicks!public!video! !
getTicksNS!public!video! !
getUserFolder_folder:!file system!public! !
getVersion!public! !
getVideoDriver_index:!public!video! !
getWindowBordersSize_window:top:left:bottom:right:!public!video! !
getWindowFlags_window:!public!video! !
getWindowFromID_id:!public!video! !
getWindowFullscreenMode_window:!public!video! !
getWindowICCProfile_window:size:!public!video! !
getWindowID_window:!public!video! !
getWindowKeyboardGrab_window:!public!video! !
getWindowPixelFormat_window:!public!video! !
getWindowPosition_window:x:y:!public!video! !
getWindowProperties_window:!public!video! !
getWindowSize_window:w:h:!public!video! !
getWindowSizeInPixels_window:w:h:!public!video! !
getWindowSurface_window:!public!video! !
getWindowTitle_window:!public!video! !
glCreateContext_window:!open gl!public!video! !
glDestroyContext_context:!open gl!public!video! !
glExtensionSupported_extension:!open gl!public!video! !
glGetAttribute_attr:value:!open gl!public!video! !
glGetCurrentContext!open gl!public!video! !
glGetCurrentWindow!open gl!public!video! !
glGetProcAddress_proc:!open gl!public!video! !
glGetSwapInterval_interval:!open gl!public!video! !
glLoadLibrary_path:!open gl!public!video! !
glMakeCurrent_window:context:!open gl!public!video! !
globDirectory_path:pattern:flags:count:!file system!public! !
glResetAttributes!open gl!public!video! !
glSetAttribute_attr:value:!open gl!public!video! !
glSetSwapInterval_interval:!open gl!public!video! !
glSwapWindow_window:!open gl!public!video! !
glUnloadLibrary!open gl!public!video! !
gpuSupportsProperties_props:!public! !
gpuSupportsShaderFormats_formatFlags:name:!gpu!public! !
gpuTextureFormatTexelBlockSize_format:!gpu!public! !
gpuTextureSupportsFormat_device:format:type:usage:!gpu!public! !
gpuTextureSupportsSampleCount_device:format:sampleCount:!gpu!public! !
hasProperty_props:name:!properties!public! !
hideWindow_window:!public!video! !
init_flags:!init!public! !
initSubSystem_flags:!init!public! !
insertGPUDebugLabel_commandBuffer:text:!gpu!public! !
loadBMP_file:!io stream!public! !
loadFile_file:datasize:!io stream!public! !
lockAudioStream_stream:!audio!public! !
lockProperties_props:!properties!public! !
lockTexture_texture:rect:pixels:pitch:!public!render! !
mapGPUTransferBuffer_device:transferBuffer:cycle:!gpu!public! !
maximizeWindow_window:!public!video! !
minimizeWindow_window:!public!video! !
openAudioDevice_devid:spec:!audio!public! !
openAudioDeviceStream_devid:spec:callback:userdata:!audio!public! !
pauseAudioDevice_devid:!audio!public! !
peepEvents_events:numevents:action:minType:maxType:!events!public! !
pollEvent_event:!events!public! !
popGPUDebugGroup_commandBuffer:!gpu!public! !
pumpEvents!events!public! !
pushEvent_event:!events!public! !
pushGPUComputeUniformData_commandBuffer:slotIndex:data:length:!gpu!public! !
pushGPUDebugGroup_commandBuffer:name:!gpu!public! !
pushGPUFragmentUniformData_commandBuffer:slotIndex:data:length:!gpu!public! !
pushGPUVertexUniformData_commandBuffer:slotIndex:data:length:!gpu!public! !
putAudioStreamData_stream:buffer:length:!audio!public! !
queryGPUFence_device:fence:!gpu!public! !
quit!init!public! !
quitIfOpen!public! !
quitSubSystem_flags:!init!public! !
raiseWindow_window:!public!video! !
registerEvents_numevents:!events!public! !
releaseGPUBuffer_device:buffer:!gpu!public! !
releaseGPUComputePipeline_device:computePipeline:!gpu!public! !
releaseGPUFence_device:fence:!gpu!public! !
releaseGPUGraphicsPipeline_device:graphicsPipeline:!gpu!public! !
releaseGPUSampler_device:sampler:!gpu!public! !
releaseGPUShader_device:shader:!gpu!public! !
releaseGPUTexture_device:texture:!gpu!public! !
releaseGPUTransferBuffer_device:transferBuffer:!gpu!public! !
releaseWindowFromGPUDevice_device:window:!gpu!public! !
removeEventWatch_filter:userdata:!events!public! !
removePath_path:!file system!public! !
removeTimer_id:!public!video! !
renamePath_oldpath:newpath:!file system!public! !
renderClear_renderer:!public!render! !
renderClipEnabled_renderer:!public!render! !
renderDebugText_renderer:x:y:str:!public!render! !
renderFillRect_renderer:rect:!public!render! !
renderGeometry_renderer:texture:vertices:numVertices:indices:numIndices:!public!render! !
renderLine_renderer:x1:y1:x2:y2:!public! !
renderPoint_renderer:x:y:!public! !
renderPresent_renderer:!public!render! !
renderReadPixels_renderer:rect:!public!render! !
renderRect_renderer:rect:!public!render! !
renderTexture_renderer:texture:srcrect:dstrect:!public! !
restoreWindow_window:!public!video! !
resumeAudioDevice_devid:!audio!public! !
setAudioStreamFormat_stream:sourceSpec:destinationSpec:!audio!public! !
setBooleanProperty_props:name:value:!properties!public! !
setCursor_cursor:!events!public! !
setEventFilter_filter:userdata:!events!public! !
setFloatProperty_props:name:value:!properties!public! !
setGPUBlendConstants_renderPass:blendConstants:!gpu!public! !
setGPUBufferName_device:buffer:text:!gpu!public! !
setGPUScissor_renderPass:scissor:!gpu!public! !
setGPUStencilReference_renderPass:reference:!gpu!public! !
setGPUSwapchainParameters_device:window:swapchainComposition:presentMode:!gpu!public! !
setGPUTextureName_device:texture:text:!gpu!public! !
setGPUViewport_renderPass:viewport:!gpu!public! !
setHint_name:value:!public! !
setNumberProperty_props:name:value:!properties!public! !
setPointerProperty_props:name:value:!properties!public! !
setPointerPropertyWithCleanup_props:name:value:cleanup:userdata:!properties!public! !
setRenderClipRect_renderer:rect:!public!render! !
setRenderDrawBlendMode_renderer:blendMode:!public!render! !
setRenderDrawColor_renderer:r:g:b:a:!public!render! !
setRenderScale_renderer:scaleX:scaleY:!public!render! !
setRenderTarget_renderer:texture:!public!render! !
setStringProperty_props:name:value:!properties!public! !
setTextureBlendMode_texture:blendMode:!public!render! !
setWindowFullscreen_window:fullscreen:!public!video! !
setWindowIcon_window:icon:!public!video! !
setWindowKeyboardGrab_window:grabbed:!public!video! !
setWindowPosition_window:x:y:!public!video! !
setWindowSize_window:w:h:!public!video! !
setWindowTitle_window:title:!public!video! !
showOpenFileDialog_callback:userdata:window:filters:nfilters:defaultLocation:allowMany:!audio!dialog!public! !
showOpenFolderDialog_callback:userdata:window:defaultLocation:allowMany:!audio!dialog!public! !
showSaveFileDialog_callback:userdata:window:filters:nfilters:defaultLocation:!audio!dialog!public! !
showWindow_window:!public!video! !
startTextInput_window:!public!video! !
stepBackUTF8_start:pstr:!gpu!public! !
submitGPUCommandBuffer_commandBuffer:!gpu!public! !
submitGPUCommandBufferAndAcquireFence_commandBuffer:!gpu!public! !
syncWindow_window:!public!video! !
unbindAudioStream_stream:!audio!public! !
unbindAudioStreams_streams:numStreams:!audio!public! !
unlockAudioStream_stream:!audio!public! !
unlockProperties_props:!properties!public! !
unlockTexture_texture:!public!render! !
unmapGPUTransferBuffer_device:transferBuffer:!gpu!public! !
updateTexture_texture:rect:pixels:pitch:!public!render! !
updateWindowSurface_window:!public!video! !
updateWindowSurfaceRects_window:rects:numrects:!public!video! !
uploadToGPUBuffer_copyPass:source:destination:cycle:!gpu!public! !
uploadToGPUTexture_copyPass:source:destination:cycle:!gpu!public! !
waitEvent_event:!events!public! !
waitEventTimeout_event:timeout:!events!public! !
waitForGPUFences_device:waitAll:fences:numFences:!gpu!public! !
waitForGPUIdle_device:!gpu!public! !
wasInit_flags:!init!public! !
windowSupportsGPUPresentMode_device:window:presentMode:!gpu!public! !
windowSupportsGPUSwapchainComposition_device:window:swapchainComposition:!gpu!public! !
!

!SDL3Library class methodsFor!

fileName
	^FileLocator imageRelative: 'SDL3'!

testAudio
	| sdl resultCode audioSpec audioDeviceId audioStream |
	sdl := SDL3Library default.
	resultCode := sdl initSubSystem_flags: 16.
	resultCode < 0 ifTrue: [self error: 'Error when initializing SDL audio subsystem'].
	audioSpec := SDL_AudioSpec new.
	sdl
		getAudioDeviceFormat_devid: 16rFFFFFFFF
		spec: audioSpec
		sampleFrames: nil.
	Transcript
		display: audioSpec;
		cr.
	audioDeviceId := sdl openAudioDevice_devid: 16rFFFFFFFF spec: audioSpec.
	audioStream := sdl createAudioStream_sourceSpec: audioSpec destinationSpec: audioSpec.
	resultCode := sdl bindAudioStream_devid: audioDeviceId stream: audioStream.
	resultCode < 0 ifTrue: [self error: 'Error binding audio stream'].
	resultCode := sdl unbindAudioStream_stream: audioStream.
	sdl quitSubSystem_flags: 16! !

!SDL3Library class categoriesForMethods!
fileName!public! !
testAudio!public! !
!

