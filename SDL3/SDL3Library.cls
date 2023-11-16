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
	<cdecl: void SDL_AddEventWatch SDL_EventFilter lpvoid>
	^self invalidCall: _failureCode!

blitSurface_src: src srcrect: srcrect dst: dst dstrect: dstrect
	<cdecl: sdword SDL_UpperBlit SDL_Surface* SDL_Rect* SDL_Surface* SDL_Rect*>
	^self invalidCall: _failureCode!

createCursor_data: data mask: mask w: w h: h hotX: hotX hotY: hotY
	<cdecl: SDL_Cursor* SDL_CreateCursor word* word* sdword sdword sdword sdword>
	^self invalidCall: _failureCode!

createRenderer_window: window index: index flags: flags
	<cdecl: SDL_Renderer* SDL_CreateRenderer SDL_Window* sdword dword>
	^self invalidCall: _failureCode!

createRenderer_window: window name: name flags: flags
	<cdecl: SDL_Renderer* SDL_CreateRenderer SDL_Window* lpstr dword>
	^self invalidCall: _failureCode!

createRGBSurface_flags: flags width: width height: height depth: depth rMask: rMask gMask: gMask bMask: bMask aMask: aMask
	<cdecl: SDL_Surface* SDL_CreateRGBSurface dword sdword sdword sdword dword dword dword dword>
	^self invalidCall: _failureCode!

createSoftwareRenderer_surface: surface
	<cdecl: SDL_Renderer* SDL_CreateSoftwareRenderer SDL_Surface*>
	^self invalidCall: _failureCode!

createSurface_width: width height: height format: format
	<cdecl: SDL_Surface* SDL_CreateSurface sdword sdword dword>
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

createWindowAndRenderer_width: width height: height windowFlags: windowFlags window: window renderer: renderer
	<cdecl: sdword SDL_CreateWindowAndRenderer sdword sdword dword SDL_Window* SDL_Renderer*>
	^self invalidCall: _failureCode!

createWindowFrom_data: data
	<cdecl: SDL_Window* SDL_CreateWindowFrom lpvoid>
	^self invalidCall: _failureCode!

createWindowWithPosition_title: title x: x y: y w: w h: h flags: flags
	<cdecl: SDL_Window* SDL_CreateWindowWithPosition lpstr sdword sdword sdword sdword dword>
	^self invalidCall: _failureCode!

delEventWatch_filter: filter userdata: userdata
	<cdecl: void SDL_DelEventWatch SDL_EventFilter lpvoid>
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
	<cdecl: sdword SDL_EnterAppMainCallbacks sdword lpstr lpvoid lpvoid lpvoid lpvoid>
	^self invalidCall: _failureCode!

flashWindow_window: window operation: operation
	<cdecl: sdword SDL_DestroyWindow SDL_Window* dword>
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

getKeyFromScancode_scancode: scancode
	<cdecl: sdword SDL_GetKeyFromScancode sdword>
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
	<cdecl: void SDL_GetProperty dword lpstr void*>
	^self invalidCall: _failureCode!

getRectDisplayIndex_rect: rect
	<cdecl: sdword SDL_GetRectDisplayIndex SDL_Rect*>
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

getRenderWindow_renderer: renderer
	<cdecl: SDL_Window* SDL_GetRenderWindow SDL_Renderer*>
	^self invalidCall: _failureCode!

getTextureBlendMode_texture: texture blendMode: blendMode
	<cdecl: sdword SDL_GetTextureBlendMode SDL_Texture* dword*>
	^self invalidCall: _failureCode!

getTicks
	<cdecl: dword SDL_GetTicks>
	^self invalidCall: _failureCode!

getTicks64
	<cdecl: dword SDL_GetTicks64>
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
	<cdecl: lpvoid SDL_SetWindowData SDL_Window* lpstr>
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
	<cdecl: lpvoid SDL_GetWindowICCProfile SDL_Window* intptr*>
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

hideWindow_window: window
	<cdecl: void SDL_HideWindow SDL_Window*>
	^self invalidCall: _failureCode!

init_flags: flags
	<cdecl: void SDL_Init dword>
	^self invalidCall: _failureCode!

initSubSystem_flags: flags
	<cdecl: void SDL_InitSubSystem dword>
	^self invalidCall: _failureCode!

lockTexture_texture: texture rect: rect pixels: pixels pitch: pitch
	<cdecl: sdword SDL_LockTexture SDL_Texture* SDL_Rect* lpvoid* sdword*>
	^self invalidCall: _failureCode!

maximizeWindow_window: window
	<cdecl: void SDL_MaximizeWindow SDL_Window*>
	^self invalidCall: _failureCode!

minimizeWindow_window: window
	<cdecl: void SDL_MinimizeWindow SDL_Window*>
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

queryTexture_texture: texture format: format access: access w: w h: h
	<cdecl: sdword SDL_QueryTexture SDL_Texture* dword* sdword* sdword* sdword*>
	^self invalidCall: _failureCode!

quit
	<cdecl: void SDL_Quit>
	^self invalidCall: _failureCode!

quitSubSystem_flags: flags
	<cdecl: void SDL_QuitSubSystem dword>
	^self invalidCall: _failureCode!

raiseWindow_window: window
	<cdecl: void SDL_RaiseWindow SDL_Window*>
	^self invalidCall: _failureCode!

registerEvents_numevents: numevents
	<cdecl: dword SDL_RegisterEvents sdword>
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

renderPresent_renderer: renderer
	<cdecl: sdword SDL_RenderPresent SDL_Renderer*>
	^self invalidCall: _failureCode!

renderReadPixels_renderer: renderer rect: rect format: format pixels: pixels pitch: pitch
	<cdecl: sdword SDL_RenderReadPixels SDL_Renderer* SDL_Rect* dword void* sdword>
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

setCursor_cursor: cursor
	<cdecl: void SDL_SetCursor SDL_Cursor*>
	^self invalidCall: _failureCode!

setEventFilter_filter: filter userdata: userdata
	<cdecl: void SDL_SetEventFilter SDL_EventFilter lpvoid>
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

setTextureBlendMode_texture: texture blendMode: blendMode
	<cdecl: sdword SDL_SetTextureBlendMode SDL_Texture* dword>
	^self invalidCall: _failureCode!

setWindowData_window: window name: name userdata: userdata
	<cdecl: lpvoid SDL_SetWindowData SDL_Window* lpstr lpvoid>
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

unlockTexture_texture: texture
	<cdecl: sdword SDL_UnlockTexture SDL_Texture*>
	^self invalidCall: _failureCode!

updateTexture_texture: texture rect: rect pixels: pixels pitch: pitch
	<cdecl: sdword SDL_UpdateTexture SDL_Texture* SDL_Rect* lpvoid sdword>
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
blitSurface_src:srcrect:dst:dstrect:!public!render! !
createCursor_data:mask:w:h:hotX:hotY:!events!public! !
createRenderer_window:index:flags:!public!render! !
createRenderer_window:name:flags:!public!render! !
createRGBSurface_flags:width:height:depth:rMask:gMask:bMask:aMask:!public!render! !
createSoftwareRenderer_surface:!public!render! !
createSurface_width:height:format:!public!render! !
createSystemCursor_id:!events!public! !
createTexture_renderer:format:access:w:h:!public!render! !
createTextureFromSurface_renderer:surface:!public!render! !
createWindow_title:w:h:flags:!public!video! !
createWindowAndRenderer_width:height:windowFlags:window:renderer:!public!render! !
createWindowFrom_data:!public!video! !
createWindowWithPosition_title:x:y:w:h:flags:!public!video! !
delEventWatch_filter:userdata:!events!public! !
destroyCursor_cursor:!public! !
destroyRenderer_renderer:!public!render! !
destroySurface_surface:!public! !
destroyTexture_texture:!public!video! !
destroyWindow_window:!public!video! !
displayOrientation_displayIndex:!public!video! !
enterAppMainCallbacks_argc:argv:appInit:appIter:appEvent:appQuit:!init!public! !
flashWindow_window:operation:!public!video! !
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
getKeyFromScancode_scancode:!public!video! !
getNumDisplayModes_displayIndex:!public!video! !
getNumVideoDisplays!public!video! !
getNumVideoDrivers!public!video! !
getPixelFormatEnumForMasks_bpp:rMask:gMask:bMask:aMask:!public!video! !
getPointDisplayIndex_point:!public!video! !
getPrimaryDisplay!public! !
getProperty_props:name:defaultValue:!public!video! !
getRectDisplayIndex_rect:!public!video! !
getRenderClipRect_renderer:rect:!public!render! !
getRenderer_window:!public!render! !
getRendererInfo_renderer:info:!public!render! !
getRenderWindow_renderer:!public!render! !
getTextureBlendMode_texture:blendMode:!public!render! !
getTicks!public!video! !
getTicks64!public!video! !
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
hideWindow_window:!public!video! !
init_flags:!init!public! !
initSubSystem_flags:!init!public! !
lockTexture_texture:rect:pixels:pitch:!public!render! !
maximizeWindow_window:!public!video! !
minimizeWindow_window:!public!video! !
peepEvents_events:numevents:action:minType:maxType:!events!public! !
pollEvent_event:!events!public! !
pumpEvents!events!public! !
pushEvent_event:!events!public! !
queryTexture_texture:format:access:w:h:!public!render! !
quit!init!public! !
quitSubSystem_flags:!init!public! !
raiseWindow_window:!public!video! !
registerEvents_numevents:!events!public! !
renderClear_renderer:!public!render! !
renderClipEnabled_renderer:!public!render! !
renderFillRect_renderer:rect:!public!render! !
renderGeometry_renderer:texture:vertices:numVertices:indices:numIndices:!public!render! !
renderLine_renderer:x1:y1:x2:y2:!public! !
renderPresent_renderer:!public!render! !
renderReadPixels_renderer:rect:format:pixels:pitch:!public!render! !
renderRect_renderer:rect:!public!render! !
renderSetClipRect_renderer:rect:!public!render! !
renderTexture_renderer:texture:srcrect:dstrect:!public! !
restoreWindow_window:!public!video! !
setCursor_cursor:!events!public! !
setEventFilter_filter:userdata:!events!public! !
setHint_name:value:!public! !
setRenderClipRect_renderer:rect:!public!render! !
setRenderDrawBlendMode_renderer:blendMode:!public!render! !
setRenderDrawColor_renderer:r:g:b:a:!public!render! !
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
	^'SDL3'! !
!SDL3Library class categoriesForMethods!
fileName!public! !
!

