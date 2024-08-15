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

addEventWatch_filter: filter userdata: userdata
	<cdecl: void SDL_AddEventWatch SDL_EventFilter void*>
	^self invalidCall: _failureCode!

addTimer_interval: interval callback: callback param: param
	<cdecl: sdword SDL_AddTimer dword void* void*>
	^self invalidCall: _failureCode!

audioDevicePaused_devid: devid
	<cdecl: bool SDL_AudioDevicePaused dword>
	^self invalidCall: _failureCode!

bindAudioStream_devid: devid stream: stream
	<cdecl: sdword SDL_BindAudioStreams dword SDL_AudioStream*>
	^self invalidCall: _failureCode!

bindAudioStreams_devid: devid streams: streams numStreams: numStreams
	<cdecl: sdword SDL_BindAudioStreams dword SDL_AudioStream** sdword>
	^self invalidCall: _failureCode!

blitSurface_src: src srcrect: srcrect dst: dst dstrect: dstrect
	<cdecl: sdword SDL_UpperBlit SDL_Surface* SDL_Rect* SDL_Surface* SDL_Rect*>
	^self invalidCall: _failureCode!

clearAudioStream_stream: stream
	<cdecl: sdword SDL_ClearAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

closeAudioDevice_devid: devid
	<cdecl: void SDL_CloseAudioDevice dword>
	^self invalidCall: _failureCode!

copyFile_oldpath: oldpath newpath: newpath
	<cdecl: sdword SDL_CopyFile char* char*>
	^self invalidCall: _failureCode!

createAudioStream_sourceSpec: sourceSpec destinationSpec: destinationSpec
	<cdecl: SDL_AudioStream* SDL_CreateAudioStream SDL_AudioSpec* SDL_AudioSpec*>
	^self invalidCall: _failureCode!

createCursor_data: data mask: mask w: w h: h hotX: hotX hotY: hotY
	<cdecl: SDL_Cursor* SDL_CreateCursor word* word* sdword sdword sdword sdword>
	^self invalidCall: _failureCode!

createDirectory_path: path
	<cdecl: sdword SDL_CreateDirectory char*>
	^self invalidCall: _failureCode!

createRenderer_window: window name: name flags: flags
	<cdecl: SDL_Renderer* SDL_CreateRenderer SDL_Window* lpstr dword>
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
	<cdecl: sdword SDL_CreateWindowAndRenderer lpstr sdword sdword dword SDL_Window* SDL_Renderer*>
	^self invalidCall: _failureCode!

createWindowFrom_data: data
	<cdecl: SDL_Window* SDL_CreateWindowFrom void*>
	^self invalidCall: _failureCode!

createWindowWithPosition_title: title x: x y: y w: w h: h flags: flags
	<cdecl: SDL_Window* SDL_CreateWindowWithPosition lpstr sdword sdword sdword sdword dword>
	^self invalidCall: _failureCode!

delay_ms: ms
	<cdecl: void SDL_Delay dword>
	^self invalidCall: _failureCode!

delayNS_ns: ns
	<cdecl: void SDL_DelayNS qword>
	^self invalidCall: _failureCode!

delEventWatch_filter: filter userdata: userdata
	<cdecl: void SDL_DelEventWatch SDL_EventFilter void*>
	^self invalidCall: _failureCode!

destroyAudioStream_stream: stream
	<cdecl: void SDL_DestroyAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

destroyCursor_cursor: cursor
	<cdecl: void SDL_DestroyCursor SDL_Cursor*>
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

displayOrientation_displayIndex: displayIndex
	<cdecl: sdword SDL_DisplayOrientation sdword>
	^self invalidCall: _failureCode!

enterAppMainCallbacks_argc: argc argv: argv appInit: appInit  appIter: appIter appEvent: appEvent appQuit: appQuit
	<cdecl: sdword SDL_EnterAppMainCallbacks sdword lpstr void* void* void* void*>
	^self invalidCall: _failureCode!

enumerateDirectory_path: path callback: callback userdata: userdata
	<cdecl: sdword SDL_EnumerateDirectory char* void* void*>
	^self invalidCall: _failureCode!

flashWindow_window: window operation: operation
	<cdecl: sdword SDL_DestroyWindow SDL_Window* dword>
	^self invalidCall: _failureCode!

flushAudioStream_stream: stream
	<cdecl: sdword SDL_FlushAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

getAudioCaptureDevices_count: count
	<cdecl: dword* SDL_GetAudioCaptureDevices sdword*>
	^self invalidCall: _failureCode!

getAudioDeviceFormat_devid: devid spec: spec sampleFrames: sampleFrames
	<cdecl: sdword SDL_GetAudioDeviceName dword SDL_AudioSpec* sdword*>
	^self invalidCall: _failureCode!

getAudioDeviceName_devid: devid
	<cdecl: lpstr SDL_GetAudioDeviceName dword>
	^self invalidCall: _failureCode!

getAudioDriver_index: index
	<cdecl: lpstr SDL_GetAudioDriver sdword>
	^self invalidCall: _failureCode!

getAudioOutputDevices_count: count
	<cdecl: dword* SDL_GetAudioOutputDevices sdword*>
	^self invalidCall: _failureCode!

getAudioStreamAvailable_stream: stream
	<cdecl: sdword SDL_GetAudioStreamAvailable SDL_AudioStream*>
	^self invalidCall: _failureCode!

getAudioStreamDevice_stream: stream
	<cdecl: dword SDL_GetAudioStreamDevice SDL_AudioStream*>
	^self invalidCall: _failureCode!

getAudioStreamFormat_stream: stream sourceSpec: sourceSpec destinationSpec: destinationSpec
	<cdecl: sdword SDL_GetAudioStreamFormat SDL_AudioStream* SDL_AudioSpec* SDL_AudioSpec*>
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

getCurrentAudioDriver
	<cdecl: lpstr SDL_GetCurrentAudioDriver>
	^self invalidCall: _failureCode!

getCurrentDisplayMode_displayID: displayID
	<cdecl: SDL_DisplayMode* SDL_GetCurrentDisplayMode dword>
	^self invalidCall: _failureCode!

getCurrentVideoDriver
	<cdecl: lpstr SDL_GetCurrentVideoDriver>
	^self invalidCall: _failureCode!

getDesktopDisplayMode_displayIndex: displayIndex mode: mode
	<cdecl: sdword SDL_GetDesktopDisplayMode sdword SDL_DisplayMode*>
	^self invalidCall: _failureCode!

getDisplayBounds_displayIndex: displayIndex rect: rect
	<cdecl: sdword SDL_GetDisplayBounds sdword SDL_Rect*>
	^self invalidCall: _failureCode!

getDisplayDPI_displayIndex: displayIndex ddpi: ddpi hdpi: hdpi vdpi: vdpi
	<cdecl: sdword SDL_GetDisplayDPI sdword float* float* float*>
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
	<cdecl: sdword SDL_GetDisplayUsableBounds sdword SDL_Rect*>
	^self invalidCall: _failureCode!

getError
	<cdecl: lpstr SDL_GetError>
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

getNumDisplayModes_displayIndex: displayIndex
	<cdecl: sdword SDL_GetNumDisplayModes sdword>
	^self invalidCall: _failureCode!

getNumVideoDisplays
	<cdecl: sdword SDL_GetNumVideoDisplays>
	^self invalidCall: _failureCode!

getNumVideoDrivers
	<cdecl: sdword SDL_GetNumVideoDrivers>
	^self invalidCall: _failureCode!

getPathInfo_path: path info: info
	<cdecl: sdword SDL_GetPathInfo char* SDL_PathInfo*>
	^self invalidCall: _failureCode!

getPerformanceCounter
	<cdecl: qword SDL_GetTicks>
	^self invalidCall: _failureCode!

getPerformanceFrequency
	<cdecl: qword SDL_GetTicks>
	^self invalidCall: _failureCode!

getPixelFormatEnumForMasks_bpp: bpp rMask: rMask gMask: gMask bMask: bMask aMask: aMask
	<cdecl: dword SDL_GetPixelFormatEnumForMasks sdword dword dword dword dword>
	^self invalidCall: _failureCode!

getPointDisplayIndex_point: point
	<cdecl: sdword SDL_GetPointDisplayIndex SDL_Point*>
	^self invalidCall: _failureCode!

getPrimaryDisplay
	<cdecl: dword SDL_GetPrimaryDisplay>
	^self invalidCall: _failureCode!

getProperty_props: props name: name defaultValue: defaultValue
	<cdecl: void* SDL_GetProperty dword lpstr void*>
	^self invalidCall: _failureCode!

getRectDisplayIndex_rect: rect
	<cdecl: sdword SDL_GetRectDisplayIndex SDL_Rect*>
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

getRendererInfo_renderer: renderer info: info
	<cdecl: sdword SDL_GetRendererInfo SDL_Renderer* SDL_RendererInfo*>
	^self invalidCall: _failureCode!

getRenderScale_renderer: renderer scaleX: scaleX scaleY: scaleY
	<cdecl: sdword SDL_GetRenderScale SDL_Renderer* float* float*>
	^self invalidCall: _failureCode!

getRenderTarget_renderer: renderer
	<cdecl: SDL_Texture* SDL_GetRenderTarget SDL_Renderer*>
	^self invalidCall: _failureCode!

getRenderWindow_renderer: renderer
	<cdecl: SDL_Window* SDL_GetRenderWindow SDL_Renderer*>
	^self invalidCall: _failureCode!

getTextureBlendMode_texture: texture blendMode: blendMode
	<cdecl: sdword SDL_GetTextureBlendMode SDL_Texture* dword*>
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

getVersion_ver: ver
	<cdecl: void SDL_GetVersion SDL_Version*>
	^self invalidCall: _failureCode!

getVideoDriver_index: index
	<cdecl: lpstr SDL_GetVideoDriver sdword>
	^self invalidCall: _failureCode!

getWindowBordersSize_window: window top: top left: left bottom: bottom right: right
	<cdecl: sdword SDL_GetWindowBordersSize SDL_Window* sdword* sdword* sdword* sdword*>
	^self invalidCall: _failureCode!

getWindowData_window: window name: name
	<cdecl: void* SDL_SetWindowData SDL_Window* lpstr>
	^self invalidCall: _failureCode!

getWindowDisplayIndex_window: window
	<cdecl: sdword SDL_GetRectDisplayIndex SDL_Window*>
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
	<cdecl: void SDL_GetWindowSize SDL_Window* sdword* sdword*>
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

glDeleteContext_context: context
	<cdecl: sdword SDL_GL_DeleteContext handle>
	^self invalidCall: _failureCode!

glExtensionSupported_extension: extension
	<cdecl: bool SDL_GL_ExtensionSupported char*>
	^self invalidCall: _failureCode!

glGetAttribute_attr: attr value: value
	<cdecl: sdword SDL_GL_GetAttribute sdword sdword*>
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
	<cdecl: sdword SDL_GL_GetSwapInterval sdword*>
	^self invalidCall: _failureCode!

glLoadLibrary_path: path
	<cdecl: sdword SDL_GL_LoadLibrary char*>
	^self invalidCall: _failureCode!

glMakeCurrent_window: window context: context
	<cdecl: sdword SDL_GL_MakeCurrent SDL_Window* handle>
	^self invalidCall: _failureCode!

glResetAttributes
	<cdecl: void SDL_GL_ResetAttributes>
	^self invalidCall: _failureCode!

glSetAttribute_attr: attr value: value
	<cdecl: sdword SDL_GL_SetAttribute sdword sdword>
	^self invalidCall: _failureCode!

glSetSwapInterval_interval: interval
	<cdecl: sdword SDL_GL_SetSwapInterval sdword>
	^self invalidCall: _failureCode!

glSwapWindow_window: window
	<cdecl: sdword SDL_GL_SwapWindow SDL_Window*>
	^self invalidCall: _failureCode!

glUnloadLibrary
	<cdecl: void SDL_GL_UnloadLibrary>
	^self invalidCall: _failureCode!

hideWindow_window: window
	<cdecl: void SDL_HideWindow SDL_Window*>
	^self invalidCall: _failureCode!

init_flags: flags
	<cdecl: sdword SDL_Init dword>
	^self invalidCall: _failureCode!

initSubSystem_flags: flags
	<cdecl: sdword SDL_InitSubSystem dword>
	^self invalidCall: _failureCode!

lockAudioStream_stream: stream
	<cdecl: sdword SDL_LockAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

lockTexture_texture: texture rect: rect pixels: pixels pitch: pitch
	<cdecl: sdword SDL_LockTexture SDL_Texture* SDL_Rect* void** sdword*>
	^self invalidCall: _failureCode!

maximizeWindow_window: window
	<cdecl: void SDL_MaximizeWindow SDL_Window*>
	^self invalidCall: _failureCode!

minimizeWindow_window: window
	<cdecl: void SDL_MinimizeWindow SDL_Window*>
	^self invalidCall: _failureCode!

openAudioDevice_devid: devid spec: spec
	<cdecl: dword SDL_OpenAudioDevice dword SDL_AudioSpec*>
	^self invalidCall: _failureCode!

openAudioDeviceStream_devid: devid spec: spec callback: callback userdata: userdata
	<cdecl: SDL_AudioStream* SDL_OpenAudioDeviceStream dword SDL_AudioSpec* void* void*>
	^self invalidCall: _failureCode!

pauseAudioDevice_devid: devid
	<cdecl: sdword SDL_PauseAudioDevice dword>
	^self invalidCall: _failureCode!

peepEvents_events: events numevents: numevents action: action minType: minType maxType: maxType
	<cdecl: sdword SDL_PeepEvents SDL_Event* sdword dword dword dword>
	^self invalidCall: _failureCode!

pollEvent_event: event
	<cdecl: sdword SDL_PollEvent SDL_Event*>
	^self invalidCall: _failureCode!

pumpEvents
	<cdecl: void SDL_PumpEvents>
	^self invalidCall: _failureCode!

pushEvent_event: event
	<cdecl: sdword SDL_PushEvent SDL_Event*>
	^self invalidCall: _failureCode!

putAudioStreamData_stream: stream buffer: buffer length: length
	<cdecl: sdword SDL_PutAudioStreamData SDL_AudioStream* void* sdword>
	^self invalidCall: _failureCode!

queryTexture_texture: texture format: format access: access w: w h: h
	<cdecl: sdword SDL_QueryTexture SDL_Texture* dword* sdword* sdword* sdword*>
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
	<cdecl: void SDL_RaiseWindow SDL_Window*>
	^self invalidCall: _failureCode!

registerEvents_numevents: numevents
	<cdecl: dword SDL_RegisterEvents sdword>
	^self invalidCall: _failureCode!

removeTimer_id: id
	<cdecl: bool SDL_RemoveTimer sdword>
	^self invalidCall: _failureCode!

renderClear_renderer: renderer
	<cdecl: sdword SDL_RenderClear SDL_Renderer*>
	^self invalidCall: _failureCode!

renderClipEnabled_renderer: renderer
	<cdecl: bool SDL_RenderClipEnabled SDL_Renderer*>
	^self invalidCall: _failureCode!

renderFillRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_RenderFillRect SDL_Renderer* SDL_FRect*>
	^self invalidCall: _failureCode!

renderGeometry_renderer: renderer texture: texture vertices: vertices numVertices: numVertices indices: indices numIndices: numIndices
	<cdecl: sdword SDL_RenderGeometry SDL_Renderer* SDL_Texture* SDL_Vertex* sdword sdword* sdword>
	^self invalidCall: _failureCode!

renderLine_renderer: renderer x1: x1 y1: y1 x2: x2 y2: y2
	<cdecl: sdword SDL_RenderLine SDL_Renderer* float float float float>
	^self invalidCall: _failureCode!

renderPoint_renderer: renderer x: x y: y
	<cdecl: sdword SDL_RenderPoint SDL_Renderer* float float>
	^self invalidCall: _failureCode!

renderPresent_renderer: renderer
	<cdecl: sdword SDL_RenderPresent SDL_Renderer*>
	^self invalidCall: _failureCode!

renderReadPixels_renderer: renderer rect: rect
	<cdecl: SDL_Surface* SDL_RenderReadPixels SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

renderRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_RenderRect SDL_Renderer* SDL_FRect*>
	^self invalidCall: _failureCode!

renderSetClipRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_RenderSetClipRect SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

renderTexture_renderer: renderer texture: texture srcrect: srcrect dstrect: dstrect
	<cdecl: sdword SDL_RenderTexture SDL_Renderer* SDL_Texture* SDL_FRect* SDL_FRect*>
	^self invalidCall: _failureCode!

restoreWindow_window: window
	<cdecl: void SDL_RestoreWindow SDL_Window*>
	^self invalidCall: _failureCode!

resumeAudioDevice_devid: devid
	<cdecl: sdword SDL_ResumeAudioDevice dword>
	^self invalidCall: _failureCode!

setAudioStreamFormat_stream: stream sourceSpec: sourceSpec destinationSpec: destinationSpec
	<cdecl: sdword SDL_SetAudioStreamFormat SDL_AudioStream* SDL_AudioSpec* SDL_AudioSpec*>
	^self invalidCall: _failureCode!

setCursor_cursor: cursor
	<cdecl: void SDL_SetCursor SDL_Cursor*>
	^self invalidCall: _failureCode!

setEventFilter_filter: filter userdata: userdata
	<cdecl: void SDL_SetEventFilter SDL_EventFilter void*>
	^self invalidCall: _failureCode!

setHint_name: name value: value
	<cdecl: bool SDL_SetHint lpstr lpstr>
	^self invalidCall: _failureCode!

setRenderClipRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_SetRenderClipRect SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

setRenderDrawBlendMode_renderer: renderer blendMode: blendMode
	<cdecl: sdword SDL_SetRenderDrawBlendMode SDL_Renderer* dword>
	^self invalidCall: _failureCode!

setRenderDrawColor_renderer: renderer r: r g: g b: b a: a
	<cdecl: sdword SDL_SetRenderDrawColor SDL_Renderer* byte byte byte byte>
	^self invalidCall: _failureCode!

setRenderScale_renderer: renderer scaleX: scaleX scaleY: scaleY
	<cdecl: sdword SDL_SetRenderScale SDL_Renderer* float float>
	^self invalidCall: _failureCode!

setRenderTarget_renderer: renderer texture: texture
	<cdecl: sdword SDL_SetRenderTarget SDL_Renderer* SDL_Texture*>
	^self invalidCall: _failureCode!

setTextureBlendMode_texture: texture blendMode: blendMode
	<cdecl: sdword SDL_SetTextureBlendMode SDL_Texture* dword>
	^self invalidCall: _failureCode!

setWindowData_window: window name: name userdata: userdata
	<cdecl: void* SDL_SetWindowData SDL_Window* lpstr void*>
	^self invalidCall: _failureCode!

setWindowFullscreen_window: window fullscreen: fullscreen
	<cdecl: sdword SDL_SetWindowFullscreen SDL_Window* bool>
	^self invalidCall: _failureCode!

setWindowIcon_window: window icon: icon
	<cdecl: void SDL_SetWindowIcon SDL_Window* SDL_Surface*>
	^self invalidCall: _failureCode!

setWindowInputFocus_window: window
	<cdecl: sdword SDL_SetWindowInputFocus SDL_Window*>
	^self invalidCall: _failureCode!

setWindowKeyboardGrab_window: window grabbed: grabbed
	<cdecl: void SDL_SetWindowKeyboardGrab SDL_Window* bool>
	^self invalidCall: _failureCode!

setWindowPosition_window: window x: x y: y
	<cdecl: void SDL_SetWindowPosition SDL_Window* sdword sdword>
	^self invalidCall: _failureCode!

setWindowSize_window: window w: w h: h
	<cdecl: void SDL_SetWindowSize SDL_Window* sdword sdword>
	^self invalidCall: _failureCode!

setWindowTitle_window: window title: title
	<cdecl: void SDL_SetWindowTitle SDL_Window* lpstr>
	^self invalidCall: _failureCode!

showWindow_window: window
	<cdecl: void SDL_ShowWindow SDL_Window*>
	^self invalidCall: _failureCode!

startTextInput
	<cdecl: void SDL_StartTextInput>
	^self invalidCall: _failureCode!

unbindAudioStream_stream: stream
	<cdecl: void SDL_UnbindAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

unbindAudioStreams_streams: streams numStreams: numStreams
	<cdecl: void SDL_BindAudioStreams SDL_AudioStream** sdword>
	^self invalidCall: _failureCode!

unlockAudioStream_stream: stream
	<cdecl: sdword SDL_UnlockAudioStream SDL_AudioStream*>
	^self invalidCall: _failureCode!

unlockTexture_texture: texture
	<cdecl: sdword SDL_UnlockTexture SDL_Texture*>
	^self invalidCall: _failureCode!

updateTexture_texture: texture rect: rect pixels: pixels pitch: pitch
	<cdecl: sdword SDL_UpdateTexture SDL_Texture* SDL_Rect* void* sdword>
	^self invalidCall: _failureCode!

updateWindowSurface_window: window
	<cdecl: sdword SDL_UpdateWindowSurface SDL_Window*>
	^self invalidCall: _failureCode!

updateWindowSurfaceRects_window: window rects: rects numrects: numrects
	<cdecl: sdword SDL_UpdateWindowSurface SDL_Window* SDL_Rect* sdword>
	^self invalidCall: _failureCode!

videoInit_driverName: driverName
	<cdecl: sdword SDL_VideoInit lpstr>
	^self invalidCall: _failureCode!

videoQuit
	<cdecl: void SDL_VideoQuit>
	^self invalidCall: _failureCode!

waitEvent_event: event
	<cdecl: sdword SDL_WaitEvent SDL_Event*>
	^self invalidCall: _failureCode!

waitEventTimeout_event: event timeout: timeout
	<cdecl: sdword SDL_WaitEventTimeout SDL_Event* sdword>
	^self invalidCall: _failureCode!

wasInit_flags: flags
	<cdecl: void SDL_WasInit dword>
	^self invalidCall: _failureCode! !

!SDL3Library categoriesForMethods!
addEventWatch_filter:userdata:!events!public! !
addTimer_interval:callback:param:!public!video! !
audioDevicePaused_devid:!audio!public! !
bindAudioStream_devid:stream:!audio!public! !
bindAudioStreams_devid:streams:numStreams:!audio!public! !
blitSurface_src:srcrect:dst:dstrect:!public!render! !
clearAudioStream_stream:!audio!public! !
closeAudioDevice_devid:!audio!public! !
copyFile_oldpath:newpath:!file system!public! !
createAudioStream_sourceSpec:destinationSpec:!audio!public! !
createCursor_data:mask:w:h:hotX:hotY:!events!public! !
createDirectory_path:!file system!public! !
createRenderer_window:name:flags:!public!render! !
createSoftwareRenderer_surface:!public!render! !
createSurface_width:height:format:!public!render! !
createSurfaceFrom_pixels:width:height:pitch:format:!public!render! !
createSystemCursor_id:!events!public! !
createTexture_renderer:format:access:w:h:!public!render! !
createTextureFromSurface_renderer:surface:!public!render! !
createWindow_title:w:h:flags:!public!video! !
createWindowAndRenderer_title:width:height:windowFlags:window:renderer:!public!render! !
createWindowFrom_data:!public!video! !
createWindowWithPosition_title:x:y:w:h:flags:!public!video! !
delay_ms:!public!video! !
delayNS_ns:!public!video! !
delEventWatch_filter:userdata:!events!public! !
destroyAudioStream_stream:!audio!public! !
destroyCursor_cursor:!public! !
destroyRenderer_renderer:!public!render! !
destroySurface_surface:!public! !
destroyTexture_texture:!public!video! !
destroyWindow_window:!public!video! !
displayOrientation_displayIndex:!public!video! !
enterAppMainCallbacks_argc:argv:appInit:appIter:appEvent:appQuit:!init!public! !
enumerateDirectory_path:callback:userdata:!file system!public! !
flashWindow_window:operation:!public!video! !
flushAudioStream_stream:!audio!public! !
getAudioCaptureDevices_count:!audio!public! !
getAudioDeviceFormat_devid:spec:sampleFrames:!audio!public! !
getAudioDeviceName_devid:!audio!public! !
getAudioDriver_index:!audio!public! !
getAudioOutputDevices_count:!audio!public! !
getAudioStreamAvailable_stream:!audio!public! !
getAudioStreamDevice_stream:!audio!public! !
getAudioStreamFormat_stream:sourceSpec:destinationSpec:!audio!public! !
getAudioStreamFrequencyRatio_stream:!audio!public! !
getAudioStreamProperties_stream:!audio!public! !
getAudioStreamQueued_stream:!audio!public! !
getBasePath!file system!public! !
getCurrentAudioDriver!audio!public! !
getCurrentDisplayMode_displayID:!public! !
getCurrentVideoDriver!public!video! !
getDesktopDisplayMode_displayIndex:mode:!public!video! !
getDisplayBounds_displayIndex:rect:!public!video! !
getDisplayDPI_displayIndex:ddpi:hdpi:vdpi:!public!video! !
getDisplayMode_displayIndex:modeIndex:mode:!public!video! !
getDisplayName_displayIndex:!public!video! !
getDisplays_count:!public!video! !
getDisplayUsableBounds_displayIndex:rect:!public!video! !
getError!error!public! !
getKeyboardState_numkeys:!public!video! !
getKeyFromScancode_scancode:!public!video! !
getNumAudioDrivers!audio!public! !
getNumDisplayModes_displayIndex:!public!video! !
getNumVideoDisplays!public!video! !
getNumVideoDrivers!public!video! !
getPathInfo_path:info:!file system!public! !
getPerformanceCounter!public!video! !
getPerformanceFrequency!public!video! !
getPixelFormatEnumForMasks_bpp:rMask:gMask:bMask:aMask:!public!video! !
getPointDisplayIndex_point:!public!video! !
getPrimaryDisplay!public! !
getProperty_props:name:defaultValue:!public!video! !
getRectDisplayIndex_rect:!public!video! !
getRectIntersection_a:b:result:!public!video! !
getRectIntersectionFloat_a:b:result:!public!video! !
getRenderClipRect_renderer:rect:!public!render! !
getRenderer_window:!public!render! !
getRendererInfo_renderer:info:!public!render! !
getRenderScale_renderer:scaleX:scaleY:!public!render! !
getRenderTarget_renderer:!public!render! !
getRenderWindow_renderer:!public!render! !
getTextureBlendMode_texture:blendMode:!public!render! !
getTicks!public!video! !
getTicksNS!public!video! !
getUserFolder_folder:!file system!public! !
getVersion_ver:!public! !
getVideoDriver_index:!public!video! !
getWindowBordersSize_window:top:left:bottom:right:!public!video! !
getWindowData_window:name:!public!video! !
getWindowDisplayIndex_window:!public!video! !
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
getWindowSurface_window:!public!video! !
getWindowTitle_window:!public!video! !
glCreateContext_window:!open gl!public!video! !
glDeleteContext_context:!open gl!public!video! !
glExtensionSupported_extension:!open gl!public!video! !
glGetAttribute_attr:value:!open gl!public!video! !
glGetCurrentContext!open gl!public!video! !
glGetCurrentWindow!open gl!public!video! !
glGetProcAddress_proc:!open gl!public!video! !
glGetSwapInterval_interval:!open gl!public!video! !
glLoadLibrary_path:!open gl!public!video! !
glMakeCurrent_window:context:!open gl!public!video! !
glResetAttributes!open gl!public!video! !
glSetAttribute_attr:value:!open gl!public!video! !
glSetSwapInterval_interval:!open gl!public!video! !
glSwapWindow_window:!open gl!public!video! !
glUnloadLibrary!open gl!public!video! !
hideWindow_window:!public!video! !
init_flags:!init!public! !
initSubSystem_flags:!init!public! !
lockAudioStream_stream:!audio!public! !
lockTexture_texture:rect:pixels:pitch:!public!render! !
maximizeWindow_window:!public!video! !
minimizeWindow_window:!public!video! !
openAudioDevice_devid:spec:!audio!public! !
openAudioDeviceStream_devid:spec:callback:userdata:!audio!public! !
pauseAudioDevice_devid:!audio!public! !
peepEvents_events:numevents:action:minType:maxType:!events!public! !
pollEvent_event:!events!public! !
pumpEvents!events!public! !
pushEvent_event:!events!public! !
putAudioStreamData_stream:buffer:length:!audio!public! !
queryTexture_texture:format:access:w:h:!public!render! !
quit!init!public! !
quitIfOpen!public! !
quitSubSystem_flags:!init!public! !
raiseWindow_window:!public!video! !
registerEvents_numevents:!events!public! !
removeTimer_id:!public!video! !
renderClear_renderer:!public!render! !
renderClipEnabled_renderer:!public!render! !
renderFillRect_renderer:rect:!public!render! !
renderGeometry_renderer:texture:vertices:numVertices:indices:numIndices:!public!render! !
renderLine_renderer:x1:y1:x2:y2:!public! !
renderPoint_renderer:x:y:!public! !
renderPresent_renderer:!public!render! !
renderReadPixels_renderer:rect:!public!render! !
renderRect_renderer:rect:!public!render! !
renderSetClipRect_renderer:rect:!public!render! !
renderTexture_renderer:texture:srcrect:dstrect:!public! !
restoreWindow_window:!public!video! !
resumeAudioDevice_devid:!audio!public! !
setAudioStreamFormat_stream:sourceSpec:destinationSpec:!audio!public! !
setCursor_cursor:!events!public! !
setEventFilter_filter:userdata:!events!public! !
setHint_name:value:!public! !
setRenderClipRect_renderer:rect:!public!render! !
setRenderDrawBlendMode_renderer:blendMode:!public!render! !
setRenderDrawColor_renderer:r:g:b:a:!public!render! !
setRenderScale_renderer:scaleX:scaleY:!public!render! !
setRenderTarget_renderer:texture:!public!render! !
setTextureBlendMode_texture:blendMode:!public!render! !
setWindowData_window:name:userdata:!public!video! !
setWindowFullscreen_window:fullscreen:!public!video! !
setWindowIcon_window:icon:!public!video! !
setWindowInputFocus_window:!public!video! !
setWindowKeyboardGrab_window:grabbed:!public!video! !
setWindowPosition_window:x:y:!public!video! !
setWindowSize_window:w:h:!public!video! !
setWindowTitle_window:title:!public!video! !
showWindow_window:!public!video! !
startTextInput!public!video! !
unbindAudioStream_stream:!audio!public! !
unbindAudioStreams_streams:numStreams:!audio!public! !
unlockAudioStream_stream:!audio!public! !
unlockTexture_texture:!public!render! !
updateTexture_texture:rect:pixels:pitch:!public!render! !
updateWindowSurface_window:!public!video! !
updateWindowSurfaceRects_window:rects:numrects:!public!video! !
videoInit_driverName:!public!video! !
videoQuit!public!video! !
waitEvent_event:!events!public! !
waitEventTimeout_event:timeout:!events!public! !
wasInit_flags:!init!public! !
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

