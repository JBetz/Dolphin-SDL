| package |
package := Package name: 'SDL2'.
package paxVersion: 1;
	basicComment: ''.


package classNames
	add: #DrawBezierCurve;
	add: #DrawBitmap;
	add: #DrawCharacter;
	add: #DrawImage;
	add: #DrawJPEG;
	add: #DrawLine;
	add: #DrawRectangle;
	add: #DrawString;
	add: #DrawText;
	add: #DrawTexture;
	add: #FillCommand;
	add: #FillPolygon;
	add: #FillQuadrilateral;
	add: #FillRectangle;
	add: #FillTriangle;
	add: #FontStyle;
	add: #PriorityQueue;
	add: #RenderCommand;
	add: #Renderer;
	add: #SDL_AudioDeviceEvent;
	add: #SDL_BlitMap;
	add: #SDL_Color;
	add: #SDL_CommonEvent;
	add: #SDL_Cursor;
	add: #SDL_DisplayEvent;
	add: #SDL_DisplayMode;
	add: #SDL_DropEvent;
	add: #SDL_Event;
	add: #SDL_EventFilter;
	add: #SDL_FPoint;
	add: #SDL_FRect;
	add: #SDL_KeyboardEvent;
	add: #SDL_Keysym;
	add: #SDL_MouseButtonEvent;
	add: #SDL_MouseMotionEvent;
	add: #SDL_MouseWheelEvent;
	add: #SDL_Object;
	add: #SDL_Palette;
	add: #SDL_PixelFormat;
	add: #SDL_Point;
	add: #SDL_QuitEvent;
	add: #SDL_Rect;
	add: #SDL_Renderer;
	add: #SDL_RendererInfo;
	add: #SDL_Surface;
	add: #SDL_SysWMEvent;
	add: #SDL_SysWMinfo;
	add: #SDL_TextEditingEvent;
	add: #SDL_TextEditingExtEvent;
	add: #SDL_TextInputEvent;
	add: #SDL_Texture;
	add: #SDL_UserEvent;
	add: #SDL_Version;
	add: #SDL_Vertex;
	add: #SDL_Window;
	add: #SDL_WindowEvent;
	add: #SDL2ImageLibrary;
	add: #SDL2Library;
	add: #SDL2TTFLibrary;
	add: #SDLInputState;
	add: #SDLSessionManager;
	add: #TTF_Font;
	add: #TTF_Object;
	yourself.

package methodNames
	add: #Color -> #asSDLColor;
	add: #Rectangle -> #asSDLFRect;
	add: #Rectangle -> #asSDLRect;
	yourself.

package globalNames
	add: #SDLConstants;
	add: #TTFConstants;
	yourself.

package binaryGlobalNames: (Set new
	yourself).

package globalAliases: (Set new
	yourself).

package setPrerequisites: #(
	'..\..\Dolphin-CEF\Chromium Embedded Framework\Chromium Embedded Framework'
	'..\..\..\Desktop\Dolphin Images\Active\Core\Object Arts\Dolphin\Base\Dolphin'
	'..\..\..\Desktop\Dolphin Images\Active\Core\Object Arts\Dolphin\MVP\Base\Dolphin Basic Geometry'
	'..\..\..\Desktop\Dolphin Images\Active\Core\Object Arts\Dolphin\MVP\Base\Dolphin MVP Base').

package!

"Class Definitions"!

Object subclass: #FontStyle
	instanceVariableNames: 'name code'
	classVariableNames: ''
	poolDictionaries: 'TTFConstants'
	classInstanceVariableNames: ''!
Object subclass: #RenderCommand
	instanceVariableNames: 'zIndex rotate clip'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Object subclass: #Renderer
	instanceVariableNames: 'renderQueue offset clip isEnabled fontCache sdlRenderer'
	classVariableNames: ''
	poolDictionaries: 'TTFConstants'
	classInstanceVariableNames: ''!
Object subclass: #SDLInputState
	instanceVariableNames: 'library visualObjectInspectors main renderEventCode updateInterval'
	classVariableNames: 'Singleton'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
Dictionary variableSubclass: #PriorityQueue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalLibrary subclass: #SDL2ImageLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalLibrary subclass: #SDL2Library
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalLibrary subclass: #SDL2TTFLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_BlitMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Color
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_a _OffsetOf_b _OffsetOf_g _OffsetOf_r'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_DisplayMode
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_driverdata _OffsetOf_format _OffsetOf_h _OffsetOf_refresh_rate _OffsetOf_w'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Event
	instanceVariableNames: 'isHandled'
	classVariableNames: '_OffsetOf_padding _OffsetOf_type _OffsetOf_union_button _OffsetOf_union_common _OffsetOf_union_display _OffsetOf_union_edit _OffsetOf_union_editExt _OffsetOf_union_key _OffsetOf_union_motion _OffsetOf_union_quit _OffsetOf_union_syswm _OffsetOf_union_text _OffsetOf_union_user _OffsetOf_union_wheel _OffsetOf_union_window'
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_EventFilter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_FPoint
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_FRect
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_h _OffsetOf_w _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Keysym
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_mod _OffsetOf_scancode _OffsetOf_sym _OffsetOf_unused'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Object
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Palette
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_PixelFormat
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_Aloss _OffsetOf_Amask _OffsetOf_Ashift _OffsetOf_BitsPerPixel _OffsetOf_Bloss _OffsetOf_Bmask _OffsetOf_Bshift _OffsetOf_BytesPerPixel _OffsetOf_format _OffsetOf_Gloss _OffsetOf_Gmask _OffsetOf_Gshift _OffsetOf_next _OffsetOf_padding _OffsetOf_palette _OffsetOf_refcount _OffsetOf_Rloss _OffsetOf_Rmask _OffsetOf_Rshift'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Point
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Rect
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_h _OffsetOf_w _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_RendererInfo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_SysWMinfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_hdc _OffsetOf_hinstance _OffsetOf_subsystem _OffsetOf_version _OffsetOf_window'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Version
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_major _OffsetOf_minor _OffsetOf_patch'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #SDL_Vertex
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_color _OffsetOf_position _OffsetOf_tex_coord'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ExternalStructure subclass: #TTF_Object
	instanceVariableNames: 'library'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_AudioDeviceEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_CommonEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_DisplayEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_DropEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_KeyboardEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_keysym _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_repeat _OffsetOf_state _OffsetOf_timestamp _OffsetOf_windowID'
	poolDictionaries: 'CefConstants SDLConstants'
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_MouseButtonEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_button _OffsetOf_clicks _OffsetOf_padding1 _OffsetOf_state _OffsetOf_timestamp _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_MouseMotionEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_state _OffsetOf_timestamp _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_xrel _OffsetOf_y _OffsetOf_yrel'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_MouseWheelEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_direction _OffsetOf_mouseX _OffsetOf_mouseY _OffsetOf_preciseX _OffsetOf_preciseY _OffsetOf_timestamp _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_QuitEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_timestamp'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_SysWMEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_TextEditingEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_TextEditingExtEvent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_TextInputEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_text _OffsetOf_timestamp _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_UserEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_code _OffsetOf_data1 _OffsetOf_data2 _OffsetOf_timestamp _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Event subclass: #SDL_WindowEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_data1 _OffsetOf_data2 _OffsetOf_event _OffsetOf_padding1 _OffsetOf_padding2 _OffsetOf_padding3 _OffsetOf_timestamp _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Object subclass: #SDL_Cursor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Object subclass: #SDL_Renderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Object subclass: #SDL_Surface
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clip_rect _OffsetOf_flags _OffsetOf_format _OffsetOf_h _OffsetOf_list_blitmap _OffsetOf_locked _OffsetOf_map _OffsetOf_pitch _OffsetOf_pixels _OffsetOf_refcount _OffsetOf_userdata _OffsetOf_w'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Object subclass: #SDL_Texture
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Object subclass: #SDL_Window
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TTF_Object subclass: #TTF_Font
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #DrawBezierCurve
	instanceVariableNames: 'points color curve width'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #DrawBitmap
	instanceVariableNames: 'bitmap rectangle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #DrawImage
	instanceVariableNames: 'rectangle filePath'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #DrawLine
	instanceVariableNames: 'start end color width'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #DrawRectangle
	instanceVariableNames: 'rectangle color width'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #DrawText
	instanceVariableNames: 'color font rectangle fontSize fontStyle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #DrawTexture
	instanceVariableNames: 'texture rectangle stretch'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand subclass: #FillCommand
	instanceVariableNames: 'color'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DrawImage subclass: #DrawJPEG
	instanceVariableNames: 'data'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DrawText subclass: #DrawCharacter
	instanceVariableNames: 'character'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DrawText subclass: #DrawString
	instanceVariableNames: 'string format'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FillCommand subclass: #FillPolygon
	instanceVariableNames: 'points'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FillCommand subclass: #FillQuadrilateral
	instanceVariableNames: 'vertexOne vertexTwo vertexThree vertexFour'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FillCommand subclass: #FillRectangle
	instanceVariableNames: 'rectangle'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FillCommand subclass: #FillTriangle
	instanceVariableNames: 'vertexOne vertexTwo vertexThree'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SessionManager subclass: #SDLSessionManager
	instanceVariableNames: 'savedWindows'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

"Global Aliases"!


"Loose Methods"!

!Color methodsFor!

asSDLColor
	^SDL_Color new
		r: self red;
		g: self green;
		b: self blue;
		a: self alpha! !
!Color categoriesForMethods!
asSDLColor!public! !
!

!Rectangle methodsFor!

asSDLFRect
	^SDL_FRect new
		x: self left;
		y: self top;
		w: self width;
		h: self height!

asSDLRect
	^SDL_Rect new
		x: self left truncated;
		y: self top truncated;
		w: self width truncated;
		h: self height truncated! !
!Rectangle categoriesForMethods!
asSDLFRect!public! !
asSDLRect!public! !
!

"End of package definition"!

"Source Globals"!

Smalltalk at: #SDLConstants put: (PoolConstantsDictionary named: #SDLConstants)!
SDLConstants at: 'AUDIO_F32' put: 16r8120!
SDLConstants at: 'AUDIO_F32LSB' put: 16r8120!
SDLConstants at: 'AUDIO_F32MSB' put: 16r9120!
SDLConstants at: 'AUDIO_S16' put: 16r8010!
SDLConstants at: 'AUDIO_S16LSB' put: 16r8010!
SDLConstants at: 'AUDIO_S16MSB' put: 16r9010!
SDLConstants at: 'AUDIO_S32' put: 16r8020!
SDLConstants at: 'AUDIO_S32LSB' put: 16r8020!
SDLConstants at: 'AUDIO_S32MSB' put: 16r9020!
SDLConstants at: 'AUDIO_S8' put: 16r8008!
SDLConstants at: 'AUDIO_U16' put: 16r10!
SDLConstants at: 'AUDIO_U16LSB' put: 16r10!
SDLConstants at: 'AUDIO_U16MSB' put: 16r1010!
SDLConstants at: 'AUDIO_U8' put: 16r8!
SDLConstants at: 'DL_MOUSEBUTTONUP' put: 16r402!
SDLConstants at: 'KMOD_ALT' put: 16r300!
SDLConstants at: 'KMOD_CAPS' put: 16r2000!
SDLConstants at: 'KMOD_CTRL' put: 16rC0!
SDLConstants at: 'KMOD_GUI' put: 16rC00!
SDLConstants at: 'KMOD_LALT' put: 16r100!
SDLConstants at: 'KMOD_LCTRL' put: 16r40!
SDLConstants at: 'KMOD_LGUI' put: 16r400!
SDLConstants at: 'KMOD_LSHIFT' put: 16r1!
SDLConstants at: 'KMOD_MODE' put: 16r4000!
SDLConstants at: 'KMOD_NONE' put: 16r0!
SDLConstants at: 'KMOD_NUM' put: 16r1000!
SDLConstants at: 'KMOD_RALT' put: 16r200!
SDLConstants at: 'KMOD_RCTRL' put: 16r80!
SDLConstants at: 'KMOD_RESERVED' put: 16r8000!
SDLConstants at: 'KMOD_RGUI' put: 16r800!
SDLConstants at: 'KMOD_RSHIFT' put: 16r2!
SDLConstants at: 'KMOD_SCROLL' put: 16r8000!
SDLConstants at: 'KMOD_SHIFT' put: 16r3!
SDLConstants at: 'SDL_ADDEVENT' put: 16r0!
SDLConstants at: 'SDL_APP_DIDENTERBACKGROUND' put: 16r104!
SDLConstants at: 'SDL_APP_DIDENTERFOREGROUND' put: 16r106!
SDLConstants at: 'SDL_APP_LOWMEMORY' put: 16r102!
SDLConstants at: 'SDL_APP_TERMINATING' put: 16r101!
SDLConstants at: 'SDL_APP_WILLENTERBACKGROUND' put: 16r103!
SDLConstants at: 'SDL_APP_WILLENTERFOREGROUND' put: 16r105!
SDLConstants at: 'SDL_ARRAYORDER_ABGR' put: 16r6!
SDLConstants at: 'SDL_ARRAYORDER_ARGB' put: 16r3!
SDLConstants at: 'SDL_ARRAYORDER_BGR' put: 16r4!
SDLConstants at: 'SDL_ARRAYORDER_BGRA' put: 16r5!
SDLConstants at: 'SDL_ARRAYORDER_NONE' put: 16r0!
SDLConstants at: 'SDL_ARRAYORDER_RGB' put: 16r1!
SDLConstants at: 'SDL_ARRAYORDER_RGBA' put: 16r2!
SDLConstants at: 'SDL_AUDIO_ALLOW_ANY_CHANGE' put: 16rF!
SDLConstants at: 'SDL_AUDIO_ALLOW_CHANNELS_CHANGE' put: 16r4!
SDLConstants at: 'SDL_AUDIO_ALLOW_FORMAT_CHANGE' put: 16r2!
SDLConstants at: 'SDL_AUDIO_ALLOW_FREQUENCY_CHANGE' put: 16r1!
SDLConstants at: 'SDL_AUDIO_ALLOW_SAMPLES_CHANGE' put: 16r8!
SDLConstants at: 'SDL_AUDIO_MASK_BITSIZE' put: 16rFF!
SDLConstants at: 'SDL_BITMAPORDER_1234' put: 16r2!
SDLConstants at: 'SDL_BITMAPORDER_4321' put: 16r1!
SDLConstants at: 'SDL_BITMAPORDER_NONE' put: 16r0!
SDLConstants at: 'SDL_BLENDFACTOR_DST_ALPHA' put: 16r9!
SDLConstants at: 'SDL_BLENDFACTOR_DST_COLOR' put: 16r7!
SDLConstants at: 'SDL_BLENDFACTOR_ONE' put: 16r2!
SDLConstants at: 'SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA' put: 16rA!
SDLConstants at: 'SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR' put: 16r8!
SDLConstants at: 'SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA' put: 16r6!
SDLConstants at: 'SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR' put: 16r4!
SDLConstants at: 'SDL_BLENDFACTOR_SRC_ALPHA' put: 16r5!
SDLConstants at: 'SDL_BLENDFACTOR_SRC_COLOR' put: 16r3!
SDLConstants at: 'SDL_BLENDFACTOR_ZERO' put: 16r1!
SDLConstants at: 'SDL_BLENDMODE_ADD' put: 16r2!
SDLConstants at: 'SDL_BLENDMODE_BLEND' put: 16r1!
SDLConstants at: 'SDL_BLENDMODE_INVALID' put: 16r7FFFFFFF!
SDLConstants at: 'SDL_BLENDMODE_MOD' put: 16r4!
SDLConstants at: 'SDL_BLENDMODE_NONE' put: 16r0!
SDLConstants at: 'SDL_BLENDOPERATION_ADD' put: 16r1!
SDLConstants at: 'SDL_BLENDOPERATION_MAXIMUM' put: 16r5!
SDLConstants at: 'SDL_BLENDOPERATION_MINIMUM' put: 16r4!
SDLConstants at: 'SDL_BLENDOPERATION_REV_SUBTRACT' put: 16r3!
SDLConstants at: 'SDL_BLENDOPERATION_SUBTRACT' put: 16r2!
SDLConstants at: 'SDL_BUTTON_LEFT' put: 16r1!
SDLConstants at: 'SDL_BUTTON_LMASK' put: 16r1!
SDLConstants at: 'SDL_BUTTON_MIDDLE' put: 16r2!
SDLConstants at: 'SDL_BUTTON_MMASK' put: 16r2!
SDLConstants at: 'SDL_BUTTON_RIGHT' put: 16r3!
SDLConstants at: 'SDL_BUTTON_RMASK' put: 16r4!
SDLConstants at: 'SDL_BUTTON_X1' put: 16r4!
SDLConstants at: 'SDL_BUTTON_X1MASK' put: 16r8!
SDLConstants at: 'SDL_BUTTON_X2' put: 16r5!
SDLConstants at: 'SDL_BUTTON_X2MASK' put: 16r10!
SDLConstants at: 'SDL_CLIPBOARDUPDATE' put: 16r900!
SDLConstants at: 'SDL_CONTROLLER_AXIS_INVALID' put: -16r1!
SDLConstants at: 'SDL_CONTROLLER_AXIS_LEFTX' put: 16r0!
SDLConstants at: 'SDL_CONTROLLER_AXIS_LEFTY' put: 16r1!
SDLConstants at: 'SDL_CONTROLLER_AXIS_MAX' put: 16r6!
SDLConstants at: 'SDL_CONTROLLER_AXIS_RIGHTX' put: 16r2!
SDLConstants at: 'SDL_CONTROLLER_AXIS_RIGHTY' put: 16r3!
SDLConstants at: 'SDL_CONTROLLER_AXIS_TRIGGERLEFT' put: 16r4!
SDLConstants at: 'SDL_CONTROLLER_AXIS_TRIGGERRIGHT' put: 16r5!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_A' put: 16r0!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_B' put: 16r1!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_BACK' put: 16r4!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_DPAD_DOWN' put: 16rC!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_DPAD_LEFT' put: 16rD!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_DPAD_RIGHT' put: 16rE!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_DPAD_UP' put: 16rB!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_GUIDE' put: 16r5!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_INVALID' put: -16r1!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_LEFTSHOULDER' put: 16r9!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_LEFTSTICK' put: 16r7!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_MAX' put: 16rF!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_RIGHTSHOULDER' put: 16rA!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_RIGHTSTICK' put: 16r8!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_START' put: 16r6!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_X' put: 16r2!
SDLConstants at: 'SDL_CONTROLLER_BUTTON_Y' put: 16r3!
SDLConstants at: 'SDL_CONTROLLERAXISMOTION' put: 16r650!
SDLConstants at: 'SDL_CONTROLLERBUTTONDOWN' put: 16r651!
SDLConstants at: 'SDL_CONTROLLERBUTTONUP' put: 16r652!
SDLConstants at: 'SDL_CONTROLLERDEVICEADDED' put: 16r653!
SDLConstants at: 'SDL_CONTROLLERDEVICEREMAPPED' put: 16r655!
SDLConstants at: 'SDL_CONTROLLERDEVICEREMOVED' put: 16r654!
SDLConstants at: 'SDL_DISABLE' put: 16r0!
SDLConstants at: 'SDL_DOLLARGESTURE' put: 16r800!
SDLConstants at: 'SDL_DOLLARRECORD' put: 16r801!
SDLConstants at: 'SDL_DROPFILE' put: 16r1000!
SDLConstants at: 'SDL_ENABLE' put: 16r1!
SDLConstants at: 'SDL_EVENT_POLL_SENTINEL' put: 16r7F00!
SDLConstants at: 'SDL_FINGERDOWN' put: 16r700!
SDLConstants at: 'SDL_FINGERMOTION' put: 16r702!
SDLConstants at: 'SDL_FINGERUP' put: 16r701!
SDLConstants at: 'SDL_FIRSTEVENT' put: 16r0!
SDLConstants at: 'SDL_GETEVENT' put: 16r2!
SDLConstants at: 'SDL_GL_ACCELERATED_VISUAL' put: 16rF!
SDLConstants at: 'SDL_GL_ACCUM_ALPHA_SIZE' put: 16rB!
SDLConstants at: 'SDL_GL_ACCUM_BLUE_SIZE' put: 16rA!
SDLConstants at: 'SDL_GL_ACCUM_GREEN_SIZE' put: 16r9!
SDLConstants at: 'SDL_GL_ACCUM_RED_SIZE' put: 16r8!
SDLConstants at: 'SDL_GL_ALPHA_SIZE' put: 16r3!
SDLConstants at: 'SDL_GL_BLUE_SIZE' put: 16r2!
SDLConstants at: 'SDL_GL_BUFFER_SIZE' put: 16r4!
SDLConstants at: 'SDL_GL_CONTEXT_EGL' put: 16r13!
SDLConstants at: 'SDL_GL_CONTEXT_FLAGS' put: 16r14!
SDLConstants at: 'SDL_GL_CONTEXT_MAJOR_VERSION' put: 16r11!
SDLConstants at: 'SDL_GL_CONTEXT_MINOR_VERSION' put: 16r12!
SDLConstants at: 'SDL_GL_CONTEXT_PROFILE_COMPATIBILITY' put: 16r2!
SDLConstants at: 'SDL_GL_CONTEXT_PROFILE_CORE' put: 16r1!
SDLConstants at: 'SDL_GL_CONTEXT_PROFILE_ES' put: 16r4!
SDLConstants at: 'SDL_GL_CONTEXT_PROFILE_MASK' put: 16r15!
SDLConstants at: 'SDL_GL_DEPTH_SIZE' put: 16r6!
SDLConstants at: 'SDL_GL_DOUBLEBUFFER' put: 16r5!
SDLConstants at: 'SDL_GL_FRAMEBUFFER_SRGB_CAPABLE' put: 16r17!
SDLConstants at: 'SDL_GL_GREEN_SIZE' put: 16r1!
SDLConstants at: 'SDL_GL_MULTISAMPLEBUFFERS' put: 16rD!
SDLConstants at: 'SDL_GL_MULTISAMPLESAMPLES' put: 16rE!
SDLConstants at: 'SDL_GL_RED_SIZE' put: 16r0!
SDLConstants at: 'SDL_GL_RETAINED_BACKING' put: 16r10!
SDLConstants at: 'SDL_GL_SHARE_WITH_CURRENT_CONTEXT' put: 16r16!
SDLConstants at: 'SDL_GL_STENCIL_SIZE' put: 16r7!
SDLConstants at: 'SDL_GL_STEREO' put: 16rC!
SDLConstants at: 'SDL_GL_SWAP_CONTROL' put: nil!
SDLConstants at: 'SDL_INIT_AUDIO' put: 16r10!
SDLConstants at: 'SDL_INIT_EVENTS' put: 16r4000!
SDLConstants at: 'SDL_INIT_EVERYTHING' put: 16r7231!
SDLConstants at: 'SDL_INIT_GAMECONTROLLER' put: 16r2000!
SDLConstants at: 'SDL_INIT_HAPTIC' put: 16r1000!
SDLConstants at: 'SDL_INIT_JOYSTICK' put: 16r200!
SDLConstants at: 'SDL_INIT_NOPARACHUTE' put: 16r100000!
SDLConstants at: 'SDL_INIT_TIMER' put: 16r1!
SDLConstants at: 'SDL_INIT_VIDEO' put: 16r20!
SDLConstants at: 'SDL_JOYAXISMOTION' put: 16r600!
SDLConstants at: 'SDL_JOYBALLMOTION' put: 16r601!
SDLConstants at: 'SDL_JOYBUTTONDOWN' put: 16r603!
SDLConstants at: 'SDL_JOYBUTTONUP' put: 16r604!
SDLConstants at: 'SDL_JOYDEVICEADDED' put: 16r605!
SDLConstants at: 'SDL_JOYDEVICEREMOVED' put: 16r606!
SDLConstants at: 'SDL_JOYHATMOTION' put: 16r602!
SDLConstants at: 'SDL_KEYDOWN' put: 16r300!
SDLConstants at: 'SDL_KEYMAPCHANGED' put: 16r304!
SDLConstants at: 'SDL_KEYUP' put: 16r301!
SDLConstants at: 'SDL_LASTEVENT' put: 16rFFFF!
SDLConstants at: 'SDL_MOUSEBUTTONDOWN' put: 16r401!
SDLConstants at: 'SDL_MOUSEBUTTONUP' put: 16r402!
SDLConstants at: 'SDL_MOUSEMOTION' put: 16r400!
SDLConstants at: 'SDL_MOUSEWHEEL' put: 16r403!
SDLConstants at: 'SDL_MULTIGESTURE' put: 16r802!
SDLConstants at: 'SDL_NUM_SCANCODES' put: 16r200!
SDLConstants at: 'SDL_PACKEDLAYOUT_1010102' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_1555' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_2101010' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_332' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_4444' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_5551' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_565' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_8888' put: 16r6!
SDLConstants at: 'SDL_PACKEDLAYOUT_NONE' put: 16r6!
SDLConstants at: 'SDL_PACKEDORDER_ABGR' put: 16r7!
SDLConstants at: 'SDL_PACKEDORDER_ARGB' put: 16r3!
SDLConstants at: 'SDL_PACKEDORDER_BGRA' put: 16r8!
SDLConstants at: 'SDL_PACKEDORDER_BGRX' put: 16r6!
SDLConstants at: 'SDL_PACKEDORDER_NONE' put: 16r0!
SDLConstants at: 'SDL_PACKEDORDER_RGBA' put: 16r4!
SDLConstants at: 'SDL_PACKEDORDER_RGBX' put: 16r2!
SDLConstants at: 'SDL_PACKEDORDER_XBGR' put: 16r5!
SDLConstants at: 'SDL_PACKEDORDER_XRGB' put: 16r1!
SDLConstants at: 'SDL_PEEKEVENT' put: 16r1!
SDLConstants at: 'SDL_PIXELFORMAT_ARGB8888' put: 16r16362004!
SDLConstants at: 'SDL_PIXELFORMAT_RGBA8888' put: 16r16462004!
SDLConstants at: 'SDL_PIXELFORMAT_RGBX8888' put: 16r16261804!
SDLConstants at: 'SDL_PIXELFORMAT_XRGB8888' put: 16r16161804!
SDLConstants at: 'SDL_PIXELTYPE_ARRAYF16' put: 16rA!
SDLConstants at: 'SDL_PIXELTYPE_ARRAYF32' put: 16rB!
SDLConstants at: 'SDL_PIXELTYPE_ARRAYU16' put: 16r8!
SDLConstants at: 'SDL_PIXELTYPE_ARRAYU32' put: 16r9!
SDLConstants at: 'SDL_PIXELTYPE_ARRAYU8' put: 16r7!
SDLConstants at: 'SDL_PIXELTYPE_INDEX1' put: 16r1!
SDLConstants at: 'SDL_PIXELTYPE_INDEX4' put: 16r2!
SDLConstants at: 'SDL_PIXELTYPE_INDEX8' put: 16r3!
SDLConstants at: 'SDL_PIXELTYPE_PACKED16' put: 16r5!
SDLConstants at: 'SDL_PIXELTYPE_PACKED32' put: 16r6!
SDLConstants at: 'SDL_PIXELTYPE_PACKED8' put: 16r4!
SDLConstants at: 'SDL_PIXELTYPE_UNKNOWN' put: 16r0!
SDLConstants at: 'SDL_QUIT' put: 16r100!
SDLConstants at: 'SDL_RENDER_DEVICE_RESET' put: 16r2001!
SDLConstants at: 'SDL_RENDER_TARGETS_RESET' put: 16r2000!
SDLConstants at: 'SDL_RENDERER_ACCELERATED' put: 16r2!
SDLConstants at: 'SDL_RENDERER_PRESENTVSYNC' put: 16r4!
SDLConstants at: 'SDL_RENDERER_SOFTWARE' put: 16r1!
SDLConstants at: 'SDL_RENDERER_TARGETTEXTURE' put: 16r8!
SDLConstants at: 'SDL_SCANCODE_0' put: 16r27!
SDLConstants at: 'SDL_SCANCODE_1' put: 16r1E!
SDLConstants at: 'SDL_SCANCODE_2' put: 16r1F!
SDLConstants at: 'SDL_SCANCODE_3' put: 16r20!
SDLConstants at: 'SDL_SCANCODE_4' put: 16r21!
SDLConstants at: 'SDL_SCANCODE_5' put: 16r22!
SDLConstants at: 'SDL_SCANCODE_6' put: 16r23!
SDLConstants at: 'SDL_SCANCODE_7' put: 16r24!
SDLConstants at: 'SDL_SCANCODE_8' put: 16r25!
SDLConstants at: 'SDL_SCANCODE_9' put: 16r26!
SDLConstants at: 'SDL_SCANCODE_A' put: 16r4!
SDLConstants at: 'SDL_SCANCODE_AC_BACK' put: 16r10E!
SDLConstants at: 'SDL_SCANCODE_AC_BOOKMARKS' put: 16r112!
SDLConstants at: 'SDL_SCANCODE_AC_FORWARD' put: 16r10F!
SDLConstants at: 'SDL_SCANCODE_AC_HOME' put: 16r10D!
SDLConstants at: 'SDL_SCANCODE_AC_REFRESH' put: 16r111!
SDLConstants at: 'SDL_SCANCODE_AC_SEARCH' put: 16r10C!
SDLConstants at: 'SDL_SCANCODE_AC_STOP' put: 16r110!
SDLConstants at: 'SDL_SCANCODE_AGAIN' put: 16r79!
SDLConstants at: 'SDL_SCANCODE_ALTERASE' put: 16r99!
SDLConstants at: 'SDL_SCANCODE_APOSTROPHE' put: 16r34!
SDLConstants at: 'SDL_SCANCODE_APP1' put: 16r11B!
SDLConstants at: 'SDL_SCANCODE_APP2' put: 16r11C!
SDLConstants at: 'SDL_SCANCODE_APPLICATION' put: 16r65!
SDLConstants at: 'SDL_SCANCODE_AUDIOMUTE' put: 16r106!
SDLConstants at: 'SDL_SCANCODE_AUDIONEXT' put: 16r102!
SDLConstants at: 'SDL_SCANCODE_AUDIOPLAY' put: 16r105!
SDLConstants at: 'SDL_SCANCODE_AUDIOPREV' put: 16r103!
SDLConstants at: 'SDL_SCANCODE_AUDIOSTOP' put: 16r104!
SDLConstants at: 'SDL_SCANCODE_B' put: 16r5!
SDLConstants at: 'SDL_SCANCODE_BACKSLASH' put: 16r31!
SDLConstants at: 'SDL_SCANCODE_BACKSPACE' put: 16r2A!
SDLConstants at: 'SDL_SCANCODE_BRIGHTNESSDOWN' put: 16r113!
SDLConstants at: 'SDL_SCANCODE_BRIGHTNESSUP' put: 16r114!
SDLConstants at: 'SDL_SCANCODE_C' put: 16r6!
SDLConstants at: 'SDL_SCANCODE_CALCULATOR' put: 16r10A!
SDLConstants at: 'SDL_SCANCODE_CANCEL' put: 16r9B!
SDLConstants at: 'SDL_SCANCODE_CAPSLOCK' put: 16r39!
SDLConstants at: 'SDL_SCANCODE_CLEAR' put: 16r9C!
SDLConstants at: 'SDL_SCANCODE_CLEARAGAIN' put: 16rA2!
SDLConstants at: 'SDL_SCANCODE_COMMA' put: 16r36!
SDLConstants at: 'SDL_SCANCODE_COMPUTER' put: 16r10B!
SDLConstants at: 'SDL_SCANCODE_COPY' put: 16r7C!
SDLConstants at: 'SDL_SCANCODE_CRSEL' put: 16rA3!
SDLConstants at: 'SDL_SCANCODE_CURRENCYSUBUNIT' put: 16rB5!
SDLConstants at: 'SDL_SCANCODE_CURRENCYUNIT' put: 16rB4!
SDLConstants at: 'SDL_SCANCODE_CUT' put: 16r7B!
SDLConstants at: 'SDL_SCANCODE_D' put: 16r7!
SDLConstants at: 'SDL_SCANCODE_DECIMALSEPARATOR' put: 16rB3!
SDLConstants at: 'SDL_SCANCODE_DELETE' put: 16r4C!
SDLConstants at: 'SDL_SCANCODE_DISPLAYSWITCH' put: 16r115!
SDLConstants at: 'SDL_SCANCODE_DOWN' put: 16r51!
SDLConstants at: 'SDL_SCANCODE_E' put: 16r8!
SDLConstants at: 'SDL_SCANCODE_EJECT' put: 16r119!
SDLConstants at: 'SDL_SCANCODE_END' put: 16r4D!
SDLConstants at: 'SDL_SCANCODE_EQUALS' put: 16r2E!
SDLConstants at: 'SDL_SCANCODE_ESCAPE' put: 16r29!
SDLConstants at: 'SDL_SCANCODE_EXECUTE' put: 16r74!
SDLConstants at: 'SDL_SCANCODE_EXSEL' put: 16rA4!
SDLConstants at: 'SDL_SCANCODE_F' put: 16r9!
SDLConstants at: 'SDL_SCANCODE_F1' put: 16r3A!
SDLConstants at: 'SDL_SCANCODE_F10' put: 16r43!
SDLConstants at: 'SDL_SCANCODE_F11' put: 16r44!
SDLConstants at: 'SDL_SCANCODE_F12' put: 16r45!
SDLConstants at: 'SDL_SCANCODE_F13' put: 16r68!
SDLConstants at: 'SDL_SCANCODE_F14' put: 16r69!
SDLConstants at: 'SDL_SCANCODE_F15' put: 16r6A!
SDLConstants at: 'SDL_SCANCODE_F16' put: 16r6B!
SDLConstants at: 'SDL_SCANCODE_F17' put: 16r6C!
SDLConstants at: 'SDL_SCANCODE_F18' put: 16r6D!
SDLConstants at: 'SDL_SCANCODE_F19' put: 16r6E!
SDLConstants at: 'SDL_SCANCODE_F2' put: 16r3B!
SDLConstants at: 'SDL_SCANCODE_F20' put: 16r6F!
SDLConstants at: 'SDL_SCANCODE_F21' put: 16r70!
SDLConstants at: 'SDL_SCANCODE_F22' put: 16r71!
SDLConstants at: 'SDL_SCANCODE_F23' put: 16r72!
SDLConstants at: 'SDL_SCANCODE_F24' put: 16r73!
SDLConstants at: 'SDL_SCANCODE_F3' put: 16r3C!
SDLConstants at: 'SDL_SCANCODE_F4' put: 16r3D!
SDLConstants at: 'SDL_SCANCODE_F5' put: 16r3E!
SDLConstants at: 'SDL_SCANCODE_F6' put: 16r3F!
SDLConstants at: 'SDL_SCANCODE_F7' put: 16r40!
SDLConstants at: 'SDL_SCANCODE_F8' put: 16r41!
SDLConstants at: 'SDL_SCANCODE_F9' put: 16r42!
SDLConstants at: 'SDL_SCANCODE_FIND' put: 16r7E!
SDLConstants at: 'SDL_SCANCODE_G' put: 16rA!
SDLConstants at: 'SDL_SCANCODE_GRAVE' put: 16r35!
SDLConstants at: 'SDL_SCANCODE_H' put: 16rB!
SDLConstants at: 'SDL_SCANCODE_HELP' put: 16r75!
SDLConstants at: 'SDL_SCANCODE_HOME' put: 16r4A!
SDLConstants at: 'SDL_SCANCODE_I' put: 16rC!
SDLConstants at: 'SDL_SCANCODE_INSERT' put: 16r49!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL1' put: 16r87!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL2' put: 16r88!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL3' put: 16r89!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL4' put: 16r8A!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL5' put: 16r8B!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL6' put: 16r8C!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL7' put: 16r8D!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL8' put: 16r8E!
SDLConstants at: 'SDL_SCANCODE_INTERNATIONAL9' put: 16r8F!
SDLConstants at: 'SDL_SCANCODE_J' put: 16rD!
SDLConstants at: 'SDL_SCANCODE_K' put: 16rE!
SDLConstants at: 'SDL_SCANCODE_KBDILLUMDOWN' put: 16r117!
SDLConstants at: 'SDL_SCANCODE_KBDILLUMTOGGLE' put: 16r116!
SDLConstants at: 'SDL_SCANCODE_KBDILLUMUP' put: 16r118!
SDLConstants at: 'SDL_SCANCODE_KP_0' put: 16r62!
SDLConstants at: 'SDL_SCANCODE_KP_00' put: 16rB0!
SDLConstants at: 'SDL_SCANCODE_KP_000' put: 16rB1!
SDLConstants at: 'SDL_SCANCODE_KP_1' put: 16r59!
SDLConstants at: 'SDL_SCANCODE_KP_2' put: 16r5A!
SDLConstants at: 'SDL_SCANCODE_KP_3' put: 16r5B!
SDLConstants at: 'SDL_SCANCODE_KP_4' put: 16r5C!
SDLConstants at: 'SDL_SCANCODE_KP_5' put: 16r5D!
SDLConstants at: 'SDL_SCANCODE_KP_6' put: 16r5E!
SDLConstants at: 'SDL_SCANCODE_KP_7' put: 16r5F!
SDLConstants at: 'SDL_SCANCODE_KP_8' put: 16r60!
SDLConstants at: 'SDL_SCANCODE_KP_9' put: 16r61!
SDLConstants at: 'SDL_SCANCODE_KP_A' put: 16rBC!
SDLConstants at: 'SDL_SCANCODE_KP_AMPERSAND' put: 16rC7!
SDLConstants at: 'SDL_SCANCODE_KP_AT' put: 16rCE!
SDLConstants at: 'SDL_SCANCODE_KP_B' put: 16rBD!
SDLConstants at: 'SDL_SCANCODE_KP_BACKSPACE' put: 16rBB!
SDLConstants at: 'SDL_SCANCODE_KP_BINARY' put: 16rDA!
SDLConstants at: 'SDL_SCANCODE_KP_C' put: 16rBE!
SDLConstants at: 'SDL_SCANCODE_KP_CLEAR' put: 16rD8!
SDLConstants at: 'SDL_SCANCODE_KP_CLEARENTRY' put: 16rD9!
SDLConstants at: 'SDL_SCANCODE_KP_COLON' put: 16rCB!
SDLConstants at: 'SDL_SCANCODE_KP_COMMA' put: 16r85!
SDLConstants at: 'SDL_SCANCODE_KP_D' put: 16rBF!
SDLConstants at: 'SDL_SCANCODE_KP_DBLAMPERSAND' put: 16rC8!
SDLConstants at: 'SDL_SCANCODE_KP_DBLVERTICALBAR' put: 16rCA!
SDLConstants at: 'SDL_SCANCODE_KP_DECIMAL' put: 16rDC!
SDLConstants at: 'SDL_SCANCODE_KP_DIVIDE' put: 16r54!
SDLConstants at: 'SDL_SCANCODE_KP_E' put: 16rC0!
SDLConstants at: 'SDL_SCANCODE_KP_ENTER' put: 16r58!
SDLConstants at: 'SDL_SCANCODE_KP_EQUALS' put: 16r67!
SDLConstants at: 'SDL_SCANCODE_KP_EQUALSAS400' put: 16r86!
SDLConstants at: 'SDL_SCANCODE_KP_EXCLAM' put: 16rCF!
SDLConstants at: 'SDL_SCANCODE_KP_F' put: 16rC1!
SDLConstants at: 'SDL_SCANCODE_KP_GREATER' put: 16rC6!
SDLConstants at: 'SDL_SCANCODE_KP_HASH' put: 16rCC!
SDLConstants at: 'SDL_SCANCODE_KP_HEXADECIMAL' put: 16rDD!
SDLConstants at: 'SDL_SCANCODE_KP_LEFTBRACE' put: 16rB8!
SDLConstants at: 'SDL_SCANCODE_KP_LEFTPAREN' put: 16rB6!
SDLConstants at: 'SDL_SCANCODE_KP_LESS' put: 16rC5!
SDLConstants at: 'SDL_SCANCODE_KP_MEMADD' put: 16rD3!
SDLConstants at: 'SDL_SCANCODE_KP_MEMCLEAR' put: 16rD2!
SDLConstants at: 'SDL_SCANCODE_KP_MEMDIVIDE' put: 16rD6!
SDLConstants at: 'SDL_SCANCODE_KP_MEMMULTIPLY' put: 16rD5!
SDLConstants at: 'SDL_SCANCODE_KP_MEMRECALL' put: 16rD1!
SDLConstants at: 'SDL_SCANCODE_KP_MEMSTORE' put: 16rD0!
SDLConstants at: 'SDL_SCANCODE_KP_MEMSUBTRACT' put: 16rD4!
SDLConstants at: 'SDL_SCANCODE_KP_MINUS' put: 16r56!
SDLConstants at: 'SDL_SCANCODE_KP_MULTIPLY' put: 16r55!
SDLConstants at: 'SDL_SCANCODE_KP_OCTAL' put: 16rDB!
SDLConstants at: 'SDL_SCANCODE_KP_PERCENT' put: 16rC4!
SDLConstants at: 'SDL_SCANCODE_KP_PERIOD' put: 16r63!
SDLConstants at: 'SDL_SCANCODE_KP_PLUS' put: 16r57!
SDLConstants at: 'SDL_SCANCODE_KP_PLUSMINUS' put: 16rD7!
SDLConstants at: 'SDL_SCANCODE_KP_POWER' put: 16rC3!
SDLConstants at: 'SDL_SCANCODE_KP_RIGHTBRACE' put: 16rB9!
SDLConstants at: 'SDL_SCANCODE_KP_RIGHTPAREN' put: 16rB7!
SDLConstants at: 'SDL_SCANCODE_KP_SPACE' put: 16rCD!
SDLConstants at: 'SDL_SCANCODE_KP_TAB' put: 16rBA!
SDLConstants at: 'SDL_SCANCODE_KP_VERTICALBAR' put: 16rC9!
SDLConstants at: 'SDL_SCANCODE_KP_XOR' put: 16rC2!
SDLConstants at: 'SDL_SCANCODE_L' put: 16rF!
SDLConstants at: 'SDL_SCANCODE_LALT' put: 16rE2!
SDLConstants at: 'SDL_SCANCODE_LANG1' put: 16r90!
SDLConstants at: 'SDL_SCANCODE_LANG2' put: 16r91!
SDLConstants at: 'SDL_SCANCODE_LANG3' put: 16r92!
SDLConstants at: 'SDL_SCANCODE_LANG4' put: 16r93!
SDLConstants at: 'SDL_SCANCODE_LANG5' put: 16r94!
SDLConstants at: 'SDL_SCANCODE_LANG6' put: 16r95!
SDLConstants at: 'SDL_SCANCODE_LANG7' put: 16r96!
SDLConstants at: 'SDL_SCANCODE_LANG8' put: 16r97!
SDLConstants at: 'SDL_SCANCODE_LANG9' put: 16r98!
SDLConstants at: 'SDL_SCANCODE_LCTRL' put: 16rE0!
SDLConstants at: 'SDL_SCANCODE_LEFT' put: 16r50!
SDLConstants at: 'SDL_SCANCODE_LEFTBRACKET' put: 16r2F!
SDLConstants at: 'SDL_SCANCODE_LGUI' put: 16rE3!
SDLConstants at: 'SDL_SCANCODE_LSHIFT' put: 16rE1!
SDLConstants at: 'SDL_SCANCODE_M' put: 16r10!
SDLConstants at: 'SDL_SCANCODE_MAIL' put: 16r109!
SDLConstants at: 'SDL_SCANCODE_MEDIASELECT' put: 16r107!
SDLConstants at: 'SDL_SCANCODE_MENU' put: 16r76!
SDLConstants at: 'SDL_SCANCODE_MINUS' put: 16r2D!
SDLConstants at: 'SDL_SCANCODE_MODE' put: 16r101!
SDLConstants at: 'SDL_SCANCODE_MUTE' put: 16r7F!
SDLConstants at: 'SDL_SCANCODE_N' put: 16r11!
SDLConstants at: 'SDL_SCANCODE_NONUSBACKSLASH' put: 16r64!
SDLConstants at: 'SDL_SCANCODE_NONUSHASH' put: 16r32!
SDLConstants at: 'SDL_SCANCODE_NUMLOCKCLEAR' put: 16r53!
SDLConstants at: 'SDL_SCANCODE_O' put: 16r12!
SDLConstants at: 'SDL_SCANCODE_OPER' put: 16rA1!
SDLConstants at: 'SDL_SCANCODE_OUT' put: 16rA0!
SDLConstants at: 'SDL_SCANCODE_P' put: 16r13!
SDLConstants at: 'SDL_SCANCODE_PAGEDOWN' put: 16r4E!
SDLConstants at: 'SDL_SCANCODE_PAGEUP' put: 16r4B!
SDLConstants at: 'SDL_SCANCODE_PASTE' put: 16r7D!
SDLConstants at: 'SDL_SCANCODE_PAUSE' put: 16r48!
SDLConstants at: 'SDL_SCANCODE_PERIOD' put: 16r37!
SDLConstants at: 'SDL_SCANCODE_POWER' put: 16r66!
SDLConstants at: 'SDL_SCANCODE_PRINTSCREEN' put: 16r46!
SDLConstants at: 'SDL_SCANCODE_PRIOR' put: 16r9D!
SDLConstants at: 'SDL_SCANCODE_Q' put: 16r14!
SDLConstants at: 'SDL_SCANCODE_R' put: 16r15!
SDLConstants at: 'SDL_SCANCODE_RALT' put: 16rE6!
SDLConstants at: 'SDL_SCANCODE_RCTRL' put: 16rE4!
SDLConstants at: 'SDL_SCANCODE_RETURN' put: 16r28!
SDLConstants at: 'SDL_SCANCODE_RETURN2' put: 16r9E!
SDLConstants at: 'SDL_SCANCODE_RGUI' put: 16rE7!
SDLConstants at: 'SDL_SCANCODE_RIGHT' put: 16r4F!
SDLConstants at: 'SDL_SCANCODE_RIGHTBRACKET' put: 16r30!
SDLConstants at: 'SDL_SCANCODE_RSHIFT' put: 16rE5!
SDLConstants at: 'SDL_SCANCODE_S' put: 16r16!
SDLConstants at: 'SDL_SCANCODE_SCROLLLOCK' put: 16r47!
SDLConstants at: 'SDL_SCANCODE_SELECT' put: 16r77!
SDLConstants at: 'SDL_SCANCODE_SEMICOLON' put: 16r33!
SDLConstants at: 'SDL_SCANCODE_SEPARATOR' put: 16r9F!
SDLConstants at: 'SDL_SCANCODE_SLASH' put: 16r38!
SDLConstants at: 'SDL_SCANCODE_SLEEP' put: 16r11A!
SDLConstants at: 'SDL_SCANCODE_SPACE' put: 16r2C!
SDLConstants at: 'SDL_SCANCODE_STOP' put: 16r78!
SDLConstants at: 'SDL_SCANCODE_SYSREQ' put: 16r9A!
SDLConstants at: 'SDL_SCANCODE_T' put: 16r17!
SDLConstants at: 'SDL_SCANCODE_TAB' put: 16r2B!
SDLConstants at: 'SDL_SCANCODE_THOUSANDSSEPARATOR' put: 16rB2!
SDLConstants at: 'SDL_SCANCODE_U' put: 16r18!
SDLConstants at: 'SDL_SCANCODE_UNDO' put: 16r7A!
SDLConstants at: 'SDL_SCANCODE_UNKNOWN' put: 16r0!
SDLConstants at: 'SDL_SCANCODE_UP' put: 16r52!
SDLConstants at: 'SDL_SCANCODE_V' put: 16r19!
SDLConstants at: 'SDL_SCANCODE_VOLUMEDOWN' put: 16r81!
SDLConstants at: 'SDL_SCANCODE_VOLUMEUP' put: 16r80!
SDLConstants at: 'SDL_SCANCODE_W' put: 16r1A!
SDLConstants at: 'SDL_SCANCODE_WWW' put: 16r108!
SDLConstants at: 'SDL_SCANCODE_X' put: 16r1B!
SDLConstants at: 'SDL_SCANCODE_Y' put: 16r1C!
SDLConstants at: 'SDL_SCANCODE_Z' put: 16r1D!
SDLConstants at: 'SDL_SYSTEM_CURSOR_ARROW' put: 16r0!
SDLConstants at: 'SDL_SYSTEM_CURSOR_CROSSHAIR' put: 16r3!
SDLConstants at: 'SDL_SYSTEM_CURSOR_HAND' put: 16rB!
SDLConstants at: 'SDL_SYSTEM_CURSOR_IBEAM' put: 16r1!
SDLConstants at: 'SDL_SYSTEM_CURSOR_NO' put: 16rA!
SDLConstants at: 'SDL_SYSTEM_CURSOR_SIZEALL' put: 16r9!
SDLConstants at: 'SDL_SYSTEM_CURSOR_SIZENESW' put: 16r6!
SDLConstants at: 'SDL_SYSTEM_CURSOR_SIZENS' put: 16r8!
SDLConstants at: 'SDL_SYSTEM_CURSOR_SIZENWSE' put: 16r5!
SDLConstants at: 'SDL_SYSTEM_CURSOR_SIZEWE' put: 16r7!
SDLConstants at: 'SDL_SYSTEM_CURSOR_WAIT' put: 16r2!
SDLConstants at: 'SDL_SYSTEM_CURSOR_WAITARROW' put: 16r4!
SDLConstants at: 'SDL_SYSWM_ANDROID' put: 16r9!
SDLConstants at: 'SDL_SYSWM_COCOA' put: 16r4!
SDLConstants at: 'SDL_SYSWM_DIRECTFB' put: 16r3!
SDLConstants at: 'SDL_SYSWM_MIR' put: 16r7!
SDLConstants at: 'SDL_SYSWM_UIKIT' put: 16r5!
SDLConstants at: 'SDL_SYSWM_UNKNOWN' put: 16r0!
SDLConstants at: 'SDL_SYSWM_WAYLAND' put: 16r6!
SDLConstants at: 'SDL_SYSWM_WINDOWS' put: 16r1!
SDLConstants at: 'SDL_SYSWM_WINRT' put: 16r8!
SDLConstants at: 'SDL_SYSWM_X11' put: 16r2!
SDLConstants at: 'SDL_SYSWMEVENT' put: 16r201!
SDLConstants at: 'SDL_TEXTEDITING' put: 16r302!
SDLConstants at: 'SDL_TEXTINPUT' put: 16r303!
SDLConstants at: 'SDL_TEXTUREACCESS_STATIC' put: 16r0!
SDLConstants at: 'SDL_TEXTUREACCESS_STREAMING' put: 16r1!
SDLConstants at: 'SDL_TEXTUREACCESS_TARGET' put: 16r2!
SDLConstants at: 'SDL_USEREVENT' put: 16r8000!
SDLConstants at: 'SDL_WINDOW_ALLOW_HIGHDPI' put: 16r2000!
SDLConstants at: 'SDL_WINDOW_BORDERLESS' put: 16r10!
SDLConstants at: 'SDL_WINDOW_FOREIGN' put: 16r800!
SDLConstants at: 'SDL_WINDOW_FULLSCREEN' put: 16r1!
SDLConstants at: 'SDL_WINDOW_FULLSCREEN_DESKTOP' put: 16r1001!
SDLConstants at: 'SDL_WINDOW_HIDDEN' put: 16r8!
SDLConstants at: 'SDL_WINDOW_INPUT_FOCUS' put: 16r200!
SDLConstants at: 'SDL_WINDOW_INPUT_GRABBED' put: 16r100!
SDLConstants at: 'SDL_WINDOW_MAXIMIZED' put: 16r80!
SDLConstants at: 'SDL_WINDOW_MINIMIZED' put: 16r40!
SDLConstants at: 'SDL_WINDOW_MOUSE_CAPTURE' put: 16r4000!
SDLConstants at: 'SDL_WINDOW_MOUSE_FOCUS' put: 16r400!
SDLConstants at: 'SDL_WINDOW_OPENGL' put: 16r2!
SDLConstants at: 'SDL_WINDOW_RESIZABLE' put: 16r20!
SDLConstants at: 'SDL_WINDOW_SHOWN' put: 16r4!
SDLConstants at: 'SDL_WINDOW_VULKAN' put: 16r10000000!
SDLConstants at: 'SDL_WINDOWEVENT' put: 16r200!
SDLConstants at: 'SDL_WINDOWEVENT_CLOSE' put: 16rE!
SDLConstants at: 'SDL_WINDOWEVENT_ENTER' put: 16rA!
SDLConstants at: 'SDL_WINDOWEVENT_EXPOSED' put: 16r3!
SDLConstants at: 'SDL_WINDOWEVENT_FOCUS_GAINED' put: 16rC!
SDLConstants at: 'SDL_WINDOWEVENT_FOCUS_LOST' put: 16rD!
SDLConstants at: 'SDL_WINDOWEVENT_HIDDEN' put: 16r2!
SDLConstants at: 'SDL_WINDOWEVENT_LEAVE' put: 16rB!
SDLConstants at: 'SDL_WINDOWEVENT_MAXIMIZED' put: 16r8!
SDLConstants at: 'SDL_WINDOWEVENT_MINIMIZED' put: 16r7!
SDLConstants at: 'SDL_WINDOWEVENT_MOVED' put: 16r4!
SDLConstants at: 'SDL_WINDOWEVENT_NONE' put: 16r0!
SDLConstants at: 'SDL_WINDOWEVENT_RESIZED' put: 16r5!
SDLConstants at: 'SDL_WINDOWEVENT_RESTORED' put: 16r9!
SDLConstants at: 'SDL_WINDOWEVENT_SHOWN' put: 16r1!
SDLConstants at: 'SDL_WINDOWEVENT_SIZE_CHANGED' put: 16r6!
SDLConstants at: 'SDL_WINDOWPOS_CENTERED' put: 16r2FFF0000!
SDLConstants at: 'SDL_WINDOWPOS_CENTERED_MASK' put: 16r2FFF0000!
SDLConstants at: 'SDL_WINDOWPOS_UNDEFINED' put: 16r1FFF0000!
SDLConstants at: 'SDL_WINDOWPOS_UNDEFINED_MASK' put: 16r1FFF0000!
SDLConstants at: 'SDLK_0' put: 16r30!
SDLConstants at: 'SDLK_1' put: 16r31!
SDLConstants at: 'SDLK_2' put: 16r32!
SDLConstants at: 'SDLK_3' put: 16r33!
SDLConstants at: 'SDLK_4' put: 16r34!
SDLConstants at: 'SDLK_5' put: 16r35!
SDLConstants at: 'SDLK_6' put: 16r36!
SDLConstants at: 'SDLK_7' put: 16r37!
SDLConstants at: 'SDLK_8' put: 16r38!
SDLConstants at: 'SDLK_9' put: 16r39!
SDLConstants at: 'SDLK_a' put: 16r61!
SDLConstants at: 'SDLK_AC_BACK' put: 16r4000010E!
SDLConstants at: 'SDLK_AC_BOOKMARKS' put: 16r40000112!
SDLConstants at: 'SDLK_AC_FORWARD' put: 16r4000010F!
SDLConstants at: 'SDLK_AC_HOME' put: 16r4000010D!
SDLConstants at: 'SDLK_AC_REFRESH' put: 16r40000111!
SDLConstants at: 'SDLK_AC_SEARCH' put: 16r4000010C!
SDLConstants at: 'SDLK_AC_STOP' put: 16r40000110!
SDLConstants at: 'SDLK_AGAIN' put: 16r40000079!
SDLConstants at: 'SDLK_ALTERASE' put: 16r40000099!
SDLConstants at: 'SDLK_AMPERSAND' put: 16r26!
SDLConstants at: 'SDLK_APPLICATION' put: 16r40000065!
SDLConstants at: 'SDLK_ASTERISK' put: 16r2A!
SDLConstants at: 'SDLK_AT' put: 16r40!
SDLConstants at: 'SDLK_AUDIOMUTE' put: 16r40000106!
SDLConstants at: 'SDLK_AUDIONEXT' put: 16r40000102!
SDLConstants at: 'SDLK_AUDIOPLAY' put: 16r40000105!
SDLConstants at: 'SDLK_AUDIOPREV' put: 16r40000103!
SDLConstants at: 'SDLK_AUDIOSTOP' put: 16r40000104!
SDLConstants at: 'SDLK_b' put: 16r62!
SDLConstants at: 'SDLK_BACKQUOTE' put: 16r60!
SDLConstants at: 'SDLK_BACKSLASH' put: 16r5C!
SDLConstants at: 'SDLK_BACKSPACE' put: 16r8!
SDLConstants at: 'SDLK_BRIGHTNESSDOWN' put: 16r40000113!
SDLConstants at: 'SDLK_BRIGHTNESSUP' put: 16r40000114!
SDLConstants at: 'SDLK_c' put: 16r63!
SDLConstants at: 'SDLK_CALCULATOR' put: 16r4000010A!
SDLConstants at: 'SDLK_CANCEL' put: 16r4000009B!
SDLConstants at: 'SDLK_CAPSLOCK' put: 16r40000039!
SDLConstants at: 'SDLK_CARET' put: 16r5E!
SDLConstants at: 'SDLK_CLEAR' put: 16r4000009C!
SDLConstants at: 'SDLK_CLEARAGAIN' put: 16r400000A2!
SDLConstants at: 'SDLK_COLON' put: 16r3A!
SDLConstants at: 'SDLK_COMMA' put: 16r2C!
SDLConstants at: 'SDLK_COMPUTER' put: 16r4000010B!
SDLConstants at: 'SDLK_COPY' put: 16r4000007C!
SDLConstants at: 'SDLK_CRSEL' put: 16r400000A3!
SDLConstants at: 'SDLK_CURRENCYSUBUNIT' put: 16r400000B5!
SDLConstants at: 'SDLK_CURRENCYUNIT' put: 16r400000B4!
SDLConstants at: 'SDLK_CUT' put: 16r4000007B!
SDLConstants at: 'SDLK_d' put: 16r64!
SDLConstants at: 'SDLK_DECIMALSEPARATOR' put: 16r400000B3!
SDLConstants at: 'SDLK_DELETE' put: 16r7F!
SDLConstants at: 'SDLK_DISPLAYSWITCH' put: 16r40000115!
SDLConstants at: 'SDLK_DOLLAR' put: 16r24!
SDLConstants at: 'SDLK_DOWN' put: 16r40000051!
SDLConstants at: 'SDLK_e' put: 16r65!
SDLConstants at: 'SDLK_EJECT' put: 16r40000119!
SDLConstants at: 'SDLK_END' put: 16r4000004D!
SDLConstants at: 'SDLK_EQUALS' put: 16r3D!
SDLConstants at: 'SDLK_ESCAPE' put: 16r1B!
SDLConstants at: 'SDLK_EXCLAIM' put: 16r21!
SDLConstants at: 'SDLK_EXECUTE' put: 16r40000074!
SDLConstants at: 'SDLK_EXSEL' put: 16r400000A4!
SDLConstants at: 'SDLK_f' put: 16r66!
SDLConstants at: 'SDLK_F1' put: 16r4000003A!
SDLConstants at: 'SDLK_F10' put: 16r40000043!
SDLConstants at: 'SDLK_F11' put: 16r40000044!
SDLConstants at: 'SDLK_F12' put: 16r40000045!
SDLConstants at: 'SDLK_F13' put: 16r40000068!
SDLConstants at: 'SDLK_F14' put: 16r40000069!
SDLConstants at: 'SDLK_F15' put: 16r4000006A!
SDLConstants at: 'SDLK_F16' put: 16r4000006B!
SDLConstants at: 'SDLK_F17' put: 16r4000006C!
SDLConstants at: 'SDLK_F18' put: 16r4000006D!
SDLConstants at: 'SDLK_F19' put: 16r4000006E!
SDLConstants at: 'SDLK_F2' put: 16r4000003B!
SDLConstants at: 'SDLK_F20' put: 16r4000006F!
SDLConstants at: 'SDLK_F21' put: 16r40000070!
SDLConstants at: 'SDLK_F22' put: 16r40000071!
SDLConstants at: 'SDLK_F23' put: 16r40000072!
SDLConstants at: 'SDLK_F24' put: 16r40000073!
SDLConstants at: 'SDLK_F3' put: 16r4000003C!
SDLConstants at: 'SDLK_F4' put: 16r4000003D!
SDLConstants at: 'SDLK_F5' put: 16r4000003E!
SDLConstants at: 'SDLK_F6' put: 16r4000003F!
SDLConstants at: 'SDLK_F7' put: 16r40000040!
SDLConstants at: 'SDLK_F8' put: 16r40000041!
SDLConstants at: 'SDLK_F9' put: 16r40000042!
SDLConstants at: 'SDLK_FIND' put: 16r4000007E!
SDLConstants at: 'SDLK_g' put: 16r67!
SDLConstants at: 'SDLK_GREATER' put: 16r3E!
SDLConstants at: 'SDLK_h' put: 16r68!
SDLConstants at: 'SDLK_HASH' put: 16r23!
SDLConstants at: 'SDLK_HELP' put: 16r40000075!
SDLConstants at: 'SDLK_HOME' put: 16r4000004A!
SDLConstants at: 'SDLK_i' put: 16r69!
SDLConstants at: 'SDLK_INSERT' put: 16r40000049!
SDLConstants at: 'SDLK_j' put: 16r6A!
SDLConstants at: 'SDLK_k' put: 16r6B!
SDLConstants at: 'SDLK_KBDILLUMDOWN' put: 16r40000117!
SDLConstants at: 'SDLK_KBDILLUMTOGGLE' put: 16r40000116!
SDLConstants at: 'SDLK_KBDILLUMUP' put: 16r40000118!
SDLConstants at: 'SDLK_KP_0' put: 16r40000062!
SDLConstants at: 'SDLK_KP_00' put: 16r400000B0!
SDLConstants at: 'SDLK_KP_000' put: 16r400000B1!
SDLConstants at: 'SDLK_KP_1' put: 16r40000059!
SDLConstants at: 'SDLK_KP_2' put: 16r4000005A!
SDLConstants at: 'SDLK_KP_3' put: 16r4000005B!
SDLConstants at: 'SDLK_KP_4' put: 16r4000005C!
SDLConstants at: 'SDLK_KP_5' put: 16r4000005D!
SDLConstants at: 'SDLK_KP_6' put: 16r4000005E!
SDLConstants at: 'SDLK_KP_7' put: 16r4000005F!
SDLConstants at: 'SDLK_KP_8' put: 16r40000060!
SDLConstants at: 'SDLK_KP_9' put: 16r40000061!
SDLConstants at: 'SDLK_KP_A' put: 16r400000BC!
SDLConstants at: 'SDLK_KP_AMPERSAND' put: 16r400000C7!
SDLConstants at: 'SDLK_KP_AT' put: 16r400000CE!
SDLConstants at: 'SDLK_KP_B' put: 16r400000BD!
SDLConstants at: 'SDLK_KP_BACKSPACE' put: 16r400000BB!
SDLConstants at: 'SDLK_KP_BINARY' put: 16r400000DA!
SDLConstants at: 'SDLK_KP_C' put: 16r400000BE!
SDLConstants at: 'SDLK_KP_CLEAR' put: 16r400000D8!
SDLConstants at: 'SDLK_KP_CLEARENTRY' put: 16r400000D9!
SDLConstants at: 'SDLK_KP_COLON' put: 16r400000CB!
SDLConstants at: 'SDLK_KP_COMMA' put: 16r40000085!
SDLConstants at: 'SDLK_KP_D' put: 16r400000BF!
SDLConstants at: 'SDLK_KP_DBLAMPERSAND' put: 16r400000C8!
SDLConstants at: 'SDLK_KP_DBLVERTICALBAR' put: 16r400000CA!
SDLConstants at: 'SDLK_KP_DECIMAL' put: 16r400000DC!
SDLConstants at: 'SDLK_KP_DIVIDE' put: 16r40000054!
SDLConstants at: 'SDLK_KP_E' put: 16r400000C0!
SDLConstants at: 'SDLK_KP_ENTER' put: 16r40000058!
SDLConstants at: 'SDLK_KP_EQUALS' put: 16r40000067!
SDLConstants at: 'SDLK_KP_EQUALSAS400' put: 16r40000086!
SDLConstants at: 'SDLK_KP_EXCLAM' put: 16r400000CF!
SDLConstants at: 'SDLK_KP_F' put: 16r400000C1!
SDLConstants at: 'SDLK_KP_GREATER' put: 16r400000C6!
SDLConstants at: 'SDLK_KP_HASH' put: 16r400000CC!
SDLConstants at: 'SDLK_KP_HEXADECIMAL' put: 16r400000DD!
SDLConstants at: 'SDLK_KP_LEFTBRACE' put: 16r400000B8!
SDLConstants at: 'SDLK_KP_LEFTPAREN' put: 16r400000B6!
SDLConstants at: 'SDLK_KP_LESS' put: 16r400000C5!
SDLConstants at: 'SDLK_KP_MEMADD' put: 16r400000D3!
SDLConstants at: 'SDLK_KP_MEMCLEAR' put: 16r400000D2!
SDLConstants at: 'SDLK_KP_MEMDIVIDE' put: 16r400000D6!
SDLConstants at: 'SDLK_KP_MEMMULTIPLY' put: 16r400000D5!
SDLConstants at: 'SDLK_KP_MEMRECALL' put: 16r400000D1!
SDLConstants at: 'SDLK_KP_MEMSTORE' put: 16r400000D0!
SDLConstants at: 'SDLK_KP_MEMSUBTRACT' put: 16r400000D4!
SDLConstants at: 'SDLK_KP_MINUS' put: 16r40000056!
SDLConstants at: 'SDLK_KP_MULTIPLY' put: 16r40000055!
SDLConstants at: 'SDLK_KP_OCTAL' put: 16r400000DB!
SDLConstants at: 'SDLK_KP_PERCENT' put: 16r400000C4!
SDLConstants at: 'SDLK_KP_PERIOD' put: 16r40000063!
SDLConstants at: 'SDLK_KP_PLUS' put: 16r40000057!
SDLConstants at: 'SDLK_KP_PLUSMINUS' put: 16r400000D7!
SDLConstants at: 'SDLK_KP_POWER' put: 16r400000C3!
SDLConstants at: 'SDLK_KP_RIGHTBRACE' put: 16r400000B9!
SDLConstants at: 'SDLK_KP_RIGHTPAREN' put: 16r400000B7!
SDLConstants at: 'SDLK_KP_SPACE' put: 16r400000CD!
SDLConstants at: 'SDLK_KP_TAB' put: 16r400000BA!
SDLConstants at: 'SDLK_KP_VERTICALBAR' put: 16r400000C9!
SDLConstants at: 'SDLK_KP_XOR' put: 16r400000C2!
SDLConstants at: 'SDLK_l' put: 16r6C!
SDLConstants at: 'SDLK_LALT' put: 16r400000E2!
SDLConstants at: 'SDLK_LCTRL' put: 16r400000E0!
SDLConstants at: 'SDLK_LEFT' put: 16r40000050!
SDLConstants at: 'SDLK_LEFTBRACKET' put: 16r5B!
SDLConstants at: 'SDLK_LEFTPAREN' put: 16r28!
SDLConstants at: 'SDLK_LESS' put: 16r3C!
SDLConstants at: 'SDLK_LGUI' put: 16r400000E3!
SDLConstants at: 'SDLK_LSHIFT' put: 16r400000E1!
SDLConstants at: 'SDLK_m' put: 16r6D!
SDLConstants at: 'SDLK_MAIL' put: 16r40000109!
SDLConstants at: 'SDLK_MEDIASELECT' put: 16r40000107!
SDLConstants at: 'SDLK_MENU' put: 16r40000076!
SDLConstants at: 'SDLK_MINUS' put: 16r2D!
SDLConstants at: 'SDLK_MODE' put: 16r40000101!
SDLConstants at: 'SDLK_MUTE' put: 16r4000007F!
SDLConstants at: 'SDLK_n' put: 16r6E!
SDLConstants at: 'SDLK_NUMLOCKCLEAR' put: 16r40000053!
SDLConstants at: 'SDLK_o' put: 16r6F!
SDLConstants at: 'SDLK_OPER' put: 16r400000A1!
SDLConstants at: 'SDLK_OUT' put: 16r400000A0!
SDLConstants at: 'SDLK_p' put: 16r70!
SDLConstants at: 'SDLK_PAGEDOWN' put: 16r4000004E!
SDLConstants at: 'SDLK_PAGEUP' put: 16r4000004B!
SDLConstants at: 'SDLK_PASTE' put: 16r4000007D!
SDLConstants at: 'SDLK_PAUSE' put: 16r40000048!
SDLConstants at: 'SDLK_PERCENT' put: 16r25!
SDLConstants at: 'SDLK_PERIOD' put: 16r2E!
SDLConstants at: 'SDLK_PLUS' put: 16r2B!
SDLConstants at: 'SDLK_POWER' put: 16r40000066!
SDLConstants at: 'SDLK_PRINTSCREEN' put: 16r40000046!
SDLConstants at: 'SDLK_PRIOR' put: 16r4000009D!
SDLConstants at: 'SDLK_q' put: 16r71!
SDLConstants at: 'SDLK_QUESTION' put: 16r3F!
SDLConstants at: 'SDLK_QUOTE' put: 16r27!
SDLConstants at: 'SDLK_QUOTEDBL' put: 16r22!
SDLConstants at: 'SDLK_r' put: 16r72!
SDLConstants at: 'SDLK_RALT' put: 16r400000E6!
SDLConstants at: 'SDLK_RCTRL' put: 16r400000E4!
SDLConstants at: 'SDLK_RETURN' put: 16rD!
SDLConstants at: 'SDLK_RETURN2' put: 16r4000009E!
SDLConstants at: 'SDLK_RGUI' put: 16r400000E7!
SDLConstants at: 'SDLK_RIGHT' put: 16r4000004F!
SDLConstants at: 'SDLK_RIGHTBRACKET' put: 16r5D!
SDLConstants at: 'SDLK_RIGHTPAREN' put: 16r29!
SDLConstants at: 'SDLK_RSHIFT' put: 16r400000E5!
SDLConstants at: 'SDLK_s' put: 16r73!
SDLConstants at: 'SDLK_SCROLLLOCK' put: 16r40000047!
SDLConstants at: 'SDLK_SELECT' put: 16r40000077!
SDLConstants at: 'SDLK_SEMICOLON' put: 16r3B!
SDLConstants at: 'SDLK_SEPARATOR' put: 16r4000009F!
SDLConstants at: 'SDLK_SLASH' put: 16r2F!
SDLConstants at: 'SDLK_SLEEP' put: 16r4000011A!
SDLConstants at: 'SDLK_SPACE' put: 16r20!
SDLConstants at: 'SDLK_STOP' put: 16r40000078!
SDLConstants at: 'SDLK_SYSREQ' put: 16r4000009A!
SDLConstants at: 'SDLK_t' put: 16r74!
SDLConstants at: 'SDLK_TAB' put: 16r9!
SDLConstants at: 'SDLK_THOUSANDSSEPARATOR' put: 16r400000B2!
SDLConstants at: 'SDLK_u' put: 16r75!
SDLConstants at: 'SDLK_UNDERSCORE' put: 16r5F!
SDLConstants at: 'SDLK_UNDO' put: 16r4000007A!
SDLConstants at: 'SDLK_UNKNOWN' put: 16r0!
SDLConstants at: 'SDLK_UP' put: 16r40000052!
SDLConstants at: 'SDLK_v' put: 16r76!
SDLConstants at: 'SDLK_VOLUMEDOWN' put: 16r40000081!
SDLConstants at: 'SDLK_VOLUMEUP' put: 16r40000080!
SDLConstants at: 'SDLK_w' put: 16r77!
SDLConstants at: 'SDLK_WWW' put: 16r40000108!
SDLConstants at: 'SDLK_x' put: 16r78!
SDLConstants at: 'SDLK_y' put: 16r79!
SDLConstants at: 'SDLK_z' put: 16r7A!
SDLConstants shrink!

Smalltalk at: #TTFConstants put: (PoolConstantsDictionary named: #TTFConstants)!
TTFConstants at: 'TTF_HINTING_LIGHT' put: 16r1!
TTFConstants at: 'TTF_HINTING_MONO' put: 16r2!
TTFConstants at: 'TTF_HINTING_NONE' put: 16r3!
TTFConstants at: 'TTF_HINTING_NORMAL' put: 16r0!
TTFConstants at: 'TTF_STYLE_BOLD' put: 16r1!
TTFConstants at: 'TTF_STYLE_ITALIC' put: 16r2!
TTFConstants at: 'TTF_STYLE_NORMAL' put: 16r0!
TTFConstants at: 'TTF_STYLE_STRIKETHROUGH' put: 16r8!
TTFConstants at: 'TTF_STYLE_UNDERLINE' put: 16r4!
TTFConstants at: 'TTF_WRAPPED_ALIGN_CENTER' put: 16r1!
TTFConstants at: 'TTF_WRAPPED_ALIGN_LEFT' put: 16r0!
TTFConstants at: 'TTF_WRAPPED_ALIGN_RIGHT' put: 16r2!
TTFConstants shrink!

"Classes"!

FontStyle guid: (GUID fromString: '{e162a0b7-bcb6-4588-93fa-9499cc955616}')!
FontStyle comment: ''!
!FontStyle categoriesForClass!Kernel-Objects! !
!FontStyle methodsFor!

<= aTTFFontStyle
	^code <= aTTFFontStyle code!

code
	^code!

code: anObject
	code := anObject!

name
	^name!

name: anObject
	name := anObject! !
!FontStyle categoriesForMethods!
<=!public! !
code!accessing!public! !
code:!accessing!private! !
name!accessing!public! !
name:!accessing!private! !
!

!FontStyle class methodsFor!

allStyles
	^{self normal. self bold. self italic. self strikethrough. self underline}!

bold
	^FontStyle new
		name: 'Bold';
		code: TTF_STYLE_BOLD!

italic
	^FontStyle new
		name: 'Italic';
		code: TTF_STYLE_ITALIC!

new
	^super new initialize!

normal
	^FontStyle new
		name: 'Normal';
		code: TTF_STYLE_NORMAL!

strikethrough
	^FontStyle new
		name: 'Strikethrough';
		code: TTF_STYLE_STRIKETHROUGH!

underline
	^FontStyle new
		name: 'Underline';
		code: TTF_STYLE_UNDERLINE! !
!FontStyle class categoriesForMethods!
allStyles!public! !
bold!public! !
italic!public! !
new!public! !
normal!public! !
strikethrough!public! !
underline!public! !
!

RenderCommand guid: (GUID fromString: '{0565881b-e125-4551-b037-26816ec53091}')!
RenderCommand comment: ''!
!RenderCommand categoriesForClass!Kernel-Objects! !
!RenderCommand methodsFor!

asSelector
	^('execute' , self class name asString , ':') asSymbol!

clip
	^clip!

clip: anObject
	clip := anObject!

ifDrawRectangle: drawRectangleBlock ifDrawString: drawStringBlock ifFillRectangle: fillRectangleBlock ifDrawImage: drawImageBlock ifDrawBitmap: drawBitmapBlock ifDrawLine: drawLineBlock ifDrawBezierCurve: drawBezierCurveBlock ifFillPolygon: fillPolygonBlock
	self class = DrawRectangle
		ifTrue: [drawRectangleBlock value]
		ifFalse: 
			[self class = DrawString
				ifTrue: [drawStringBlock value]
				ifFalse: 
					[self class = FillRectangle
						ifTrue: [fillRectangleBlock value]
						ifFalse: 
							[self class = DrawImage
								ifTrue: [drawImageBlock value]
								ifFalse: 
									[self class = DrawBitmap
										ifTrue: [drawBitmapBlock value]
										ifFalse: 
											[self class = DrawLine
												ifTrue: [drawLineBlock value]
												ifFalse: [self class = DrawBezierCurve
													ifTrue: [ drawBezierCurveBlock value ] 
													ifFalse: [ self class = FillPolygon ifTrue: [fillPolygonBlock value]]]]]]]]!

ifDrawRectangle: drawRectangleBlock ifDrawString: drawStringBlock ifFillRectangle: fillRectangleBlock ifDrawImage: drawImageBlock ifDrawBitmap: drawBitmapBlock ifDrawLine: drawLineBlock ifFillPolygon: fillPolygonBlock
	self class = DrawRectangle
		ifTrue: [drawRectangleBlock value]
		ifFalse: 
			[self class = DrawString
				ifTrue: [drawStringBlock value]
				ifFalse: 
					[self class = FillRectangle
						ifTrue: [fillRectangleBlock value]
						ifFalse: 
							[self class = DrawImage
								ifTrue: [drawImageBlock value]
								ifFalse: 
									[self class = DrawBitmap
										ifTrue: [drawBitmapBlock value]
										ifFalse: 
											[self class = DrawLine
												ifTrue: [drawLineBlock value]
												ifFalse: [self class = FillPolygon ifTrue: [fillPolygonBlock value]]]]]]]!

rotate
	^rotate!

rotate: aRealAngle
	rotate := aRealAngle!

zIndex
	^zIndex!

zIndex: anObject
	zIndex := anObject! !
!RenderCommand categoriesForMethods!
asSelector!public! !
clip!public! !
clip:!public! !
ifDrawRectangle:ifDrawString:ifFillRectangle:ifDrawImage:ifDrawBitmap:ifDrawLine:ifDrawBezierCurve:ifFillPolygon:!public! !
ifDrawRectangle:ifDrawString:ifFillRectangle:ifDrawImage:ifDrawBitmap:ifDrawLine:ifFillPolygon:!public! !
rotate!public! !
rotate:!public! !
zIndex!public! !
zIndex:!public! !
!

!RenderCommand class methodsFor!

new
	^super new initialize! !
!RenderCommand class categoriesForMethods!
new!public! !
!

Renderer guid: (GUID fromString: '{9be79942-98a4-44d7-8072-de4700712167}')!
Renderer comment: ''!
!Renderer categoriesForClass!Kernel-Objects! !
!Renderer methodsFor!

addCommand: aDrawCommand
	isEnabled
		ifTrue: 
			[clip ifNotNil: [aDrawCommand clip: clip].
			renderQueue enqueue: aDrawCommand priority: aDrawCommand zIndex]!

addOffset: aPoint
	offset := offset + aPoint!

clear
	sdlRenderer clear!

clearOffset
	offset := 0@0!

clip
	^clip!

clip: aRectangle 
	clip := aRectangle!

createImageTexture: aString
	| surface |
	surface := SDL_Surface fromFile: aString.
	^sdlRenderer createTextureFromSurface: surface!

createStringTexture: aDrawString
	| font texture surface |
	font := self
				lookupFont: (aDrawString fontName ifNil: [self defaultFontName])
				style: (aDrawString fontStyle ifNil: [FontStyle normal])
				pointSize: (aDrawString fontSize ifNil: [18]).
	aDrawString fontStyle
		ifNotNil: [:aFontStyle | font setStyle: aFontStyle].
	surface := font
				renderUTF8BlendedWrapped: aDrawString string displayString
				color: (aDrawString color ifNil: [Color black])
				wrapLength: aDrawString rectangle width.
	aDrawString fontStyle ifNotNil: [font setStyle: FontStyle normal].
	texture := sdlRenderer createTextureFromSurface: surface.
	surface free.
	^texture!

createTexture: aPoint
	^sdlRenderer createTexture: aPoint!

createTextureFromSurface: aSDL_Surface
	^sdlRenderer createTextureFromSurface: aSDL_Surface!

defaultFontName
	^'source-sans-pro\source-sans-pro-latin'!

destroy
	sdlRenderer ifNotNil: [sdlRenderer destroy].
	fontCache
		ifNotNil: 
			[fontCache values do: [:aFont | aFont close].
			fontCache removeAll].
	SDL2TTFLibrary default quit.
	SDL2ImageLibrary default quit!

disable
	isEnabled := false!

drawArrowFrom: startPoint to: endPoint width: width color: color zIndex: zIndex
	| isVertical |
	isVertical := startPoint x = endPoint x.
	self
		addCommand: (DrawLine new
					start: startPoint;
					end: endPoint;
					width: width;
					color: color;
					zIndex: zIndex);
		addCommand: (DrawLine new
					start: endPoint;
					end: (isVertical
								ifTrue: [(endPoint x - 5) @ (endPoint y + 5)]
								ifFalse: [(endPoint x - 5) @ (endPoint y - 5)]);
					width: width;
					color: color;
					zIndex: zIndex);
		addCommand: (DrawLine new
					start: endPoint;
					end: (isVertical
								ifTrue: [(endPoint x + 5) @ (endPoint y + 5)]
								ifFalse: [(endPoint x - 5) @ (endPoint y + 5)]);
					width: width;
					color: color;
					zIndex: zIndex)!

drawCharacter: aCharacter rectangle: aRectangle color: aColor fontSize: anInteger zIndex: anInteger2
	self addCommand: (DrawCharacter new
				character: aCharacter;
				rectangle: aRectangle;
				color: aColor;
				fontSize: anInteger;
				zIndex: anInteger2)!

drawCount
	| count |
	count := 0.
	renderQueue do: [:each | count := count + each size].
	^count!

drawImage: aFilePath rectangle: aRectangle zIndex: anInteger
	self addCommand: (DrawImage new
				filePath: aFilePath;
				rectangle: aRectangle;
				zIndex: anInteger)!

drawLineFrom: startPoint to: endPoint width: width color: color zIndex: zIndex
	self addCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				width: width;
				color: color;
				zIndex: zIndex)!

drawRectangle: aRectangle
	self drawRectangle: aRectangle color: Color black!

drawRectangle: aRectangle color: aColor
	self
		drawRectangle: aRectangle
		color: aColor
		zIndex: 1!

drawRectangle: aRectangle color: aColor width: anInteger zIndex: anotherInteger
	self addCommand: (DrawRectangle new
				rectangle: aRectangle;
				color: aColor;
				width: anInteger;
				zIndex: anotherInteger)!

drawRectangle: aRectangle color: aColor zIndex: anInteger
	self addCommand: (DrawRectangle new
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

drawString: aString rectangle: aRectangle
	self drawString: aRectangle rectangle: aRectangle color: Color black!

drawString: aString rectangle: aRectangle color: aColor
	self addCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				color: aColor;
				zIndex: 1)!

drawString: aString rectangle: aRectangle color: aColor fontStyle: aFontStyle zIndex: anInteger
	self addCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				color: aColor;
				fontStyle: aFontStyle;
				zIndex: anInteger)!

drawString: aString rectangle: aRectangle color: aColor zIndex: anInteger
	self addCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

drawString: aString rectangle: aRectangle fontSize: anInteger zIndex: anotherInteger
	self addCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				fontSize: anInteger;
				zIndex: anotherInteger)!

drawString: aString rectangle: aRectangle zIndex: anInteger
	self addCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				color: Color black;
				zIndex: anInteger)!

drawTexture: aTexture rectangle: aRectangle stretch: aBoolean zIndex: anInteger
	self addCommand: (DrawTexture new
				texture: aTexture;
				rectangle: aRectangle;
				stretch: aBoolean;
				zIndex: anInteger)!

drawTexture: aTexture rectangle: aRectangle zIndex: anInteger
	self addCommand: (DrawTexture new
				texture: aTexture;
				rectangle: aRectangle;
				zIndex: anInteger)!

enable
	isEnabled := true!

execute: aRenderCommand
	| selector |
	selector := aRenderCommand asSelector.
	aRenderCommand clip ifNotNil: [:aRectangle | sdlRenderer setClip: aRectangle].
	self perform: selector with: aRenderCommand.
	aRenderCommand clip ifNotNil: [sdlRenderer resetClip]!

executeDrawCharacter: aDrawCharacter
	| font surface texture textureExtent |
	font := self
				lookupFont: self defaultFontName
				style: (aDrawCharacter fontStyle ifNil: [FontStyle normal])
				pointSize: aDrawCharacter fontSize.
	surface := font renderGlyph32Blended: aDrawCharacter character color: aDrawCharacter color.
	texture := sdlRenderer createTextureFromSurface: surface.
	surface free.
	textureExtent := texture getExtent.
	sdlRenderer
		renderCopy: texture
		source: nil
		destination: (Rectangle origin: aDrawCharacter rectangle origin extent: textureExtent).
	texture destroy!

executeDrawLine: aDrawLine
	aDrawLine color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer drawLineFrom: aDrawLine start to: aDrawLine end!

executeDrawRectangle: aDrawRectangle
	aDrawRectangle color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer drawRectangle: aDrawRectangle rectangle!

executeDrawString: aDrawString
	| texture |
	texture := self createStringTexture: aDrawString.
	sdlRenderer
		renderCopy: texture
		source: nil
		destination: (Rectangle origin: aDrawString rectangle origin extent: texture getExtent).
	texture destroy!

executeDrawTexture: aDrawTexture
	| texture destinationRectangle |
	texture := aDrawTexture texture.
	destinationRectangle := aDrawTexture stretch
				ifTrue: [aDrawTexture rectangle]
				ifFalse: 
					[| textureExtent |
					textureExtent := texture getExtent.
					Rectangle origin: aDrawTexture rectangle origin extent: textureExtent].
	sdlRenderer
		renderCopy: texture
		source: nil
		destination: destinationRectangle!

executeFillQuadrilateral: aFillQuadrilateral
	| vertices indices |
	vertices := aFillQuadrilateral points collect: 
					[:aPoint |
					SDL_Vertex new
						position: (SDL_FPoint new
									x: aPoint x;
									y: aPoint y);
						color: (aFillQuadrilateral color ifNil: [Color white]) asSDLColor;
						tex_coord: SDL_FPoint new].
	indices := {0. 3. 1. 1. 2. 3} collect: [:anInteger | anInteger asSDword].
	sdlRenderer
		renderGeometry: nil
		vertices: vertices
		indices: indices!

executeFillRectangle: aFillRectangle
	aFillRectangle color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer fillRectangle: aFillRectangle rectangle!

executeFillTriangle: aFillTriangle
	| vertices |
	vertices := aFillTriangle points collect: 
					[:aPoint |
					SDL_Vertex new
						position: (SDL_FPoint new
									x: aPoint x;
									y: aPoint y);
						color: aFillTriangle color asSDLColor;
						tex_coord: SDL_FPoint new].
	sdlRenderer renderGeometry: nil vertices: vertices!

fillPolygon: anArrayOfPoint color: aColor zIndex: anInteger
	self addCommand: (FillPolygon new
				points: anArrayOfPoint;
				color: aColor;
				zIndex: anInteger)!

fillQuadrilateral: anArrayOfPoint color: aColor zIndex: anInteger
	self addCommand: (FillQuadrilateral new
				vertexOne: anArrayOfPoint first;
				vertexTwo: anArrayOfPoint second;
				vertexThree: anArrayOfPoint third;
				vertexFour: anArrayOfPoint fourth;
				color: aColor;
				zIndex: anInteger)!

fillRectangle: aRectangle color: aColor zIndex: anInteger
	self addCommand: (FillRectangle new
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

fillTriangle: anArrayOfPoint color: aColor zIndex: anInteger
	self addCommand: (FillTriangle new
				vertexOne: anArrayOfPoint first;
				vertexTwo: anArrayOfPoint second;
				vertexThree: anArrayOfPoint third;
				color: aColor;
				zIndex: anInteger)!

flush
	renderQueue reverseFlushWith: [:aDrawCommand | self execute: aDrawCommand]!

forceRender: aBlock
	| currentState |
	currentState := isEnabled.
	isEnabled := true.
	aBlock value.
	isEnabled := currentState!

initialize
	super initialize.
	renderQueue := PriorityQueue new.
	offset := 0 @ 0.
	isEnabled := true.
	fontCache := LookupTable new.
	SDL2TTFLibrary default init.
	SDL2ImageLibrary default init_flags: 0!

isEnabled
	^isEnabled!

lookupFont: aString style: aFontStyle pointSize: anInteger
	| styleCode fileName suffix index font |
	styleCode := aFontStyle code.
	suffix := '-400-normal'.
	styleCode = TTF_STYLE_BOLD ifTrue: [suffix := '-700-normal'].
	styleCode = TTF_STYLE_ITALIC ifTrue: [suffix := '-400-italic'].
	fileName := aString , suffix , '.ttf'.
	(File exists: fileName)
		ifFalse: [Error signal: ('Font file does not exist at: <1s>' expandMacrosWith: fileName)].
	index := fileName -> anInteger.
	font := fontCache at: index ifAbsent: [nil].
	(font isNil or: [font isNull])
		ifTrue: [font := fontCache at: index put: (TTF_Font fromFile: fileName pointSize: anInteger)].
	^font!

measureString: aString fontSize: anInteger
	^self
		measureString: aString
		fontSize: anInteger
		fontStyle: FontStyle normal!

measureString: aString fontSize: anInteger fontStyle: aFontStyle
	| font origin extent |
	font := self
				lookupFont: self defaultFontName
				style: (aFontStyle ifNil: [FontStyle normal])
				pointSize: anInteger.
	origin := 0 @ 0.
	extent := font sizeText: aString.
	^Rectangle origin: origin extent: extent!

measureString: aString inRectangle: aRectangle fontSize: anInteger fontStyle: aFontStyle
	| font origin extent |
	font := self
				lookupFont: self defaultFontName
				style: (aFontStyle ifNil: [FontStyle normal])
				pointSize: anInteger.
	origin := aRectangle origin.
	aRectangle width = 0
		ifTrue: [extent := font sizeText: aString]
		ifFalse: 
			[| surface |
			surface := font
						renderUTF8BlendedWrapped: aString
						color: Color black
						wrapLength: aRectangle width.
			extent := surface isNull ifTrue: [0 @ 0] ifFalse: [surface w @ surface h].
			surface free].
	^Rectangle origin: origin extent: extent!

offset
	^offset!

offset: aPoint
	offset := aPoint!

present
	sdlRenderer present!

renderRectangle: aRectangle toSurface: aSDLSurface
	sdlRenderer
		renderReadPixels: aRectangle
		format: 0
		pixels: aSDLSurface pixels
		pitch: aSDLSurface pitch!

sdlRenderer: anObject
	sdlRenderer := anObject!

subtractOffset: aPoint
	offset := offset - aPoint!

viewport
	^Rectangle origin: 0 @ 0 extent: sdlRenderer getWindow getExtent!

withClip: aRectangle do: aBlock
	aRectangle
		ifNotNil: 
			[| currentClip |
			currentClip := clip.
			clip := currentClip ifNotNil: [currentClip intersect: aRectangle] ifNil: [aRectangle].
			aBlock value.
			clip := currentClip]
		ifNil: [aBlock value]!

withOffset: aPoint do: aBlock
	self addOffset: aPoint.
	aBlock value.
	self subtractOffset: aPoint!

withoutClipDo: aBlock
	| currentClip |
	currentClip := clip.
	clip := nil.
	aBlock value.
	clip := currentClip!

withoutOffsetDo: aBlock
	| currentOffset |
	currentOffset := offset.
	offset := 0@0.
	aBlock value.
	offset := currentOffset! !
!Renderer categoriesForMethods!
addCommand:!public! !
addOffset:!public! !
clear!public! !
clearOffset!public! !
clip!public! !
clip:!public! !
createImageTexture:!public! !
createStringTexture:!public! !
createTexture:!public! !
createTextureFromSurface:!public! !
defaultFontName!public! !
destroy!public! !
disable!public! !
drawArrowFrom:to:width:color:zIndex:!accessing!public! !
drawCharacter:rectangle:color:fontSize:zIndex:!public! !
drawCount!public! !
drawImage:rectangle:zIndex:!accessing!public! !
drawLineFrom:to:width:color:zIndex:!accessing!public! !
drawRectangle:!public! !
drawRectangle:color:!public! !
drawRectangle:color:width:zIndex:!public! !
drawRectangle:color:zIndex:!public! !
drawString:rectangle:!accessing!public! !
drawString:rectangle:color:!accessing!public! !
drawString:rectangle:color:fontStyle:zIndex:!public! !
drawString:rectangle:color:zIndex:!accessing!public! !
drawString:rectangle:fontSize:zIndex:!accessing!public! !
drawString:rectangle:zIndex:!accessing!public! !
drawTexture:rectangle:stretch:zIndex:!accessing!public! !
drawTexture:rectangle:zIndex:!accessing!public! !
enable!public! !
execute:!private! !
executeDrawCharacter:!private! !
executeDrawLine:!private! !
executeDrawRectangle:!private! !
executeDrawString:!private! !
executeDrawTexture:!private! !
executeFillQuadrilateral:!private! !
executeFillRectangle:!private! !
executeFillTriangle:!private! !
fillPolygon:color:zIndex:!public! !
fillQuadrilateral:color:zIndex:!public! !
fillRectangle:color:zIndex:!public! !
fillTriangle:color:zIndex:!public! !
flush!public! !
forceRender:!public! !
initialize!public! !
isEnabled!public! !
lookupFont:style:pointSize:!public! !
measureString:fontSize:!public! !
measureString:fontSize:fontStyle:!public! !
measureString:inRectangle:fontSize:fontStyle:!public! !
offset!public! !
offset:!public! !
present!public! !
renderRectangle:toSurface:!public! !
sdlRenderer:!accessing!public! !
subtractOffset:!public! !
viewport!public! !
withClip:do:!public! !
withOffset:do:!public! !
withoutClipDo:!public! !
withoutOffsetDo:!public! !
!

!Renderer class methodsFor!

new
	^super new initialize! !
!Renderer class categoriesForMethods!
new!public! !
!

SDLInputState guid: (GUID fromString: '{9b0ff9fb-40c3-4d7e-91fe-2a58048fdbdf}')!
SDLInputState comment: ''!
!SDLInputState categoriesForClass!Kernel-Objects! !
!SDLInputState methodsFor!

closeAll
	visualObjectInspectors values
		do: [:aVisualObjectInspector | [aVisualObjectInspector close] on: Error do: [:error | ]].
	visualObjectInspectors removeAll!

createWindow: aString extent: aPoint for: aVisualObjectInspector
	| window |
	window := library
				createWindow_title: aString
				x: SDL_WINDOWPOS_UNDEFINED
				y: SDL_WINDOWPOS_UNDEFINED
				w: aPoint x
				h: aPoint y
				flags: SDL_WINDOW_RESIZABLE.
	visualObjectInspectors at: window getID put: aVisualObjectInspector.
	self ensureMainRunning.
	^window!

dispatchEvent: anEvent to: aVisualObjectInspector
	[aVisualObjectInspector handleEvent: anEvent] ifCurtailed: [self quit]!

ensureMainRunning
	library := SDL2Library default.
	main ifNotNil: [main isAlive ifTrue: [^self]].
	self forkMain!

finalize
	self quit.
	super finalize!

forkMain
	main := 
			[
			[| frameRuntime sleepTime |
			frameRuntime := 
					[self
						pumpMessages;
						updateWindows] timeToRun.
			sleepTime := Duration
						milliseconds: ((updateInterval - frameRuntime asMilliseconds) truncated max: 1).
			Processor sleep: sleepTime]
					repeat]
					forkAt: Processor highIOPriority.
	main name: 'Main (SDL)'!

getDisplayExtent
	| displayMode |
	displayMode := SDL_DisplayMode new.
	library getCurrentDisplayMode_displayIndex: 0 mode: displayMode.
	^displayMode w @ displayMode h!

initialize
	super initialize.
	library := SDL2Library default.
	visualObjectInspectors := LookupTable new.
	self
		initializeAll;
		registerRenderEvent;
		setHints.
	updateInterval := 5!

initialize: anInteger
	library init_flags: anInteger!

initializeAll
	self
		initialize: SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC
				| SDL_INIT_GAMECONTROLLER | SDL_INIT_EVENTS!

initializeFrom: anSDLInputState
	anSDLInputState
		ifNil: [self initialize]
		ifNotNil: [visualObjectInspectors := anSDLInputState visualObjectInspectors]!

initializeVideo
	self initialize: SDL_INIT_VIDEO!

keepAlive
	visualObjectInspectors isEmpty
		ifTrue: 
			[self quit.
			SessionManager current quit]!

onDefocus
	updateInterval := 500!

onExit
	self quit!

onFocus
	updateInterval := 5!

pollEvent
	| event result |
	event := SDL_Event new.
	result := library pollEvent_event: event.
	^result = 0 ifTrue: [nil] ifFalse: [event]!

pumpMessages
	
	[| currentEvent |
	currentEvent := self pollEvent.
	currentEvent
		ifNotNil: 
			[currentEvent type = SDL_EVENT_POLL_SENTINEL ifTrue: [^self].
			currentEvent windowID
				ifNotNil: 
					[:aWindowId |
					| destination |
					destination := visualObjectInspectors at: aWindowId ifAbsent: [nil].
					destination ifNotNil: [self dispatchEvent: currentEvent to: destination]]]
		ifNil: [^self]]
			repeat!

pushCloseEvent: anInteger
	self pushEvent: (SDL_WindowEvent new
				type: SDL_WINDOWEVENT;
				windowID: anInteger;
				event: SDL_WINDOWEVENT_CLOSE)!

pushEvent: aSDLEvent
	library pushEvent_event: aSDLEvent!

pushRenderEvent: anInteger
	self pushEvent: (SDL_UserEvent new
				type: SDL_USEREVENT;
				windowID: anInteger;
				code: renderEventCode)!

quit
	self
		closeAll;
		stopMainProcess!

registerRenderEvent
	renderEventCode := library registerEvents_numevents: 1!

removeWindow: anInteger
	visualObjectInspectors removeKey: anInteger ifAbsent: [nil].
	visualObjectInspectors isEmpty ifTrue: [self stopMainProcess]!

render: anInteger
	self pushEvent: (SDL_UserEvent new
				type: SDL_USEREVENT;
				windowID: anInteger;
				code: renderEventCode)!

setHints
	library
		setHint_name: 'SDL_MOUSE_FOCUS_CLICKTHROUGH' value: '1';
		setHint_name: 'SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP' value: '1'!

stopMainProcess
	main ifNotNil: [
			[main terminate.
			main := nil] postToInputQueue]!

updateWindows
	visualObjectInspectors
		keysAndValuesDo: [:anInteger :aVisualObjectInspector | aVisualObjectInspector update]!

visualObjectInspectors
	^visualObjectInspectors!

waitEvent
	| event |
	event := SDL_Event new.
	library waitEvent_event: event.
	^event!

waitEvent: anInteger
	| event |
	event := SDL_Event new.
	library waitEventTimeout_event: event timeout: anInteger.
	^event! !
!SDLInputState categoriesForMethods!
closeAll!public! !
createWindow:extent:for:!public! !
dispatchEvent:to:!public! !
ensureMainRunning!private! !
finalize!public! !
forkMain!public! !
getDisplayExtent!public! !
initialize!public! !
initialize:!public! !
initializeAll!public! !
initializeFrom:!public! !
initializeVideo!public! !
keepAlive!public! !
onDefocus!public! !
onExit!public! !
onFocus!public! !
pollEvent!public! !
pumpMessages!public! !
pushCloseEvent:!public! !
pushEvent:!public! !
pushRenderEvent:!public! !
quit!public! !
registerRenderEvent!public! !
removeWindow:!public! !
render:!public! !
setHints!public! !
stopMainProcess!public! !
updateWindows!public! !
visualObjectInspectors!public! !
waitEvent!public! !
waitEvent:!public! !
!

!SDLInputState class methodsFor!

current
	^Singleton!

initialize
	"self initialize"

	SessionManager current
		when: #sessionStarted
			send: #onStartup
			to: self;
		when: #sessionStopped
			send: #onShutdown
			to: self!

new
	Singleton ifNil: [Singleton := super new initialize].
	^Singleton!

newFromOld: anInputState
	^(self new)
		initializeFrom: anInputState;
		yourself!

onShutdown
	Singleton quit!

onStartup
	Singleton initialize!

restart
	self
		onShutdown;
		onStartup! !
!SDLInputState class categoriesForMethods!
current!public! !
initialize!public! !
new!public! !
newFromOld:!public! !
onShutdown!public! !
onStartup!public! !
restart!public! !
!

PriorityQueue guid: (GUID fromString: '{928c2e51-0158-4483-9b47-12f3a526fe5d}')!
PriorityQueue comment: ''!
!PriorityQueue categoriesForClass!Kernel-Objects! !
!PriorityQueue methodsFor!

dequeue
	^(self at: self highestPriorityLevel) removeLast!

enqueue: anObject
	self enqueue: anObject priority: 0!

enqueue: anObject priority: anInteger
	| priorityList |
	priorityList := self at: anInteger ifAbsent: [self at: anInteger put: OrderedCollection new].
	priorityList add: anObject!

flush
	self removeAll!

flushWith: aBlock
	self flushWith: aBlock sortBlock:  [ :a :b | a > b ]!

flushWith: aBlock sortBlock: aSortBlock
	| priorityLevels |
	priorityLevels := self keys asOrderedCollection sortUsing: (DefaultSortAlgorithm newSortBlock: aSortBlock).
	priorityLevels do: [:anInteger | (self at: anInteger) do: [:anItem | aBlock value: anItem]].
	self removeAll!

highestPriorityLevel
	^(self keys asOrderedCollection sortUsing: (DefaultSortAlgorithm sortBlock: [:a :b | a > b]))
		ifNotNil: [:priorityLevels | priorityLevels first]!

reverseFlushWith: aBlock
	self flushWith: aBlock sortBlock:  [ :a :b | a < b ]! !
!PriorityQueue categoriesForMethods!
dequeue!public! !
enqueue:!public! !
enqueue:priority:!public! !
flush!public! !
flushWith:!public! !
flushWith:sortBlock:!public! !
highestPriorityLevel!public! !
reverseFlushWith:!public! !
!

SDL2ImageLibrary guid: (GUID fromString: '{7d9b9d29-b596-4c61-82bb-1c282f129e54}')!
SDL2ImageLibrary comment: ''!
!SDL2ImageLibrary categoriesForClass!Unclassified! !
!SDL2ImageLibrary methodsFor!

init_flags: flags
	<cdecl: sdword IMG_Init sdword>
	^self invalidCall: _failureCode!

load_file: file
	<cdecl: SDL_Surface* IMG_Load lpstr>
	^self invalidCall: _failureCode!

quit
	<cdecl: void IMG_Quit>
	^self invalidCall: _failureCode!

saveJPG_surface: surface file: file quality: quality
	<cdecl: sdword IMG_SaveJPG SDL_Surface* lpstr sdword>
	^self invalidCall: _failureCode!

savePNG_surface: surface file: file
	<cdecl: sdword IMG_SavePNG SDL_Surface* lpstr>
	^self invalidCall: _failureCode! !
!SDL2ImageLibrary categoriesForMethods!
init_flags:!public! !
load_file:!public! !
quit!public! !
saveJPG_surface:file:quality:!public! !
savePNG_surface:file:!public! !
!

!SDL2ImageLibrary class methodsFor!

fileName
	^'SDL2_image'! !
!SDL2ImageLibrary class categoriesForMethods!
fileName!public! !
!

SDL2Library guid: (GUID fromString: '{16981872-2beb-4d7e-bf21-46c6da05595a}')!
SDL2Library comment: ''!
!SDL2Library categoriesForClass!External-Libraries! !
!SDL2Library methodsFor!

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

createRGBSurface_flags: flags width: width height: height depth: depth rMask: rMask gMask: gMask bMask: bMask aMask: aMask
	<cdecl: SDL_Surface* SDL_CreateRGBSurface dword sdword sdword sdword dword dword dword dword>
	^self invalidCall: _failureCode!

createSoftwareRenderer_surface: surface
	<cdecl: SDL_Renderer* SDL_CreateSoftwareRenderer SDL_Surface*>
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

createWindow_title: title x: x y: y w: w h: h flags: flags
	<cdecl: SDL_Window* SDL_CreateWindow lpstr sdword sdword sdword sdword dword>
	^self invalidCall: _failureCode!

createWindowAndRenderer_width: width height: height windowFlags: windowFlags window: window renderer: renderer
	<cdecl: sdword SDL_CreateWindowAndRenderer sdword sdword dword SDL_Window* SDL_Renderer*>
	^self invalidCall: _failureCode!

createWindowFrom_data: data
	<cdecl: SDL_Window* SDL_CreateWindowFrom lpvoid>
	^self invalidCall: _failureCode!

delEventWatch_filter: filter userdata: userdata
	<cdecl: void SDL_DelEventWatch SDL_EventFilter lpvoid>
	^self invalidCall: _failureCode!

destroyRenderer_renderer: renderer
	<cdecl: void SDL_DestroyRenderer SDL_Renderer*>
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

flashWindow_window: window operation: operation
	<cdecl: sdword SDL_DestroyWindow SDL_Window* dword>
	^self invalidCall: _failureCode!

freeCursor_cursor: cursor
	<cdecl: void SDL_FreeCursor SDL_Cursor*>
	^self invalidCall: _failureCode!

freeSurface_surface: surface
	<cdecl: void SDL_FreeSurface SDL_Surface*>
	^self invalidCall: _failureCode!

getCurrentDisplayMode_displayIndex: displayIndex mode: mode
	<cdecl: sdword SDL_GetCurrentDisplayMode sdword SDL_DisplayMode*>
	^self invalidCall: _failureCode!

getCurrentDisplayMode_displayIndex: displayIndex mode: mode closest: closest
	<cdecl: SDL_DisplayMode* SDL_GetClosestDisplayMode sdword SDL_DisplayMode* SDL_DisplayMode*>
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

getPointDisplayIndex_point: point
	<cdecl: sdword SDL_GetPointDisplayIndex SDL_Point*>
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

getWindowDisplayMode_window: window mode: mode
	<cdecl: sdword SDL_GetWindowDisplayMode SDL_Window* SDL_DisplayMode*>
	^self invalidCall: _failureCode!

getWindowFlags_window: window
	<cdecl: dword SDL_GetWindowFlags SDL_Window*>
	^self invalidCall: _failureCode!

getWindowFromID_id: id
	<cdecl: SDL_Window* SDL_GetWindowFromID dword>
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

getWindowSize_window: window w: w h: h
	<cdecl: void SDL_GetWindowSize SDL_Window* sdword* sdword*>
	^self invalidCall: _failureCode!

getWindowSurface_window: window
	<cdecl: SDL_Surface* SDL_GetWindowSurface SDL_Window*>
	^self invalidCall: _failureCode!

getWindowTitle_window: window
	<cdecl: lpstr SDL_SetWindowTitle SDL_Window*>
	^self invalidCall: _failureCode!

getWindowWMInfo_window: window info: info
	<cdecl: bool SDL_GetWindowWMInfo SDL_Window* SDL_SysWMinfo*>
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

queryTexture_renderer: renderer format: format access: access w: w h: h
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

renderCopy_renderer: renderer texture: texture srcrect: srcrect dstrect: dstrect
	<cdecl: sdword SDL_RenderCopy SDL_Renderer* SDL_Texture* SDL_Rect* SDL_Rect*>
	^self invalidCall: _failureCode!

renderDrawLine_renderer: renderer x1: x1 y1: y1 x2: x2 y2: y2
	<cdecl: sdword SDL_RenderDrawLine SDL_Renderer* sdword  sdword sdword sdword>
	^self invalidCall: _failureCode!

renderDrawRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_RenderDrawRect SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

renderFillRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_RenderFillRect SDL_Renderer* SDL_Rect*>
	^self invalidCall: _failureCode!

renderGeometry_renderer: renderer texture: texture vertices: vertices numVertices: numVertices indices: indices numIndices: numIndices
	<cdecl: sdword SDL_RenderGeometry SDL_Renderer* SDL_Texture* SDL_Vertex* sdword sdword* sdword>
	^self invalidCall: _failureCode!

renderGetWindow_renderer: renderer
	<cdecl: SDL_Window* SDL_RenderGetWindow SDL_Renderer*>
	^self invalidCall: _failureCode!

renderPresent_renderer: renderer
	<cdecl: sdword SDL_RenderPresent SDL_Renderer*>
	^self invalidCall: _failureCode!

renderReadPixels_renderer: renderer rect: rect format: format pixels: pixels pitch: pitch
	<cdecl: sdword SDL_RenderReadPixels SDL_Renderer* SDL_Rect* dword void* sdword>
	^self invalidCall: _failureCode!

renderSetClipRect_renderer: renderer rect: rect
	<cdecl: sdword SDL_RenderSetClipRect SDL_Renderer* SDL_Rect*>
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

setWindowDisplayMode_window: window mode: mode
	<cdecl: sdword SDL_SetWindowDisplayMode SDL_Window* SDL_DisplayMode*>
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
!SDL2Library categoriesForMethods!
addEventWatch_filter:userdata:!events!public! !
blitSurface_src:srcrect:dst:dstrect:!public!render! !
createCursor_data:mask:w:h:hotX:hotY:!events!public! !
createRenderer_window:index:flags:!public!render! !
createRGBSurface_flags:width:height:depth:rMask:gMask:bMask:aMask:!public!render! !
createSoftwareRenderer_surface:!public!render! !
createSystemCursor_id:!events!public! !
createTexture_renderer:format:access:w:h:!public!render! !
createTextureFromSurface_renderer:surface:!public!render! !
createWindow_title:x:y:w:h:flags:!public!video! !
createWindowAndRenderer_width:height:windowFlags:window:renderer:!public!render! !
createWindowFrom_data:!public!video! !
delEventWatch_filter:userdata:!events!public! !
destroyRenderer_renderer:!public!render! !
destroyTexture_texture:!public!video! !
destroyWindow_window:!public!video! !
displayOrientation_displayIndex:!public!video! !
flashWindow_window:operation:!public!video! !
freeCursor_cursor:!public! !
freeSurface_surface:!public! !
getCurrentDisplayMode_displayIndex:mode:!public!video! !
getCurrentDisplayMode_displayIndex:mode:closest:!public!video! !
getCurrentVideoDriver!public!video! !
getDesktopDisplayMode_displayIndex:mode:!public!video! !
getDisplayBounds_displayIndex:rect:!public!video! !
getDisplayDPI_displayIndex:ddpi:hdpi:vdpi:!public!video! !
getDisplayMode_displayIndex:modeIndex:mode:!public!video! !
getDisplayName_displayIndex:!public!video! !
getDisplayUsableBounds_displayIndex:rect:!public!video! !
getError!error!public! !
getKeyFromScancode_scancode:!public!video! !
getNumDisplayModes_displayIndex:!public!video! !
getNumVideoDisplays!public!video! !
getNumVideoDrivers!public!video! !
getPointDisplayIndex_point:!public!video! !
getRectDisplayIndex_rect:!public!video! !
getRenderClipRect_renderer:rect:!public!render! !
getRenderer_window:!public!render! !
getRendererInfo_renderer:info:!public!render! !
getTextureBlendMode_texture:blendMode:!public!render! !
getTicks!public!video! !
getTicks64!public!video! !
getVersion_ver:!public! !
getVideoDriver_index:!public!video! !
getWindowBordersSize_window:top:left:bottom:right:!public!video! !
getWindowData_window:name:!public!video! !
getWindowDisplayIndex_window:!public!video! !
getWindowDisplayMode_window:mode:!public!video! !
getWindowFlags_window:!public!video! !
getWindowFromID_id:!public!video! !
getWindowICCProfile_window:size:!public!video! !
getWindowID_window:!public!video! !
getWindowKeyboardGrab_window:!public!video! !
getWindowPixelFormat_window:!public!video! !
getWindowPosition_window:x:y:!public!video! !
getWindowSize_window:w:h:!public!video! !
getWindowSurface_window:!public!video! !
getWindowTitle_window:!public!video! !
getWindowWMInfo_window:info:!public!video! !
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
queryTexture_renderer:format:access:w:h:!public!render! !
quit!init!public! !
quitSubSystem_flags:!init!public! !
raiseWindow_window:!public!video! !
registerEvents_numevents:!events!public! !
renderClear_renderer:!public!render! !
renderClipEnabled_renderer:!public!render! !
renderCopy_renderer:texture:srcrect:dstrect:!public! !
renderDrawLine_renderer:x1:y1:x2:y2:!public!render! !
renderDrawRect_renderer:rect:!public!render! !
renderFillRect_renderer:rect:!public!render! !
renderGeometry_renderer:texture:vertices:numVertices:indices:numIndices:!public!render! !
renderGetWindow_renderer:!public!render! !
renderPresent_renderer:!public!render! !
renderReadPixels_renderer:rect:format:pixels:pitch:!public!render! !
renderSetClipRect_renderer:rect:!public!render! !
restoreWindow_window:!public!video! !
setCursor_cursor:!events!public! !
setEventFilter_filter:userdata:!events!public! !
setHint_name:value:!public! !
setRenderDrawBlendMode_renderer:blendMode:!public!render! !
setRenderDrawColor_renderer:r:g:b:a:!public!render! !
setTextureBlendMode_texture:blendMode:!public!render! !
setWindowData_window:name:userdata:!public!video! !
setWindowDisplayMode_window:mode:!public!video! !
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

!SDL2Library class methodsFor!

fileName
	^'SDL2'! !
!SDL2Library class categoriesForMethods!
fileName!public! !
!

SDL2TTFLibrary guid: (GUID fromString: '{787363dd-c90f-4e17-b424-d72a67a292e1}')!
SDL2TTFLibrary comment: ''!
!SDL2TTFLibrary categoriesForClass!External-Libraries! !
!SDL2TTFLibrary methodsFor!

closeFont_font: font
	<cdecl: void TTF_CloseFont TTF_Font*>
	^self invalidCall: _failureCode!

getError
	<cdecl: lpstr TTF_GetError>
	^self invalidCall: _failureCode!

getFontKerningSizeGlyphs32_font: font previousCh: previousCh ch: ch
	<cdecl: sdword TTF_GetFontKerningSizeGlyphs32 TTF_Font* dword dword>
	^self invalidCall: _failureCode!

init
	<cdecl: sdword TTF_Init>
	^self invalidCall: _failureCode!

measureText_font: font text: text measureWidth: measureWidth extent: extent count: count
	<cdecl: sdword TTF_MeasureText TTF_Font* lpstr sdword sdword* sdword*>
	^self invalidCall: _failureCode!

measureUTF8_font: font text: text measureWidth: measureWidth extent: extent count: count
	<cdecl: sdword TTF_MeasureUTF8 TTF_Font* lpstr sdword sdword* sdword*>
	^self invalidCall: _failureCode!

openFont_file: file ptsize: ptsize
	<cdecl: TTF_Font* TTF_OpenFont lpstr sdword>
	^self invalidCall: _failureCode!

openFontIndex_file: file ptsize: ptsize index: index
	<cdecl: TTF_Font* TTF_OpenFontIndex lpstr sdword sdword>
	^self invalidCall: _failureCode!

quit
	<cdecl: void TTF_Quit>
	^self invalidCall: _failureCode!

renderGlyph32Blended_font: font ch: ch fg: fg
	<cdecl: SDL_Surface* TTF_RenderGlyph32_Blended TTF_Font* dword SDL_Color>
	^self invalidCall: _failureCode!

renderUTF8Blended_font: font text: text fg: fg
	<cdecl: SDL_Surface* TTF_RenderUTF8_Blended TTF_Font* lpstr SDL_Color>
	^self invalidCall: _failureCode!

renderUTF8BlendedWrapped_font: font text: text fg: fg wrapLength: wrapLength
	<cdecl: SDL_Surface* TTF_RenderUTF8_Blended_Wrapped TTF_Font* lpstr SDL_Color dword>
	^self invalidCall: _failureCode!

renderUTF8LCD_font: font text: text fg: fg bg: bg
	<cdecl: SDL_Surface* TTF_RenderUTF8_LCD TTF_Font* lpstr SDL_Color SDL_Color>
	^self invalidCall: _failureCode!

renderUTF8LCDWrapped_font: font text: text fg: fg bg: bg wrapLength: wrapLength
	<cdecl: SDL_Surface* TTF_RenderUTF8_LCD_Wrapped TTF_Font* lpstr SDL_Color SDL_Color dword>
	^self invalidCall: _failureCode!

renderUTF8Shaded_font: font text: text fg: fg bg: bg
	<cdecl: SDL_Surface* TTF_RenderUTF8_Shaded TTF_Font* lpstr SDL_Color SDL_Color>
	^self invalidCall: _failureCode!

renderUTF8ShadedWrapped_font: font text: text fg: fg bg: bg wrapLength: wrapLength
	<cdecl: SDL_Surface* TTF_RenderUTF8_Shaded_Wrapped TTF_Font* lpstr SDL_Color SDL_Color dword>
	^self invalidCall: _failureCode!

renderUTF8Solid_font: font text: text color: color
	<cdecl: SDL_Surface* TTF_RenderUTF8_Solid TTF_Font* lpstr SDL_Color>
	^self invalidCall: _failureCode!

renderUTF8SolidWrapped_font: font text: text color: color wrapLength: wrapLength
	<cdecl: SDL_Surface* TTF_RenderUTF8_Solid_Wrapped TTF_Font* lpstr SDL_Color dword>
	^self invalidCall: _failureCode!

setFontSDF_font: font onOff: onOff
	<cdecl: sdword TTF_SetFontSDF TTF_Font* bool>
	^self invalidCall: _failureCode!

setFontSize_font: font ptsize: ptsize
	<cdecl: sdword TTF_SetFontSize TTF_Font* sdword>
	^self invalidCall: _failureCode!

setFontStyle_font: font style: style
	<cdecl: void TTF_SetFontStyle TTF_Font* sdword>
	^self invalidCall: _failureCode!

setFontWrappedAlign_font: font align: align
	<cdecl: void TTF_SetFontWrappedAlign TTF_Font* sdword>
	^self invalidCall: _failureCode!

sizeText_font: font text: text w: w h: h
	<cdecl: sdword TTF_SizeText TTF_Font* lpstr sdword* sdword*>
	^self invalidCall: _failureCode!

sizeUTF8_font: font text: text w: w h: h
	<cdecl: sdword TTF_SizeUTF8 TTF_Font* lpstr sdword* sdword*>
	^self invalidCall: _failureCode!

wasInit
	<cdecl: sdword TTF_WasInit>
	^self invalidCall: _failureCode! !
!SDL2TTFLibrary categoriesForMethods!
closeFont_font:!public! !
getError!public! !
getFontKerningSizeGlyphs32_font:previousCh:ch:!public! !
init!public! !
measureText_font:text:measureWidth:extent:count:!public! !
measureUTF8_font:text:measureWidth:extent:count:!public! !
openFont_file:ptsize:!public! !
openFontIndex_file:ptsize:index:!public! !
quit!public! !
renderGlyph32Blended_font:ch:fg:!public! !
renderUTF8Blended_font:text:fg:!public! !
renderUTF8BlendedWrapped_font:text:fg:wrapLength:!public! !
renderUTF8LCD_font:text:fg:bg:!public! !
renderUTF8LCDWrapped_font:text:fg:bg:wrapLength:!public! !
renderUTF8Shaded_font:text:fg:bg:!public! !
renderUTF8ShadedWrapped_font:text:fg:bg:wrapLength:!public! !
renderUTF8Solid_font:text:color:!public! !
renderUTF8SolidWrapped_font:text:color:wrapLength:!public! !
setFontSDF_font:onOff:!public! !
setFontSize_font:ptsize:!public! !
setFontStyle_font:style:!public! !
setFontWrappedAlign_font:align:!public! !
sizeText_font:text:w:h:!public! !
sizeUTF8_font:text:w:h:!public! !
wasInit!public! !
!

!SDL2TTFLibrary class methodsFor!

fileName
	^'SDL2_ttf'! !
!SDL2TTFLibrary class categoriesForMethods!
fileName!public! !
!

SDL_BlitMap guid: (GUID fromString: '{542e5de8-6f78-4126-bfba-5fad4356fa6f}')!
SDL_BlitMap comment: ''!
!SDL_BlitMap categoriesForClass!External-Data-Structured! !
SDL_Color guid: (GUID fromString: '{f3a18d8d-6963-4791-80b9-ca29582c6204}')!
SDL_Color addClassConstant: '_OffsetOf_a' value: 16r3!
SDL_Color addClassConstant: '_OffsetOf_b' value: 16r2!
SDL_Color addClassConstant: '_OffsetOf_g' value: 16r1!
SDL_Color addClassConstant: '_OffsetOf_r' value: 16r0!
SDL_Color comment: ''!
!SDL_Color categoriesForClass!External-Data-Structured! !
!SDL_Color methodsFor!

a
	"Answer the <Integer> value of the receiver's 'a' field."

	^bytes byteAtOffset: _OffsetOf_a!

a: anInteger
	"Set the receiver's 'a' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_a put: anInteger!

b
	"Answer the <Integer> value of the receiver's 'b' field."

	^bytes byteAtOffset: _OffsetOf_b!

b: anInteger
	"Set the receiver's 'b' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_b put: anInteger!

g
	"Answer the <Integer> value of the receiver's 'g' field."

	^bytes byteAtOffset: _OffsetOf_g!

g: anInteger
	"Set the receiver's 'g' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_g put: anInteger!

r
	"Answer the <Integer> value of the receiver's 'r' field."

	^bytes byteAtOffset: _OffsetOf_r!

r: anInteger
	"Set the receiver's 'r' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_r put: anInteger! !
!SDL_Color categoriesForMethods!
a!**compiled accessors**!public! !
a:!**compiled accessors**!public! !
b!**compiled accessors**!public! !
b:!**compiled accessors**!public! !
g!**compiled accessors**!public! !
g:!**compiled accessors**!public! !
r!**compiled accessors**!public! !
r:!**compiled accessors**!public! !
!

!SDL_Color class methodsFor!

defineFields
	"SDL_Color compileDefinition
	typedef struct SDL_Color
	{
	    Uint8 r;
	    Uint8 g;
	    Uint8 b;
	    Uint8 a;
	} SDL_Color;"

	self
		defineField: #r type: BYTEField new;
		defineField: #g type: BYTEField new;
		defineField: #b type: BYTEField new;
		defineField: #a type: BYTEField new!

getFieldNames
	^#(#r #g #b #a)! !
!SDL_Color class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_DisplayMode guid: (GUID fromString: '{568a4a3b-46ed-444c-a329-f08d8efd3191}')!
SDL_DisplayMode addClassConstant: '_OffsetOf_driverdata' value: 16r10!
SDL_DisplayMode addClassConstant: '_OffsetOf_format' value: 16r0!
SDL_DisplayMode addClassConstant: '_OffsetOf_h' value: 16r8!
SDL_DisplayMode addClassConstant: '_OffsetOf_refresh_rate' value: 16rC!
SDL_DisplayMode addClassConstant: '_OffsetOf_w' value: 16r4!
SDL_DisplayMode comment: ''!
!SDL_DisplayMode categoriesForClass!External-Data-Structured! !
!SDL_DisplayMode methodsFor!

driverdata
	"Answer the <ExternalAddress> value of the receiver's 'driverdata' field."

	^(bytes uintPtrAtOffset: _OffsetOf_driverdata) asExternalAddress!

driverdata: anExternalAddress
	"Set the receiver's 'driverdata' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_driverdata put: anExternalAddress!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

h: anInteger
	"Set the receiver's 'h' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_h put: anInteger!

refresh_rate
	"Answer the <Integer> value of the receiver's 'refresh_rate' field."

	^bytes sdwordAtOffset: _OffsetOf_refresh_rate!

refresh_rate: anInteger
	"Set the receiver's 'refresh_rate' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refresh_rate put: anInteger!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w!

w: anInteger
	"Set the receiver's 'w' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_w put: anInteger! !
!SDL_DisplayMode categoriesForMethods!
driverdata!**compiled accessors**!public! !
driverdata:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
refresh_rate!**compiled accessors**!public! !
refresh_rate:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
!

!SDL_DisplayMode class methodsFor!

defineFields
	"SDL_DisplayMode compileDefinition 

	typedef struct SDL_DisplayMode {
	    Uint32 format;         // Pixel format of the display mode
	    int    w;              // Width of the display mode in pixels
	    int    h;              // Height of the display mode in pixels
	    int    refresh_rate;   // Refresh rate of the display mode in Hz
	    void*  driverdata;     // Driver-specific data, ignore this
	} SDL_DisplayMode;"

	self
		defineField: #format type: DWORDField new;
		defineField: #w type: SDWORDField new;
		defineField: #h type: SDWORDField new;
		defineField: #refresh_rate type: SDWORDField new;
		defineField: #driverdata type: LPVOIDField new!

getFieldNames
	^#(#format #w #h #refresh_rate #driverdata)! !
!SDL_DisplayMode class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_Event guid: (GUID fromString: '{22d4884c-5d9e-40fd-a7e0-f86f85f39969}')!
SDL_Event addClassConstant: '_OffsetOf_padding' value: 16r2C!
SDL_Event addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_button' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_common' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_display' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_edit' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_editExt' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_key' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_motion' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_quit' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_syswm' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_text' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_user' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_wheel' value: 16r0!
SDL_Event addClassConstant: '_OffsetOf_union_window' value: 16r0!
SDL_Event comment: ''!
!SDL_Event categoriesForClass!External-Data-Structured! !
!SDL_Event methodsFor!

asKeyboardEvent
	^SDL_KeyboardEvent fromAddress: bytes yourAddress!

asMouseButtonEvent
	^SDL_MouseButtonEvent fromAddress: bytes yourAddress!

asMouseMotionEvent
	^SDL_MouseMotionEvent fromAddress: bytes yourAddress!

asMouseWheelEvent
	^SDL_MouseWheelEvent fromAddress: bytes yourAddress!

asTextInputEvent
	^SDL_TextInputEvent fromAddress: bytes yourAddress!

asUserEvent
	^SDL_UserEvent fromAddress: bytes yourAddress!

asWindowEvent
	^SDL_WindowEvent fromAddress: bytes yourAddress!

convertToSubclass
	| type |
	type := self type.
	type = SDL_KEYDOWN ifTrue: [^self asKeyboardEvent].
	type = SDL_KEYUP ifTrue: [^self asKeyboardEvent].
	type = SDL_MOUSEBUTTONDOWN ifTrue: [^self asMouseButtonEvent].
	type = SDL_MOUSEBUTTONUP ifTrue: [^self asMouseButtonEvent].
	type = SDL_MOUSEMOTION ifTrue: [^self asMouseMotionEvent].
	type = SDL_MOUSEWHEEL ifTrue: [^self asMouseWheelEvent].
	type = SDL_TEXTINPUT ifTrue: [^self asTextInputEvent ].
	type = SDL_USEREVENT ifTrue: [^self asUserEvent].
	type = SDL_WINDOWEVENT ifTrue: [^self asWindowEvent].
	^self!

hasAssociatedWindow
	^{SDL_WINDOWEVENT.
		SDL_KEYDOWN.
		SDL_KEYUP.
		SDL_TEXTEDITING.
		SDL_TEXTINPUT.
		SDL_MOUSEMOTION.
		SDL_MOUSEBUTTONDOWN.
		SDL_MOUSEBUTTONUP.
		SDL_MOUSEWHEEL.
		SDL_DROPFILE.
		SDL_USEREVENT} includes: self type!

initialize
	super initialize.
	isHandled := false!

isHandled
	^isHandled!

isHandled: aBoolean
	isHandled := aBoolean!

padding
	"Answer the <BYTE> value of the receiver's 'padding' field."

	^BYTE fromAddress: bytes yourAddress + _OffsetOf_padding length: 56!

padding: aBYTE
	"Set the receiver's 'padding' field to the value of the argument, aBYTE"

	| size |
	size := aBYTE byteSize min: ##(56 * BYTE elementSize).
	aBYTE
		replaceBytesOf: bytes
		from: ##(_OffsetOf_padding + 1)
		to: _OffsetOf_padding + size
		startingAt: 1!

printOn: aStream
	aStream nextPutAll: self class name!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes dwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_type put: anInteger!

union_button
	"Answer the <SDL_MouseButtonEvent> value of the receiver's 'union_button' field."

	^SDL_MouseButtonEvent fromAddress: bytes yourAddress!

union_button: aSDL_MouseButtonEvent
	"Set the receiver's 'union_button' field to the value of the argument, aSDL_MouseButtonEvent"

	aSDL_MouseButtonEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_button + 1)
		to: ##(_OffsetOf_union_button + SDL_MouseButtonEvent basicByteSize)
		startingAt: 1!

union_common
	"Answer the <SDL_CommonEvent> value of the receiver's 'union_common' field."

	^SDL_CommonEvent fromAddress: bytes yourAddress!

union_common: aSDL_CommonEvent
	"Set the receiver's 'union_common' field to the value of the argument, aSDL_CommonEvent"

	aSDL_CommonEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_common + 1)
		to: ##(_OffsetOf_union_common + SDL_CommonEvent basicByteSize)
		startingAt: 1!

union_display
	"Answer the <SDL_DisplayEvent> value of the receiver's 'union_display' field."

	^SDL_DisplayEvent fromAddress: bytes yourAddress!

union_display: aSDL_DisplayEvent
	"Set the receiver's 'union_display' field to the value of the argument, aSDL_DisplayEvent"

	aSDL_DisplayEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_display + 1)
		to: ##(_OffsetOf_union_display + SDL_DisplayEvent basicByteSize)
		startingAt: 1!

union_edit
	"Answer the <SDL_TextEditingEvent> value of the receiver's 'union_edit' field."

	^SDL_TextEditingEvent fromAddress: bytes yourAddress!

union_edit: aSDL_TextEditingEvent
	"Set the receiver's 'union_edit' field to the value of the argument, aSDL_TextEditingEvent"

	aSDL_TextEditingEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_edit + 1)
		to: ##(_OffsetOf_union_edit + SDL_TextEditingEvent basicByteSize)
		startingAt: 1!

union_editExt
	"Answer the <SDL_TextEditingExtEvent> value of the receiver's 'union_editExt' field."

	^SDL_TextEditingExtEvent fromAddress: bytes yourAddress!

union_editExt: aSDL_TextEditingExtEvent
	"Set the receiver's 'union_editExt' field to the value of the argument, aSDL_TextEditingExtEvent"

	aSDL_TextEditingExtEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_editExt + 1)
		to: ##(_OffsetOf_union_editExt + SDL_TextEditingExtEvent basicByteSize)
		startingAt: 1!

union_key
	"Answer the <SDL_KeyboardEvent> value of the receiver's 'union_key' field."

	^SDL_KeyboardEvent fromAddress: bytes yourAddress!

union_key: aSDL_KeyboardEvent
	"Set the receiver's 'union_key' field to the value of the argument, aSDL_KeyboardEvent"

	aSDL_KeyboardEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_key + 1)
		to: ##(_OffsetOf_union_key + SDL_KeyboardEvent basicByteSize)
		startingAt: 1!

union_motion
	"Answer the <SDL_MouseMotionEvent> value of the receiver's 'union_motion' field."

	^SDL_MouseMotionEvent fromAddress: bytes yourAddress!

union_motion: aSDL_MouseMotionEvent
	"Set the receiver's 'union_motion' field to the value of the argument, aSDL_MouseMotionEvent"

	aSDL_MouseMotionEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_motion + 1)
		to: ##(_OffsetOf_union_motion + SDL_MouseMotionEvent basicByteSize)
		startingAt: 1!

union_quit
	"Answer the <SDL_QuitEvent> value of the receiver's 'union_quit' field."

	^SDL_QuitEvent fromAddress: bytes yourAddress!

union_quit: aSDL_QuitEvent
	"Set the receiver's 'union_quit' field to the value of the argument, aSDL_QuitEvent"

	aSDL_QuitEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_quit + 1)
		to: ##(_OffsetOf_union_quit + SDL_QuitEvent basicByteSize)
		startingAt: 1!

union_syswm
	"Answer the <SDL_SysWMEvent> value of the receiver's 'union_syswm' field."

	^SDL_SysWMEvent fromAddress: bytes yourAddress!

union_syswm: aSDL_SysWMEvent
	"Set the receiver's 'union_syswm' field to the value of the argument, aSDL_SysWMEvent"

	aSDL_SysWMEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_syswm + 1)
		to: ##(_OffsetOf_union_syswm + SDL_SysWMEvent basicByteSize)
		startingAt: 1!

union_text
	"Answer the <SDL_TextInputEvent> value of the receiver's 'union_text' field."

	^SDL_TextInputEvent fromAddress: bytes yourAddress!

union_text: aSDL_TextInputEvent
	"Set the receiver's 'union_text' field to the value of the argument, aSDL_TextInputEvent"

	aSDL_TextInputEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_text + 1)
		to: ##(_OffsetOf_union_text + SDL_TextInputEvent basicByteSize)
		startingAt: 1!

union_user
	"Answer the <SDL_UserEvent> value of the receiver's 'union_user' field."

	^SDL_UserEvent fromAddress: bytes yourAddress!

union_user: aSDL_UserEvent
	"Set the receiver's 'union_user' field to the value of the argument, aSDL_UserEvent"

	aSDL_UserEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_user + 1)
		to: ##(_OffsetOf_union_user + SDL_UserEvent basicByteSize)
		startingAt: 1!

union_wheel
	"Answer the <SDL_MouseWheelEvent> value of the receiver's 'union_wheel' field."

	^SDL_MouseWheelEvent fromAddress: bytes yourAddress!

union_wheel: aSDL_MouseWheelEvent
	"Set the receiver's 'union_wheel' field to the value of the argument, aSDL_MouseWheelEvent"

	aSDL_MouseWheelEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_wheel + 1)
		to: ##(_OffsetOf_union_wheel + SDL_MouseWheelEvent basicByteSize)
		startingAt: 1!

union_window
	"Answer the <SDL_WindowEvent> value of the receiver's 'union_window' field."

	^SDL_WindowEvent fromAddress: bytes yourAddress!

union_window: aSDL_WindowEvent
	"Set the receiver's 'union_window' field to the value of the argument, aSDL_WindowEvent"

	aSDL_WindowEvent
		replaceBytesOf: bytes
		from: ##(_OffsetOf_union_window + 1)
		to: ##(_OffsetOf_union_window + SDL_WindowEvent basicByteSize)
		startingAt: 1!

windowID
	^self hasAssociatedWindow ifTrue: [bytes dwordAtOffset: 8] ifFalse: [nil]! !
!SDL_Event categoriesForMethods!
asKeyboardEvent!public! !
asMouseButtonEvent!public! !
asMouseMotionEvent!public! !
asMouseWheelEvent!public! !
asTextInputEvent!public! !
asUserEvent!public! !
asWindowEvent!public! !
convertToSubclass!public! !
hasAssociatedWindow!public! !
initialize!public! !
isHandled!public! !
isHandled:!public! !
padding!**compiled accessors**!public! !
padding:!**compiled accessors**!public! !
printOn:!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
union_button!**compiled accessors**!public! !
union_button:!**compiled accessors**!public! !
union_common!**compiled accessors**!public! !
union_common:!**compiled accessors**!public! !
union_display!**compiled accessors**!public! !
union_display:!**compiled accessors**!public! !
union_edit!**compiled accessors**!public! !
union_edit:!**compiled accessors**!public! !
union_editExt!**compiled accessors**!public! !
union_editExt:!**compiled accessors**!public! !
union_key!**compiled accessors**!public! !
union_key:!**compiled accessors**!public! !
union_motion!**compiled accessors**!public! !
union_motion:!**compiled accessors**!public! !
union_quit!**compiled accessors**!public! !
union_quit:!**compiled accessors**!public! !
union_syswm!**compiled accessors**!public! !
union_syswm:!**compiled accessors**!public! !
union_text!**compiled accessors**!public! !
union_text:!**compiled accessors**!public! !
union_user!**compiled accessors**!public! !
union_user:!**compiled accessors**!public! !
union_wheel!**compiled accessors**!public! !
union_wheel:!**compiled accessors**!public! !
union_window!**compiled accessors**!public! !
union_window:!**compiled accessors**!public! !
windowID!public! !
!

!SDL_Event class methodsFor!

defineFields
	"SDL_Event compileDefinition

	typedef union SDL_Event
	{
	    Uint32 type;                            /**< Event type, shared with all events */
	    SDL_CommonEvent common;                 /**< Common event data */
	    SDL_DisplayEvent display;               /**< Display event data */
	    SDL_WindowEvent window;                 /**< Window event data */
	    SDL_KeyboardEvent key;                  /**< Keyboard event data */
	    SDL_TextEditingEvent edit;              /**< Text editing event data */
	    SDL_TextEditingExtEvent editExt;        /**< Extended text editing event data */
	    SDL_TextInputEvent text;                /**< Text input event data */
	    SDL_MouseMotionEvent motion;            /**< Mouse motion event data */
	    SDL_MouseButtonEvent button;            /**< Mouse button event data */
	    SDL_MouseWheelEvent wheel;              /**< Mouse wheel event data */
	    SDL_JoyAxisEvent jaxis;                 /**< Joystick axis event data */
	    SDL_JoyBallEvent jball;                 /**< Joystick ball event data */
	    SDL_JoyHatEvent jhat;                   /**< Joystick hat event data */
	    SDL_JoyButtonEvent jbutton;             /**< Joystick button event data */
	    SDL_JoyDeviceEvent jdevice;             /**< Joystick device change event data */
	    SDL_JoyBatteryEvent jbattery;           /**< Joystick battery event data */
	    SDL_ControllerAxisEvent caxis;          /**< Game Controller axis event data */
	    SDL_ControllerButtonEvent cbutton;      /**< Game Controller button event data */
	    SDL_ControllerDeviceEvent cdevice;      /**< Game Controller device event data */
	    SDL_ControllerTouchpadEvent ctouchpad;  /**< Game Controller touchpad event data */
	    SDL_ControllerSensorEvent csensor;      /**< Game Controller sensor event data */
	    SDL_AudioDeviceEvent adevice;           /**< Audio device event data */
	    SDL_SensorEvent sensor;                 /**< Sensor event data */
	    SDL_QuitEvent quit;                     /**< Quit request event data */
	    SDL_UserEvent user;                     /**< Custom event data */
	    SDL_SysWMEvent syswm;                   /**< System dependent window event data */
	    SDL_TouchFingerEvent tfinger;           /**< Touch finger event data */
	    SDL_MultiGestureEvent mgesture;         /**< Gesture event data */
	    SDL_DollarGestureEvent dgesture;        /**< Gesture event data */
	    SDL_DropEvent drop;                     /**< Drag and drop event data */

	    /* This is necessary for ABI compatibility between Visual C++ and GCC.
	       Visual C++ will respect the push pack pragma and use 52 bytes (size of
	       SDL_TextEditingEvent, the largest structure for 32-bit and 64-bit
	       architectures) for this union, and GCC will use the alignment of the
	       largest datatype within the union, which is 8 bytes on 64-bit
	       architectures.

	       So... we'll add padding to force the size to be 56 bytes for both.

	       On architectures where pointers are 16 bytes, this needs rounding up to
	       the next multiple of 16, 64, and on architectures where pointers are
	       even larger the size of SDL_UserEvent will dominate as being 3 pointers.
	    */
	    Uint8 padding[sizeof(void *) <= 8 ? 56 : sizeof(void *) == 16 ? 64 : 3 * sizeof(void *)];
	} SDL_Event;"

	self
		defineField: #type
			type: DWORDField new
			offset: 0;
		defineField: #union_common
			type: (StructureField type: SDL_CommonEvent)
			offset: 0;
		defineField: #union_display
			type: (StructureField type: SDL_DisplayEvent)
			offset: 0;
		defineField: #union_window
			type: (StructureField type: SDL_WindowEvent)
			offset: 0;
		defineField: #union_key
			type: (StructureField type: SDL_KeyboardEvent)
			offset: 0;
		defineField: #union_edit
			type: (StructureField type: SDL_TextEditingEvent)
			offset: 0;
		defineField: #union_editExt
			type: (StructureField type: SDL_TextEditingExtEvent)
			offset: 0;
		defineField: #union_text
			type: (StructureField type: SDL_TextInputEvent)
			offset: 0;
		defineField: #union_motion
			type: (StructureField type: SDL_MouseMotionEvent)
			offset: 0;
		defineField: #union_button
			type: (StructureField type: SDL_MouseButtonEvent)
			offset: 0;
		defineField: #union_wheel
			type: (StructureField type: SDL_MouseWheelEvent)
			offset: 0;
		defineField: #union_quit
			type: (StructureField type: SDL_QuitEvent)
			offset: 0;
		defineField: #union_user
			type: (StructureField type: SDL_UserEvent)
			offset: 0;
		defineField: #union_syswm
			type: (StructureField type: SDL_SysWMEvent)
			offset: 0;
		defineField: #padding type: (ArrayField type: BYTE length: 56)!

fromAddress: anAddress
	^(super fromAddress: anAddress) initialize!

getFieldNames
	^#(#type #union_button #union_common #union_display #union_edit #union_editExt #union_key #union_motion #union_quit #union_syswm #union_text #union_user #union_wheel #union_window #padding)! !
!SDL_Event class categoriesForMethods!
defineFields!public! !
fromAddress:!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_EventFilter guid: (GUID fromString: '{4146ca53-e490-4344-b331-572e8264e97a}')!
SDL_EventFilter comment: ''!
!SDL_EventFilter categoriesForClass!External-Data-Structured! !
SDL_FPoint guid: (GUID fromString: '{769cdeaf-4e94-46f7-802e-d417a07a547b}')!
SDL_FPoint addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_FPoint addClassConstant: '_OffsetOf_y' value: 16r4!
SDL_FPoint comment: ''!
!SDL_FPoint categoriesForClass!External-Data-Structured! !
!SDL_FPoint methodsFor!

x
	"Answer the <Float> value of the receiver's 'x' field."

	^bytes floatAtOffset: _OffsetOf_x!

x: aFloat
	"Set the receiver's 'x' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_x put: aFloat!

y
	"Answer the <Float> value of the receiver's 'y' field."

	^bytes floatAtOffset: _OffsetOf_y!

y: aFloat
	"Set the receiver's 'y' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_y put: aFloat! !
!SDL_FPoint categoriesForMethods!
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_FPoint class methodsFor!

defineFields
	"SDL_FPoint compileDefinition

	typedef struct SDL_FPoint
	{
	    float x;
	    float y;
	} SDL_FPoint;"

	self
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new!

getFieldNames
	^#(#x #y)! !
!SDL_FPoint class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_FRect guid: (GUID fromString: '{44252d5f-21b2-4f7f-94b5-96725debce5b}')!
SDL_FRect addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_FRect addClassConstant: '_OffsetOf_w' value: 16r8!
SDL_FRect addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_FRect addClassConstant: '_OffsetOf_y' value: 16r4!
SDL_FRect comment: ''!
!SDL_FRect categoriesForClass!External-Data-Structured! !
!SDL_FRect methodsFor!

h
	"Answer the <Float> value of the receiver's 'h' field."

	^bytes floatAtOffset: _OffsetOf_h!

h: aFloat
	"Set the receiver's 'h' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_h put: aFloat!

w
	"Answer the <Float> value of the receiver's 'w' field."

	^bytes floatAtOffset: _OffsetOf_w!

w: aFloat
	"Set the receiver's 'w' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_w put: aFloat!

x
	"Answer the <Float> value of the receiver's 'x' field."

	^bytes floatAtOffset: _OffsetOf_x!

x: aFloat
	"Set the receiver's 'x' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_x put: aFloat!

y
	"Answer the <Float> value of the receiver's 'y' field."

	^bytes floatAtOffset: _OffsetOf_y!

y: aFloat
	"Set the receiver's 'y' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_y put: aFloat! !
!SDL_FRect categoriesForMethods!
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_FRect class methodsFor!

defineFields
	"SDL_FRect compileDefinition

	typedef struct SDL_FRect
	{
	    float x;
	    float y;
	    float w;
	    float h;
	} SDL_FRect;"

	self
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new;
		defineField: #w type: FLOATField new;
		defineField: #h type: FLOATField new!

getFieldNames
	^#(#x #y #w #h)! !
!SDL_FRect class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_Keysym guid: (GUID fromString: '{c263b2c4-d00d-4b31-929f-f0c4b185acc2}')!
SDL_Keysym addClassConstant: '_OffsetOf_mod' value: 16r8!
SDL_Keysym addClassConstant: '_OffsetOf_scancode' value: 16r0!
SDL_Keysym addClassConstant: '_OffsetOf_sym' value: 16r4!
SDL_Keysym addClassConstant: '_OffsetOf_unused' value: 16rC!
SDL_Keysym comment: ''!
!SDL_Keysym categoriesForClass!External-Data-Structured! !
!SDL_Keysym methodsFor!

mod
	"Answer the <Integer> value of the receiver's 'mod' field."

	^bytes wordAtOffset: _OffsetOf_mod!

mod: anInteger
	"Set the receiver's 'mod' field to the value of the argument, anInteger"

	bytes wordAtOffset: _OffsetOf_mod put: anInteger!

scancode
	"Answer the <Integer> value of the receiver's 'scancode' field."

	^bytes dwordAtOffset: _OffsetOf_scancode!

scancode: anInteger
	"Set the receiver's 'scancode' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_scancode put: anInteger!

sym
	"Answer the <Integer> value of the receiver's 'sym' field."

	^bytes dwordAtOffset: _OffsetOf_sym!

sym: anInteger
	"Set the receiver's 'sym' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_sym put: anInteger!

unused
	"Answer the <Integer> value of the receiver's 'unused' field."

	^bytes dwordAtOffset: _OffsetOf_unused!

unused: anInteger
	"Set the receiver's 'unused' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_unused put: anInteger! !
!SDL_Keysym categoriesForMethods!
mod!**compiled accessors**!public! !
mod:!**compiled accessors**!public! !
scancode!**compiled accessors**!public! !
scancode:!**compiled accessors**!public! !
sym!**compiled accessors**!public! !
sym:!**compiled accessors**!public! !
unused!**compiled accessors**!public! !
unused:!**compiled accessors**!public! !
!

!SDL_Keysym class methodsFor!

defineFields
	"SDL_Keysym compileDefinition
	
	typedef struct SDL_Keysym
	{
	    SDL_Scancode scancode;      /**< SDL physical key code - see ::SDL_Scancode for details */
	    SDL_Keycode sym;            /**< SDL virtual key code - see ::SDL_Keycode for details */
	    Uint16 mod;                 /**< current key modifiers */
	    Uint32 unused;
	} SDL_Keysym;"

	self
		defineField: #scancode type: DWORDField new;
		defineField: #sym type: DWORDField new;
		defineField: #mod type: WORDField new;
		defineField: #unused type: DWORDField new!

getFieldNames
	^#(#scancode #sym #mod #unused)! !
!SDL_Keysym class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_Object guid: (GUID fromString: '{94f3180b-5da5-45a7-8ae7-499f08d724db}')!
SDL_Object comment: ''!
!SDL_Object categoriesForClass!External-Data-Structured! !
!SDL_Object methodsFor!

checkResult: anObject
	anObject
		ifNil: [Error signal: self library getError]
		ifNotNil: [anObject isInteger ifTrue: [anObject = -1 ifTrue: [Error signal: self library getError]]].
	^anObject!

initialize
	super initialize.
	library := SDL2Library default!

library
	library ifNil: [library := SDL2Library default].
	^library! !
!SDL_Object categoriesForMethods!
checkResult:!public! !
initialize!public! !
library!public! !
!

!SDL_Object class methodsFor!

new
	^super new initialize! !
!SDL_Object class categoriesForMethods!
new!public! !
!

SDL_Palette guid: (GUID fromString: '{5c34d0ff-2e41-4c05-b858-1df4bb08c882}')!
SDL_Palette comment: ''!
!SDL_Palette categoriesForClass!External-Data-Structured! !
SDL_PixelFormat guid: (GUID fromString: '{1a77facb-3c48-483e-ab78-56e05698125d}')!
SDL_PixelFormat addClassConstant: '_OffsetOf_Aloss' value: 16r1F!
SDL_PixelFormat addClassConstant: '_OffsetOf_Amask' value: 16r18!
SDL_PixelFormat addClassConstant: '_OffsetOf_Ashift' value: 16r23!
SDL_PixelFormat addClassConstant: '_OffsetOf_BitsPerPixel' value: 16r8!
SDL_PixelFormat addClassConstant: '_OffsetOf_Bloss' value: 16r1E!
SDL_PixelFormat addClassConstant: '_OffsetOf_Bmask' value: 16r14!
SDL_PixelFormat addClassConstant: '_OffsetOf_Bshift' value: 16r22!
SDL_PixelFormat addClassConstant: '_OffsetOf_BytesPerPixel' value: 16r9!
SDL_PixelFormat addClassConstant: '_OffsetOf_format' value: 16r0!
SDL_PixelFormat addClassConstant: '_OffsetOf_Gloss' value: 16r1D!
SDL_PixelFormat addClassConstant: '_OffsetOf_Gmask' value: 16r10!
SDL_PixelFormat addClassConstant: '_OffsetOf_Gshift' value: 16r21!
SDL_PixelFormat addClassConstant: '_OffsetOf_next' value: 16r28!
SDL_PixelFormat addClassConstant: '_OffsetOf_padding' value: 16rA!
SDL_PixelFormat addClassConstant: '_OffsetOf_palette' value: 16r4!
SDL_PixelFormat addClassConstant: '_OffsetOf_refcount' value: 16r24!
SDL_PixelFormat addClassConstant: '_OffsetOf_Rloss' value: 16r1C!
SDL_PixelFormat addClassConstant: '_OffsetOf_Rmask' value: 16rC!
SDL_PixelFormat addClassConstant: '_OffsetOf_Rshift' value: 16r20!
SDL_PixelFormat comment: ''!
!SDL_PixelFormat categoriesForClass!External-Data-Structured! !
!SDL_PixelFormat methodsFor!

Aloss
	"Answer the <Integer> value of the receiver's 'Aloss' field."

	^bytes byteAtOffset: _OffsetOf_Aloss!

Aloss: anInteger
	"Set the receiver's 'Aloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Aloss put: anInteger!

Amask
	"Answer the <Integer> value of the receiver's 'Amask' field."

	^bytes dwordAtOffset: _OffsetOf_Amask!

Amask: anInteger
	"Set the receiver's 'Amask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Amask put: anInteger!

Ashift
	"Answer the <Integer> value of the receiver's 'Ashift' field."

	^bytes byteAtOffset: _OffsetOf_Ashift!

Ashift: anInteger
	"Set the receiver's 'Ashift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Ashift put: anInteger!

BitsPerPixel
	"Answer the <Integer> value of the receiver's 'BitsPerPixel' field."

	^bytes byteAtOffset: _OffsetOf_BitsPerPixel!

BitsPerPixel: anInteger
	"Set the receiver's 'BitsPerPixel' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_BitsPerPixel put: anInteger!

Bloss
	"Answer the <Integer> value of the receiver's 'Bloss' field."

	^bytes byteAtOffset: _OffsetOf_Bloss!

Bloss: anInteger
	"Set the receiver's 'Bloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Bloss put: anInteger!

Bmask
	"Answer the <Integer> value of the receiver's 'Bmask' field."

	^bytes dwordAtOffset: _OffsetOf_Bmask!

Bmask: anInteger
	"Set the receiver's 'Bmask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Bmask put: anInteger!

Bshift
	"Answer the <Integer> value of the receiver's 'Bshift' field."

	^bytes byteAtOffset: _OffsetOf_Bshift!

Bshift: anInteger
	"Set the receiver's 'Bshift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Bshift put: anInteger!

BytesPerPixel
	"Answer the <Integer> value of the receiver's 'BytesPerPixel' field."

	^bytes byteAtOffset: _OffsetOf_BytesPerPixel!

BytesPerPixel: anInteger
	"Set the receiver's 'BytesPerPixel' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_BytesPerPixel put: anInteger!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger!

Gloss
	"Answer the <Integer> value of the receiver's 'Gloss' field."

	^bytes byteAtOffset: _OffsetOf_Gloss!

Gloss: anInteger
	"Set the receiver's 'Gloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Gloss put: anInteger!

Gmask
	"Answer the <Integer> value of the receiver's 'Gmask' field."

	^bytes dwordAtOffset: _OffsetOf_Gmask!

Gmask: anInteger
	"Set the receiver's 'Gmask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Gmask put: anInteger!

Gshift
	"Answer the <Integer> value of the receiver's 'Gshift' field."

	^bytes byteAtOffset: _OffsetOf_Gshift!

Gshift: anInteger
	"Set the receiver's 'Gshift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Gshift put: anInteger!

next
	"Answer the <SDL_PixelFormat> value of the receiver's 'next' field."

	^SDL_PixelFormat fromAddress: (bytes intPtrAtOffset: _OffsetOf_next)!

next: aSDL_PixelFormat
	"Set the receiver's 'next' field to the value of the argument, aSDL_PixelFormat"

	bytes uintPtrAtOffset: _OffsetOf_next put: aSDL_PixelFormat yourAddress!

padding
	"Answer the <ByteArray> value of the receiver's 'padding' field."

	^ByteArray fromAddress: bytes yourAddress + _OffsetOf_padding length: 2!

padding: aByteArray
	"Set the receiver's 'padding' field to the value of the argument, aByteArray"

	| size |
	size := aByteArray byteSize min: ##(2 * ByteArray elementSize).
	aByteArray
		replaceBytesOf: bytes
		from: ##(_OffsetOf_padding + 1)
		to: _OffsetOf_padding + size
		startingAt: 1!

palette
	"Answer the <SDL_Palette> value of the receiver's 'palette' field."

	^SDL_Palette fromAddress: (bytes intPtrAtOffset: _OffsetOf_palette)!

palette: aSDL_Palette
	"Set the receiver's 'palette' field to the value of the argument, aSDL_Palette"

	bytes uintPtrAtOffset: _OffsetOf_palette put: aSDL_Palette yourAddress!

refcount
	"Answer the <Integer> value of the receiver's 'refcount' field."

	^bytes sdwordAtOffset: _OffsetOf_refcount!

refcount: anInteger
	"Set the receiver's 'refcount' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refcount put: anInteger!

Rloss
	"Answer the <Integer> value of the receiver's 'Rloss' field."

	^bytes byteAtOffset: _OffsetOf_Rloss!

Rloss: anInteger
	"Set the receiver's 'Rloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Rloss put: anInteger!

Rmask
	"Answer the <Integer> value of the receiver's 'Rmask' field."

	^bytes dwordAtOffset: _OffsetOf_Rmask!

Rmask: anInteger
	"Set the receiver's 'Rmask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Rmask put: anInteger!

Rshift
	"Answer the <Integer> value of the receiver's 'Rshift' field."

	^bytes byteAtOffset: _OffsetOf_Rshift!

Rshift: anInteger
	"Set the receiver's 'Rshift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Rshift put: anInteger! !
!SDL_PixelFormat categoriesForMethods!
Aloss!**compiled accessors**!public! !
Aloss:!**compiled accessors**!public! !
Amask!**compiled accessors**!public! !
Amask:!**compiled accessors**!public! !
Ashift!**compiled accessors**!public! !
Ashift:!**compiled accessors**!public! !
BitsPerPixel!**compiled accessors**!public! !
BitsPerPixel:!**compiled accessors**!public! !
Bloss!**compiled accessors**!public! !
Bloss:!**compiled accessors**!public! !
Bmask!**compiled accessors**!public! !
Bmask:!**compiled accessors**!public! !
Bshift!**compiled accessors**!public! !
Bshift:!**compiled accessors**!public! !
BytesPerPixel!**compiled accessors**!public! !
BytesPerPixel:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
Gloss!**compiled accessors**!public! !
Gloss:!**compiled accessors**!public! !
Gmask!**compiled accessors**!public! !
Gmask:!**compiled accessors**!public! !
Gshift!**compiled accessors**!public! !
Gshift:!**compiled accessors**!public! !
next!**compiled accessors**!public! !
next:!**compiled accessors**!public! !
padding!**compiled accessors**!public! !
padding:!**compiled accessors**!public! !
palette!**compiled accessors**!public! !
palette:!**compiled accessors**!public! !
refcount!**compiled accessors**!public! !
refcount:!**compiled accessors**!public! !
Rloss!**compiled accessors**!public! !
Rloss:!**compiled accessors**!public! !
Rmask!**compiled accessors**!public! !
Rmask:!**compiled accessors**!public! !
Rshift!**compiled accessors**!public! !
Rshift:!**compiled accessors**!public! !
!

!SDL_PixelFormat class methodsFor!

defineFields
	"SDL_PixelFormat compileDefinition

	typedef struct SDL_PixelFormat
	{
	    Uint32 format;
	    SDL_Palette *palette;
	    Uint8 BitsPerPixel;
	    Uint8 BytesPerPixel;
	    Uint8 padding[2];
	    Uint32 Rmask;
	    Uint32 Gmask;
	    Uint32 Bmask;
	    Uint32 Amask;
	    Uint8 Rloss;
	    Uint8 Gloss;
	    Uint8 Bloss;
	    Uint8 Aloss;
	    Uint8 Rshift;
	    Uint8 Gshift;
	    Uint8 Bshift;
	    Uint8 Ashift;
	    int refcount;
	    struct SDL_PixelFormat *next;
	} SDL_PixelFormat;"

	self 
		defineField: #format type: DWORDField new;
		defineField: #palette type: (PointerField type: SDL_Palette);
		defineField: #BitsPerPixel type: BYTEField new;
		defineField: #BytesPerPixel type: BYTEField new;
		defineField: #padding type: (ArrayField type: ByteArray length: 2);
		defineField: #Rmask type: DWORDField new;
		defineField: #Gmask type: DWORDField new;
		defineField: #Bmask type: DWORDField new;
		defineField: #Amask type: DWORDField new;
		defineField: #Rloss type: BYTEField new;
		defineField: #Gloss type: BYTEField new;
		defineField: #Bloss type: BYTEField new;
		defineField: #Aloss type: BYTEField new;
		defineField: #Rshift type: BYTEField new;
		defineField: #Gshift type: BYTEField new;
		defineField: #Bshift type: BYTEField new;
		defineField: #Ashift type: BYTEField new;
		defineField: #refcount type: SDWORDField new;
		defineField: #next type: (PointerField type: SDL_PixelFormat)!

getFieldNames
	^#(#format #palette #BitsPerPixel #BytesPerPixel #padding #Rmask #Gmask #Bmask #Amask #Rloss #Gloss #Bloss #Aloss #Rshift #Gshift #Bshift #Ashift #refcount #next)! !
!SDL_PixelFormat class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_Point guid: (GUID fromString: '{a3faa30a-cfef-41b8-81a8-1c9701f045e8}')!
SDL_Point addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_Point addClassConstant: '_OffsetOf_y' value: 16r4!
SDL_Point comment: ''!
!SDL_Point categoriesForClass!External-Data-Structured! !
!SDL_Point methodsFor!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger! !
!SDL_Point categoriesForMethods!
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_Point class methodsFor!

defineFields
	"SDL_Point compileDefinition

	typedef struct SDL_Point
	{
	    int x;
	    int y;
	} SDL_Point;"

	self
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new!

getFieldNames
	^#(#x #y)! !
!SDL_Point class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_Rect guid: (GUID fromString: '{51dd2f00-9366-49f1-a65c-856e2abbf2a3}')!
SDL_Rect addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_Rect addClassConstant: '_OffsetOf_w' value: 16r8!
SDL_Rect addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_Rect addClassConstant: '_OffsetOf_y' value: 16r4!
SDL_Rect comment: ''!
!SDL_Rect categoriesForClass!Kernel-Objects! !
!SDL_Rect methodsFor!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

h: anInteger
	"Set the receiver's 'h' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_h put: anInteger!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w!

w: anInteger
	"Set the receiver's 'w' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_w put: anInteger!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger! !
!SDL_Rect categoriesForMethods!
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_Rect class methodsFor!

defineFields
	"SDL_Rect compileDefinition

	typedef struct SDL_Rect
	{
	    int x, y;
	    int w, h;
	} SDL_Rect;"

	self
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #w type: SDWORDField new;
		defineField: #h type: SDWORDField new!

getFieldNames
	^#(#x #y #w #h)! !
!SDL_Rect class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_RendererInfo guid: (GUID fromString: '{e120a2b0-2a66-4346-9ab9-945c87bc252e}')!
SDL_RendererInfo comment: ''!
!SDL_RendererInfo categoriesForClass!External-Data-Structured! !
SDL_SysWMinfo guid: (GUID fromString: '{ebdb1ed4-80aa-44fd-aa94-7898606b137e}')!
SDL_SysWMinfo addClassConstant: '_OffsetOf_hdc' value: 16rC!
SDL_SysWMinfo addClassConstant: '_OffsetOf_hinstance' value: 16r10!
SDL_SysWMinfo addClassConstant: '_OffsetOf_subsystem' value: 16r4!
SDL_SysWMinfo addClassConstant: '_OffsetOf_version' value: 16r0!
SDL_SysWMinfo addClassConstant: '_OffsetOf_window' value: 16r8!
SDL_SysWMinfo comment: ''!
!SDL_SysWMinfo categoriesForClass!External-Data-Structured! !
!SDL_SysWMinfo methodsFor!

hdc
	"Answer the <Integer> value of the receiver's 'hdc' field."

	^bytes uintPtrAtOffset: _OffsetOf_hdc!

hinstance
	"Answer the <Integer> value of the receiver's 'hinstance' field."

	^bytes uintPtrAtOffset: _OffsetOf_hinstance!

subsystem
	"Answer the <Integer> value of the receiver's 'subsystem' field."

	^bytes sdwordAtOffset: _OffsetOf_subsystem!

subsystem: anInteger
	"Set the receiver's 'subsystem' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_subsystem put: anInteger!

version
	"Answer the <SDL_Version> value of the receiver's 'version' field."

	^SDL_Version fromAddress: bytes yourAddress!

version: aSDL_Version
	"Set the receiver's 'version' field to the value of the argument, aSDL_Version"

	aSDL_Version
		replaceBytesOf: bytes
		from: ##(_OffsetOf_version + 1)
		to: ##(_OffsetOf_version + SDL_Version basicByteSize)
		startingAt: 1!

window
	"Answer the <Integer> value of the receiver's 'window' field."

	^bytes uintPtrAtOffset: _OffsetOf_window!

window: anExternalHandle
	"Set the receiver's 'window' field to the value of the argument, anExternalHandle"

	bytes uintPtrAtOffset: _OffsetOf_window put: anExternalHandle yourAddress! !
!SDL_SysWMinfo categoriesForMethods!
hdc!public! !
hinstance!public! !
subsystem!public! !
subsystem:!public! !
version!public! !
version:!public! !
window!public! !
window:!public! !
!

!SDL_SysWMinfo class methodsFor!

defineFields
	" SDL_SysWMinfo compileDefinition

	typedef struct SDL_SysWMinfo
	{
	    SDL_version version;
	    SDL_SYSWM_TYPE subsystem;
	    union
	    {
		struct {
		    HWND window;                /**< The window handle */
		    HDC hdc;                    /**< The window device context */
		    HINSTANCE hinstance;        /**< The instance handle */
		} win;
	    }
	} SDL_SysWMinfo;"

	self
		defineField: #version type: (StructureField type: SDL_Version);
		defineField: #subsystem type: DWORDField new;
		defineField: #window type: (PointerField type: ExternalHandle);
		defineField: #hdc type: UINT_PTRField readOnly;
		defineField: #hinstance type: UINT_PTRField readOnly!

getFieldNames
	^#(#version #subsystem #window #hdc #hinstance)! !
!SDL_SysWMinfo class categoriesForMethods!
defineFields!public! !
getFieldNames!public! !
!

SDL_Version guid: (GUID fromString: '{f0fdc22d-3138-4c1d-b7b7-df66913fbbed}')!
SDL_Version addClassConstant: '_OffsetOf_major' value: 16r0!
SDL_Version addClassConstant: '_OffsetOf_minor' value: 16r1!
SDL_Version addClassConstant: '_OffsetOf_patch' value: 16r2!
SDL_Version comment: ''!
!SDL_Version categoriesForClass!External-Data-Structured! !
!SDL_Version methodsFor!

major
	"Answer the <Integer> value of the receiver's 'major' field."

	^bytes byteAtOffset: _OffsetOf_major!

major: anInteger
	"Set the receiver's 'major' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_major put: anInteger!

minor
	"Answer the <Integer> value of the receiver's 'minor' field."

	^bytes byteAtOffset: _OffsetOf_minor!

minor: anInteger
	"Set the receiver's 'minor' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_minor put: anInteger!

patch
	"Answer the <Integer> value of the receiver's 'patch' field."

	^bytes byteAtOffset: _OffsetOf_patch!

patch: anInteger
	"Set the receiver's 'patch' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_patch put: anInteger! !
!SDL_Version categoriesForMethods!
major!**compiled accessors**!public! !
major:!**compiled accessors**!public! !
minor!**compiled accessors**!public! !
minor:!**compiled accessors**!public! !
patch!**compiled accessors**!public! !
patch:!**compiled accessors**!public! !
!

!SDL_Version class methodsFor!

defineFields
	"SDL_Version compileDefinition

	typedef struct SDL_version
	{
	    Uint8 major;        /**< major version */
	    Uint8 minor;        /**< minor version */
	    Uint8 patch;        /**< update version */
	} SDL_version;"

	self
		defineField: #major type: BYTEField new;
		defineField: #minor type: BYTEField new;
		defineField: #patch type: BYTEField new!

getFieldNames
	^#(#major #minor #patch)! !
!SDL_Version class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_Vertex guid: (GUID fromString: '{87ebc352-9aba-4986-aceb-11e278bf9866}')!
SDL_Vertex addClassConstant: '_OffsetOf_color' value: 16r8!
SDL_Vertex addClassConstant: '_OffsetOf_position' value: 16r0!
SDL_Vertex addClassConstant: '_OffsetOf_tex_coord' value: 16rC!
SDL_Vertex comment: ''!
!SDL_Vertex categoriesForClass!External-Data-Structured! !
!SDL_Vertex methodsFor!

color
	"Answer the <SDL_Color> value of the receiver's 'color' field."

	^SDL_Color fromAddress: bytes yourAddress + _OffsetOf_color!

color: aSDL_Color
	"Set the receiver's 'color' field to the value of the argument, aSDL_Color"

	aSDL_Color
		replaceBytesOf: bytes
		from: ##(_OffsetOf_color + 1)
		to: ##(_OffsetOf_color + SDL_Color basicByteSize)
		startingAt: 1!

position
	"Answer the <SDL_FPoint> value of the receiver's 'position' field."

	^SDL_FPoint fromAddress: bytes yourAddress!

position: aSDL_FPoint
	"Set the receiver's 'position' field to the value of the argument, aSDL_FPoint"

	aSDL_FPoint
		replaceBytesOf: bytes
		from: ##(_OffsetOf_position + 1)
		to: ##(_OffsetOf_position + SDL_FPoint basicByteSize)
		startingAt: 1!

tex_coord
	"Answer the <SDL_FPoint> value of the receiver's 'tex_coord' field."

	^SDL_FPoint fromAddress: bytes yourAddress + _OffsetOf_tex_coord!

tex_coord: aSDL_FPoint
	"Set the receiver's 'tex_coord' field to the value of the argument, aSDL_FPoint"

	aSDL_FPoint
		replaceBytesOf: bytes
		from: ##(_OffsetOf_tex_coord + 1)
		to: ##(_OffsetOf_tex_coord + SDL_FPoint basicByteSize)
		startingAt: 1! !
!SDL_Vertex categoriesForMethods!
color!**compiled accessors**!public! !
color:!**compiled accessors**!public! !
position!**compiled accessors**!public! !
position:!**compiled accessors**!public! !
tex_coord!**compiled accessors**!public! !
tex_coord:!**compiled accessors**!public! !
!

!SDL_Vertex class methodsFor!

defineFields
	"SDL_Vertex compileDefinition

	typedef struct SDL_Vertex
	{
	    SDL_FPoint position;        /**< Vertex position, in SDL_Renderer coordinates  */
	    SDL_Color  color;           /**< Vertex color */
	    SDL_FPoint tex_coord;       /**< Normalized texture coordinates, if needed */
	} SDL_Vertex;"

	self
		defineField: #position type: (StructureField type: SDL_FPoint);
		defineField: #color type: (StructureField type: SDL_Color);
		defineField: #tex_coord type: (StructureField type: SDL_FPoint)!

getFieldNames
	^#(#position #color #tex_coord)! !
!SDL_Vertex class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

TTF_Object guid: (GUID fromString: '{d25ebdf2-fabf-4f70-a641-33b9aa4695a9}')!
TTF_Object comment: ''!
!TTF_Object categoriesForClass!External-Data-Structured! !
!TTF_Object methodsFor!

checkResult: anObject
	anObject
		ifNil: [Error signal: self library getError]
		ifNotNil: [anObject isInteger ifTrue: [anObject = -1 ifTrue: [Error signal: self library getError]]].
	^anObject!

initialize
	super initialize.
	library := SDL2TTFLibrary default!

library
	library ifNil: [library := SDL2TTFLibrary default].
	^library! !
!TTF_Object categoriesForMethods!
checkResult:!public! !
initialize!public! !
library!public! !
!

SDL_AudioDeviceEvent guid: (GUID fromString: '{8d2fc7ba-75da-40da-a4dc-d164fa29f833}')!
SDL_AudioDeviceEvent comment: ''!
!SDL_AudioDeviceEvent categoriesForClass!External-Data-Structured! !
SDL_CommonEvent guid: (GUID fromString: '{05fe376e-500c-4a8b-8574-5f0afa101309}')!
SDL_CommonEvent comment: ''!
!SDL_CommonEvent categoriesForClass!External-Data-Structured! !
SDL_DisplayEvent guid: (GUID fromString: '{e2d7d1d6-cc38-49e1-908c-3bee210fa08c}')!
SDL_DisplayEvent comment: ''!
!SDL_DisplayEvent categoriesForClass!External-Data-Structured! !
SDL_DropEvent guid: (GUID fromString: '{f4854d50-aaf7-4da9-b6b0-83c40ac7de3a}')!
SDL_DropEvent comment: ''!
!SDL_DropEvent categoriesForClass!External-Data-Structured! !
SDL_KeyboardEvent guid: (GUID fromString: '{b0932b16-56bc-43d2-9018-7c53e25f208b}')!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_keysym' value: 16r10!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_padding2' value: 16rE!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_padding3' value: 16rF!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_repeat' value: 16rD!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_state' value: 16rC!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_KeyboardEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_KeyboardEvent comment: ''!
!SDL_KeyboardEvent categoriesForClass!External-Data-Structured! !
!SDL_KeyboardEvent methodsFor!

isAlt
	^{SDL_SCANCODE_LALT. SDL_SCANCODE_RALT} includes: self scanCode!

isAltDown
	^(self keysym mod bitAnd: KMOD_LALT) asBoolean
		or: [(self keysym mod bitAnd: KMOD_RALT) asBoolean]!

isBackspace
	^self scanCode = SDL_SCANCODE_BACKSPACE!

isCapsLockActive
	^(self keysym mod bitAnd: KMOD_CAPS) asBoolean!

isCtrlDown
	^(self keysym mod bitAnd: KMOD_LCTRL) asBoolean
		or: [(self keysym mod bitAnd: KMOD_RCTRL) asBoolean]!

isDelete
	^self scanCode = SDL_SCANCODE_DELETE!

isDigit
	^self keyCode >= SDLK_0 & (self keyCode <= SDLK_9)!

isDown
	^self scanCode = SDL_SCANCODE_DOWN!

isEnter
	^self scanCode = SDL_SCANCODE_RETURN!

isEscape
	^self scanCode = SDL_SCANCODE_ESCAPE!

isKeyDown
	^self type = SDL_KEYDOWN!

isKeyUp
	^self type = SDL_KEYUP!

isLeft
	^self scanCode = SDL_SCANCODE_LEFT!

isLetter
	^self keyCode >= SDLK_a & (self keyCode <= SDLK_z)!

isModifierDown
	^self isShiftDown or: [self isCtrlDown or: [self isAltDown]]!

isNumLockActive 
	^(self keysym mod bitAnd: KMOD_NUM) asBoolean not!

isPunctuation
	^self keyCode >= SDLK_SPACE & (self keyCode <= SDLK_EXCLAIM)
		or: [self keyCode >= SDLK_QUOTEDBL & (self keyCode <= SDLK_SLASH)]!

isRepeat
	^self repeat > 0!

isRight
	^self scanCode = SDL_SCANCODE_RIGHT!

isShift
	^{SDL_SCANCODE_LSHIFT. SDL_SCANCODE_RSHIFT} includes: self scanCode!

isShiftDown
	^(self keysym mod bitAnd: KMOD_LSHIFT) asBoolean
		or: [(self keysym mod bitAnd: KMOD_RSHIFT) asBoolean]!

isSystemKey
	^self isAlt!

isUp
	^self scanCode = SDL_SCANCODE_UP!

isUppercase
	^self isCapsLockActive = self isShiftDown not!

isValidTextInput
	^self isDigit | self isLetter | self isPunctuation!

keyCode
	^self keysym sym!

keysym
	"Answer the <SDL_Keysym> value of the receiver's 'keysym' field."

	^SDL_Keysym fromAddress: bytes yourAddress + _OffsetOf_keysym!

keysym: aSDL_Keysym
	"Set the receiver's 'keysym' field to the value of the argument, aSDL_Keysym"

	aSDL_Keysym
		replaceBytesOf: bytes
		from: ##(_OffsetOf_keysym + 1)
		to: ##(_OffsetOf_keysym + SDL_Keysym basicByteSize)
		startingAt: 1!

padding2
	"Answer the <Integer> value of the receiver's 'padding2' field."

	^bytes byteAtOffset: _OffsetOf_padding2!

padding2: anInteger
	"Set the receiver's 'padding2' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding2 put: anInteger!

padding3
	"Answer the <Integer> value of the receiver's 'padding3' field."

	^bytes byteAtOffset: _OffsetOf_padding3!

padding3: anInteger
	"Set the receiver's 'padding3' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding3 put: anInteger!

repeat
	"Answer the <Integer> value of the receiver's 'repeat' field."

	^bytes byteAtOffset: _OffsetOf_repeat!

repeat: anInteger
	"Set the receiver's 'repeat' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_repeat put: anInteger!

scanCode
	^self keysym scancode!

state
	"Answer the <Integer> value of the receiver's 'state' field."

	^bytes byteAtOffset: _OffsetOf_state!

state: anInteger
	"Set the receiver's 'state' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_state put: anInteger!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger!

windowsAlphabetKeyCode
	| diff |
	diff := self keysym sym - SDLK_a.
	^$A asInteger + diff!

windowsFunctionKeyCode
	^112 + (self keysym sym - 1073741882)!

windowsKeyCode
	| sdlKeyCode |
	sdlKeyCode := self keysym sym.
	(sdlKeyCode >= SDLK_a and: [sdlKeyCode <= SDLK_z]) ifTrue: [^self windowsAlphabetKeyCode].
	(sdlKeyCode >= SDLK_0 and: [sdlKeyCode <= SDLK_9]) ifTrue: [^self windowsNumberRowCode].
	(sdlKeyCode >= SDLK_F1 and: [sdlKeyCode <= SDLK_F12]) ifTrue: [^self windowsFunctionKeyCode].
	^self windowsSpecialKeyCode!

windowsNumberRowCode
	| diff |
	diff := self keysym sym - SDLK_0.
	^48 + diff!

windowsSpecialKeyCode
	| sdlKeyCode windowsKeyCode |
	sdlKeyCode := self keysym sym.
	sdlKeyCode = SDLK_SPACE ifTrue: [windowsKeyCode := 32].
	sdlKeyCode = SDLK_BACKSPACE ifTrue: [windowsKeyCode := 8].
	sdlKeyCode = SDLK_TAB ifTrue: [windowsKeyCode := 9].
	sdlKeyCode = SDLK_RETURN ifTrue: [windowsKeyCode := 13].
	sdlKeyCode = SDLK_PAUSE ifTrue: [windowsKeyCode := 19].
	sdlKeyCode = SDLK_SCROLLLOCK ifTrue: [windowsKeyCode := 145].
	sdlKeyCode = SDLK_ESCAPE ifTrue: [windowsKeyCode := 27].
	sdlKeyCode = SDLK_LEFT ifTrue: [windowsKeyCode := 37].
	sdlKeyCode = SDLK_UP ifTrue: [windowsKeyCode := 38].
	sdlKeyCode = SDLK_RIGHT ifTrue: [windowsKeyCode := 39].
	sdlKeyCode = SDLK_DOWN ifTrue: [windowsKeyCode := 40].
	sdlKeyCode = SDLK_HOME ifTrue: [windowsKeyCode := 36].
	sdlKeyCode = SDLK_END ifTrue: [windowsKeyCode := 35].
	sdlKeyCode = SDLK_PAGEUP ifTrue: [windowsKeyCode := 33].
	sdlKeyCode = SDLK_PAGEDOWN ifTrue: [windowsKeyCode := 34].
	sdlKeyCode = SDLK_INSERT ifTrue: [windowsKeyCode := 45].
	sdlKeyCode = SDLK_DELETE ifTrue: [windowsKeyCode := 46].
	sdlKeyCode = SDLK_KP_DIVIDE ifTrue: [windowsKeyCode := 111].
	sdlKeyCode = SDLK_KP_MULTIPLY ifTrue: [windowsKeyCode := 106].
	sdlKeyCode = SDLK_KP_MINUS ifTrue: [windowsKeyCode := 109].
	sdlKeyCode = SDLK_KP_PLUS ifTrue: [windowsKeyCode := 107].
	sdlKeyCode = SDLK_KP_DECIMAL
		ifTrue: [self isNumLockActive ifTrue: [windowsKeyCode := 110] ifFalse: [windowsKeyCode := 46]].
	sdlKeyCode = SDLK_KP_0 ifTrue: [windowsKeyCode := 45].
	sdlKeyCode = SDLK_KP_1 ifTrue: [windowsKeyCode := 35].
	sdlKeyCode = SDLK_KP_2 ifTrue: [windowsKeyCode := 40].
	sdlKeyCode = SDLK_KP_3 ifTrue: [windowsKeyCode := 34].
	sdlKeyCode = SDLK_KP_4 ifTrue: [windowsKeyCode := 37].
	sdlKeyCode = SDLK_KP_5 ifTrue: [windowsKeyCode := 12].
	sdlKeyCode = SDLK_KP_6 ifTrue: [windowsKeyCode := 39].
	sdlKeyCode = SDLK_KP_7 ifTrue: [windowsKeyCode := 36].
	sdlKeyCode = SDLK_KP_8 ifTrue: [windowsKeyCode := 38].
	sdlKeyCode = SDLK_KP_9 ifTrue: [windowsKeyCode := 33].
	sdlKeyCode = SDLK_CAPSLOCK ifTrue: [windowsKeyCode := 20].
	sdlKeyCode = SDLK_NUMLOCKCLEAR ifTrue: [windowsKeyCode := 144].
	({SDLK_LCTRL. SDLK_RCTRL} includes: sdlKeyCode) ifTrue: [windowsKeyCode := 17].
	({SDLK_LSHIFT. SDLK_RSHIFT} includes: sdlKeyCode) ifTrue: [windowsKeyCode := 16].
	({SDLK_LALT. SDLK_RALT} includes: sdlKeyCode) ifTrue: [windowsKeyCode := 18].
	sdlKeyCode = SDLK_LGUI ifTrue: [windowsKeyCode := 91].
	sdlKeyCode = SDLK_RGUI ifTrue: [windowsKeyCode := 92].
	sdlKeyCode = SDLK_SELECT ifTrue: [windowsKeyCode := 93].
	sdlKeyCode = SDLK_SEMICOLON ifTrue: [windowsKeyCode := 186].
	sdlKeyCode = SDLK_QUOTE ifTrue: [windowsKeyCode := 222].
	sdlKeyCode = SDLK_EQUALS ifTrue: [windowsKeyCode := 187].
	sdlKeyCode = SDLK_COMMA ifTrue: [windowsKeyCode := 188].
	sdlKeyCode = SDLK_MINUS ifTrue: [windowsKeyCode := 189].
	sdlKeyCode = SDLK_PERIOD ifTrue: [windowsKeyCode := 190].
	sdlKeyCode = SDLK_SLASH ifTrue: [windowsKeyCode := 191].
	sdlKeyCode = SDLK_BACKQUOTE ifTrue: [windowsKeyCode := 192].
	sdlKeyCode = SDLK_LEFTBRACKET ifTrue: [windowsKeyCode := 219].
	sdlKeyCode = SDLK_BACKSLASH ifTrue: [windowsKeyCode := 220].
	sdlKeyCode = SDLK_RIGHTBRACKET ifTrue: [windowsKeyCode := 221].
	^windowsKeyCode! !
!SDL_KeyboardEvent categoriesForMethods!
isAlt!public! !
isAltDown!public! !
isBackspace!public! !
isCapsLockActive!public! !
isCtrlDown!public! !
isDelete!public! !
isDigit!public! !
isDown!public! !
isEnter!public! !
isEscape!public! !
isKeyDown!public! !
isKeyUp!public! !
isLeft!public! !
isLetter!public! !
isModifierDown!public! !
isNumLockActive!public! !
isPunctuation!public! !
isRepeat!public! !
isRight!public! !
isShift!public! !
isShiftDown!public! !
isSystemKey!public! !
isUp!public! !
isUppercase!public! !
isValidTextInput!public! !
keyCode!public! !
keysym!**compiled accessors**!public! !
keysym:!**compiled accessors**!public! !
padding2!**compiled accessors**!public! !
padding2:!**compiled accessors**!public! !
padding3!**compiled accessors**!public! !
padding3:!**compiled accessors**!public! !
repeat!**compiled accessors**!public! !
repeat:!**compiled accessors**!public! !
scanCode!public! !
state!**compiled accessors**!public! !
state:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
windowsAlphabetKeyCode!private! !
windowsFunctionKeyCode!private! !
windowsKeyCode!public! !
windowsNumberRowCode!private! !
windowsSpecialKeyCode!private! !
!

!SDL_KeyboardEvent class methodsFor!

defineFields
	"SDL_KeyboardEvent compileDefinition
	
	typedef struct SDL_KeyboardEvent
	{
	    Uint32 type;        /**< ::SDL_KEYDOWN or ::SDL_KEYUP */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The window with keyboard focus, if any */
	    Uint8 state;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
	    Uint8 repeat;       /**< Non-zero if this is a key repeat */
	    Uint8 padding2;
	    Uint8 padding3;
	    SDL_Keysym keysym;  /**< The key that was pressed or released */
	} SDL_KeyboardEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #state type: BYTEField new;
		defineField: #repeat type: BYTEField new;
		defineField: #padding2 type: BYTEField new;
		defineField: #padding3 type: BYTEField new;
		defineField: #keysym type: (StructureField type: SDL_Keysym)!

getFieldNames
	^#(#type #timestamp #windowID #state #repeat #padding2 #padding3 #keysym)! !
!SDL_KeyboardEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_MouseButtonEvent guid: (GUID fromString: '{7826f1b9-36e4-401a-9541-32b1ae2f2c99}')!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_button' value: 16r10!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_clicks' value: 16r12!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_padding1' value: 16r13!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_state' value: 16r11!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_which' value: 16rC!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_x' value: 16r14!
SDL_MouseButtonEvent addClassConstant: '_OffsetOf_y' value: 16r18!
SDL_MouseButtonEvent comment: ''!
!SDL_MouseButtonEvent categoriesForClass!External-Data-Structured! !
!SDL_MouseButtonEvent methodsFor!

clicks
	"Answer the <Integer> value of the receiver's 'clicks' field."

	^bytes byteAtOffset: _OffsetOf_clicks!

clicks: anInteger
	"Set the receiver's 'clicks' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_clicks put: anInteger!

isLeftButton
	^self button = 1!

isMiddleButton
	^self button = 2!

isMouseButtonDown
	^self type = SDL_MOUSEBUTTONDOWN!

isMouseButtonUp
	^self type = SDL_MOUSEBUTTONUP!

isRightButton
	^self button = 3!

padding1
	"Answer the <Integer> value of the receiver's 'padding1' field."

	^bytes byteAtOffset: _OffsetOf_padding1!

padding1: anInteger
	"Set the receiver's 'padding1' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding1 put: anInteger!

state
	"Answer the <Integer> value of the receiver's 'state' field."

	^bytes byteAtOffset: _OffsetOf_state!

state: anInteger
	"Set the receiver's 'state' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_state put: anInteger!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

which
	"Answer the <Integer> value of the receiver's 'which' field."

	^bytes dwordAtOffset: _OffsetOf_which!

which: anInteger
	"Set the receiver's 'which' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_which put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger! !
!SDL_MouseButtonEvent categoriesForMethods!
clicks!**compiled accessors**!public! !
clicks:!**compiled accessors**!public! !
isLeftButton!public! !
isMiddleButton!public! !
isMouseButtonDown!public! !
isMouseButtonUp!public! !
isRightButton!public! !
padding1!**compiled accessors**!public! !
padding1:!**compiled accessors**!public! !
state!**compiled accessors**!public! !
state:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
which!**compiled accessors**!public! !
which:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_MouseButtonEvent class methodsFor!

defineFields
	"SDL_MouseButtonEvent compileDefinition

	typedef struct SDL_MouseButtonEvent
	{
	    Uint32 type;        /**< ::SDL_MOUSEBUTTONDOWN or ::SDL_MOUSEBUTTONUP */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The window with mouse focus, if any */
	    Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
	    Uint8 button;       /**< The mouse button index */
	    Uint8 state;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
	    Uint8 clicks;       /**< 1 for single-click, 2 for double-click, etc. */
	    Uint8 padding1;
	    Sint32 x;           /**< X coordinate, relative to window */
	    Sint32 y;           /**< Y coordinate, relative to window */
	} SDL_MouseButtonEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #button type: BYTEField new;
		defineField: #state type: BYTEField new;
		defineField: #clicks type: BYTEField new;
		defineField: #padding1 type: BYTEField new;
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #which #button #state #clicks #padding1 #x #y)! !
!SDL_MouseButtonEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_MouseMotionEvent guid: (GUID fromString: '{532fc246-c023-4499-b64e-7d8e38583c3d}')!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_state' value: 16r10!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_which' value: 16rC!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_x' value: 16r14!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_xrel' value: 16r1C!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_y' value: 16r18!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_yrel' value: 16r20!
SDL_MouseMotionEvent comment: ''!
!SDL_MouseMotionEvent categoriesForClass!External-Data-Structured! !
!SDL_MouseMotionEvent methodsFor!

position
	^self x @ self y!

state
	"Answer the <Integer> value of the receiver's 'state' field."

	^bytes dwordAtOffset: _OffsetOf_state!

state: anInteger
	"Set the receiver's 'state' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_state put: anInteger!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

which
	"Answer the <Integer> value of the receiver's 'which' field."

	^bytes dwordAtOffset: _OffsetOf_which!

which: anInteger
	"Set the receiver's 'which' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_which put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

xrel
	"Answer the <Integer> value of the receiver's 'xrel' field."

	^bytes sdwordAtOffset: _OffsetOf_xrel!

xrel: anInteger
	"Set the receiver's 'xrel' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_xrel put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger!

yrel
	"Answer the <Integer> value of the receiver's 'yrel' field."

	^bytes sdwordAtOffset: _OffsetOf_yrel!

yrel: anInteger
	"Set the receiver's 'yrel' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_yrel put: anInteger! !
!SDL_MouseMotionEvent categoriesForMethods!
position!public! !
state!**compiled accessors**!public! !
state:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
which!**compiled accessors**!public! !
which:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
xrel!**compiled accessors**!public! !
xrel:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
yrel!**compiled accessors**!public! !
yrel:!**compiled accessors**!public! !
!

!SDL_MouseMotionEvent class methodsFor!

defineFields
	"SDL_MouseMotionEvent compileDefinition

	typedef struct SDL_MouseMotionEvent
	{
	    Uint32 type;        /**< ::SDL_MOUSEMOTION */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The window with mouse focus, if any */
	    Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
	    Uint32 state;       /**< The current button state */
	    Sint32 x;           /**< X coordinate, relative to window */
	    Sint32 y;           /**< Y coordinate, relative to window */
	    Sint32 xrel;        /**< The relative motion in the X direction */
	    Sint32 yrel;        /**< The relative motion in the Y direction */
	} SDL_MouseMotionEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #state type: DWORDField new;
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #xrel type: SDWORDField new;
		defineField: #yrel type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #which #state #x #y #xrel #yrel)! !
!SDL_MouseMotionEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_MouseWheelEvent guid: (GUID fromString: '{43665aae-f4c0-47a2-ba25-3c6da6024eb2}')!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_direction' value: 16r18!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_mouseX' value: 16r24!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_mouseY' value: 16r28!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_preciseX' value: 16r1C!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_preciseY' value: 16r20!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_which' value: 16rC!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_x' value: 16r10!
SDL_MouseWheelEvent addClassConstant: '_OffsetOf_y' value: 16r14!
SDL_MouseWheelEvent comment: ''!
!SDL_MouseWheelEvent categoriesForClass!External-Data-Structured! !
!SDL_MouseWheelEvent methodsFor!

direction
	"Answer the <Integer> value of the receiver's 'direction' field."

	^bytes dwordAtOffset: _OffsetOf_direction!

direction: anInteger
	"Set the receiver's 'direction' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_direction put: anInteger!

isVertical
	^self direction = 0!

mouseX
	"Answer the <Integer> value of the receiver's 'mouseX' field."

	^bytes sdwordAtOffset: _OffsetOf_mouseX!

mouseX: anInteger
	"Set the receiver's 'mouseX' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_mouseX put: anInteger!

mouseY
	"Answer the <Integer> value of the receiver's 'mouseY' field."

	^bytes sdwordAtOffset: _OffsetOf_mouseY!

mouseY: anInteger
	"Set the receiver's 'mouseY' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_mouseY put: anInteger!

preciseX
	"Answer the <Float> value of the receiver's 'preciseX' field."

	^bytes floatAtOffset: _OffsetOf_preciseX!

preciseX: aFloat
	"Set the receiver's 'preciseX' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_preciseX put: aFloat!

preciseY
	"Answer the <Float> value of the receiver's 'preciseY' field."

	^bytes floatAtOffset: _OffsetOf_preciseY!

preciseY: aFloat
	"Set the receiver's 'preciseY' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_preciseY put: aFloat!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

which
	"Answer the <Integer> value of the receiver's 'which' field."

	^bytes dwordAtOffset: _OffsetOf_which!

which: anInteger
	"Set the receiver's 'which' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_which put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger!

x
	"Answer the <Integer> value of the receiver's 'x' field."

	^bytes sdwordAtOffset: _OffsetOf_x!

x: anInteger
	"Set the receiver's 'x' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_x put: anInteger!

y
	"Answer the <Integer> value of the receiver's 'y' field."

	^bytes sdwordAtOffset: _OffsetOf_y!

y: anInteger
	"Set the receiver's 'y' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_y put: anInteger! !
!SDL_MouseWheelEvent categoriesForMethods!
direction!**compiled accessors**!public! !
direction:!**compiled accessors**!public! !
isVertical!public! !
mouseX!**compiled accessors**!public! !
mouseX:!**compiled accessors**!public! !
mouseY!**compiled accessors**!public! !
mouseY:!**compiled accessors**!public! !
preciseX!**compiled accessors**!public! !
preciseX:!**compiled accessors**!public! !
preciseY!**compiled accessors**!public! !
preciseY:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
which!**compiled accessors**!public! !
which:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_MouseWheelEvent class methodsFor!

defineFields
	"SDL_MouseWheelEvent compileDefinition
	
	typedef struct SDL_MouseWheelEvent
	{
	    Uint32 type;        /**< ::SDL_MOUSEWHEEL */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The window with mouse focus, if any */
	    Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
	    Sint32 x;           /**< The amount scrolled horizontally, positive to the right and negative to the left */
	    Sint32 y;           /**< The amount scrolled vertically, positive away from the user and negative toward the user */
	    Uint32 direction;   /**< Set to one of the SDL_MOUSEWHEEL_* defines. When FLIPPED the values in X and Y will be opposite. Multiply by -1 to change them back */
	    float preciseX;     /**< The amount scrolled horizontally, positive to the right and negative to the left, with float precision (added in 2.0.18) */
	    float preciseY;     /**< The amount scrolled vertically, positive away from the user and negative toward the user, with float precision (added in 2.0.18) */
	    Sint32 mouseX;      /**< X coordinate, relative to window (added in 2.26.0) */
	    Sint32 mouseY;      /**< Y coordinate, relative to window (added in 2.26.0) */
	} SDL_MouseWheelEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #direction type: DWORDField new;
		defineField: #preciseX type: FLOATField new;
		defineField: #preciseY type: FLOATField new;
		defineField: #mouseX type: SDWORDField new;
		defineField: #mouseY type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #which #x #y #direction #preciseX #preciseY #mouseX #mouseY)! !
!SDL_MouseWheelEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_QuitEvent guid: (GUID fromString: '{75ade90c-54ff-49b4-b62c-d908bf60e9a9}')!
SDL_QuitEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_QuitEvent comment: ''!
!SDL_QuitEvent categoriesForClass!External-Data-Structured! !
!SDL_QuitEvent methodsFor!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger! !
!SDL_QuitEvent categoriesForMethods!
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
!

!SDL_QuitEvent class methodsFor!

defineFields
	"SDL_QuitEvent compileDefinition
	
	typedef struct SDL_QuitEvent
	{
		Uint32 type;        /**< ::SDL_QUIT */
		Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	} SDL_QuitEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new!

getFieldNames
	^#(#type #timestamp)! !
!SDL_QuitEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_SysWMEvent guid: (GUID fromString: '{ea8fb59c-d99c-4258-afe7-73d2d2384e77}')!
SDL_SysWMEvent comment: ''!
!SDL_SysWMEvent categoriesForClass!External-Data-Structured! !
SDL_TextEditingEvent guid: (GUID fromString: '{0258ccbb-5f47-499c-9c64-eedb44b62e2b}')!
SDL_TextEditingEvent comment: ''!
!SDL_TextEditingEvent categoriesForClass!External-Data-Structured! !
SDL_TextEditingExtEvent guid: (GUID fromString: '{3cdcc8a7-d1d3-41cd-a182-431db7470f00}')!
SDL_TextEditingExtEvent comment: ''!
!SDL_TextEditingExtEvent categoriesForClass!External-Data-Structured! !
SDL_TextInputEvent guid: (GUID fromString: '{05d8e7dc-6dfc-44c8-a7dc-6d2ce18a3854}')!
SDL_TextInputEvent addClassConstant: '_OffsetOf_text' value: 16rC!
SDL_TextInputEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_TextInputEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_TextInputEvent comment: ''!
!SDL_TextInputEvent categoriesForClass!External-Data-Structured! !
!SDL_TextInputEvent methodsFor!

text
	"Answer the <Utf8String> value of the receiver's 'text' field."

	^Utf8String fromAddress: bytes yourAddress + _OffsetOf_text!

text: anUtf8String
	"Set the receiver's 'text' field to the value of the argument, anUtf8String"

	| size |
	size := anUtf8String byteSize - 1 min: 31.
	anUtf8String
		replaceBytesOf: bytes
		from: ##(_OffsetOf_text + 1)
		to: _OffsetOf_text + size
		startingAt: 1.
	bytes byteAtOffset: _OffsetOf_text + size put: 0!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger! !
!SDL_TextInputEvent categoriesForMethods!
text!**compiled accessors**!public! !
text:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_TextInputEvent class methodsFor!

defineFields
	"
	SDL_TextInputEvent compileDefinition
	
	typedef struct SDL_TextInputEvent
	{
	    Uint32 type;                              /**< ::SDL_TEXTINPUT */
	    Uint32 timestamp;
	    Uint32 windowID;                          /**< The window with keyboard focus, if any */
	    char text[SDL_TEXTINPUTEVENT_TEXT_SIZE];  /**< The input text */
	} SDL_TextInputEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #text type: (StringField type: Utf8String length: 32)!

getFieldNames
	^#(#type #timestamp #windowID #text)! !
!SDL_TextInputEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_UserEvent guid: (GUID fromString: '{19bd1749-c253-4e51-977b-d19fc5dbd14f}')!
SDL_UserEvent addClassConstant: '_OffsetOf_code' value: 16rC!
SDL_UserEvent addClassConstant: '_OffsetOf_data1' value: 16r10!
SDL_UserEvent addClassConstant: '_OffsetOf_data2' value: 16r14!
SDL_UserEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_UserEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_UserEvent comment: ''!
!SDL_UserEvent categoriesForClass!External-Data-Structured! !
!SDL_UserEvent methodsFor!

code
	"Answer the <Integer> value of the receiver's 'code' field."

	^bytes sdwordAtOffset: _OffsetOf_code!

code: anInteger
	"Set the receiver's 'code' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_code put: anInteger!

data1
	"Answer the <ExternalAddress> value of the receiver's 'data1' field."

	^(bytes uintPtrAtOffset: _OffsetOf_data1) asExternalAddress!

data1: anExternalAddress
	"Set the receiver's 'data1' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_data1 put: anExternalAddress!

data2
	"Answer the <ExternalAddress> value of the receiver's 'data2' field."

	^(bytes uintPtrAtOffset: _OffsetOf_data2) asExternalAddress!

data2: anExternalAddress
	"Set the receiver's 'data2' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_data2 put: anExternalAddress!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger! !
!SDL_UserEvent categoriesForMethods!
code!**compiled accessors**!public! !
code:!**compiled accessors**!public! !
data1!**compiled accessors**!public! !
data1:!**compiled accessors**!public! !
data2!**compiled accessors**!public! !
data2:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_UserEvent class methodsFor!

defineFields
	"SDL_UserEvent compileDefinition
	
	typedef struct SDL_UserEvent
	{
	    Uint32 type;        /**< ::SDL_USEREVENT through ::SDL_LASTEVENT-1 */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The associated window if any */
	    Sint32 code;        /**< User defined event code */
	    void *data1;        /**< User defined data pointer */
	    void *data2;        /**< User defined data pointer */
	} SDL_UserEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #code type: SDWORDField new;
		defineField: #data1 type: LPVOIDField new;
		defineField: #data2 type: LPVOIDField new!

getFieldNames
	^#(#type #timestamp #windowID #code #data1 #data2)! !
!SDL_UserEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_WindowEvent guid: (GUID fromString: '{efce64d5-b7a9-4cff-819b-70f60ba1e5b6}')!
SDL_WindowEvent addClassConstant: '_OffsetOf_data1' value: 16r10!
SDL_WindowEvent addClassConstant: '_OffsetOf_data2' value: 16r14!
SDL_WindowEvent addClassConstant: '_OffsetOf_event' value: 16rC!
SDL_WindowEvent addClassConstant: '_OffsetOf_padding1' value: 16rD!
SDL_WindowEvent addClassConstant: '_OffsetOf_padding2' value: 16rE!
SDL_WindowEvent addClassConstant: '_OffsetOf_padding3' value: 16rF!
SDL_WindowEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_WindowEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_WindowEvent comment: ''!
!SDL_WindowEvent categoriesForClass!External-Data-Structured! !
!SDL_WindowEvent methodsFor!

data1
	"Answer the <Integer> value of the receiver's 'data1' field."

	^bytes sdwordAtOffset: _OffsetOf_data1!

data1: anInteger
	"Set the receiver's 'data1' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_data1 put: anInteger!

data2
	"Answer the <Integer> value of the receiver's 'data2' field."

	^bytes sdwordAtOffset: _OffsetOf_data2!

data2: anInteger
	"Set the receiver's 'data2' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_data2 put: anInteger!

event
	"Answer the <Integer> value of the receiver's 'event' field."

	^bytes byteAtOffset: _OffsetOf_event!

event: anInteger
	"Set the receiver's 'event' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_event put: anInteger!

isClose
	^self event = SDL_WINDOWEVENT_CLOSE!

isEnter
	^self event = SDL_WINDOWEVENT_ENTER!

isExposed
	^self event = SDL_WINDOWEVENT_EXPOSED!

isFocusGained
	^self event = SDL_WINDOWEVENT_FOCUS_GAINED!

isFocusLost
	^self event = SDL_WINDOWEVENT_FOCUS_LOST!

isHidden
	^self event = SDL_WINDOWEVENT_HIDDEN!

isLeave
	^self event = SDL_WINDOWEVENT_LEAVE!

isMaximized
	^self event = SDL_WINDOWEVENT_MAXIMIZED!

isMinimized
	^self event = SDL_WINDOWEVENT_MINIMIZED!

isMoved
	^self event = SDL_WINDOWEVENT_MOVED!

isResized
	^self event = SDL_WINDOWEVENT_RESIZED!

isRestored
	^self event = SDL_WINDOWEVENT_RESTORED!

isShown
	^self event = SDL_WINDOWEVENT_SHOWN!

isSizeChanged
	^self event = SDL_WINDOWEVENT_SIZE_CHANGED!

padding1
	"Answer the <Integer> value of the receiver's 'padding1' field."

	^bytes byteAtOffset: _OffsetOf_padding1!

padding1: anInteger
	"Set the receiver's 'padding1' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding1 put: anInteger!

padding2
	"Answer the <Integer> value of the receiver's 'padding2' field."

	^bytes byteAtOffset: _OffsetOf_padding2!

padding2: anInteger
	"Set the receiver's 'padding2' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding2 put: anInteger!

padding3
	"Answer the <Integer> value of the receiver's 'padding3' field."

	^bytes byteAtOffset: _OffsetOf_padding3!

padding3: anInteger
	"Set the receiver's 'padding3' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_padding3 put: anInteger!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger! !
!SDL_WindowEvent categoriesForMethods!
data1!public! !
data1:!public! !
data2!public! !
data2:!public! !
event!public! !
event:!public! !
isClose!public! !
isEnter!public! !
isExposed!public! !
isFocusGained!public! !
isFocusLost!public! !
isHidden!public! !
isLeave!public! !
isMaximized!public! !
isMinimized!public! !
isMoved!public! !
isResized!public! !
isRestored!public! !
isShown!public! !
isSizeChanged!public! !
padding1!public! !
padding1:!public! !
padding2!public! !
padding2:!public! !
padding3!public! !
padding3:!public! !
timestamp!public! !
timestamp:!public! !
windowID!public! !
windowID:!public! !
!

!SDL_WindowEvent class methodsFor!

defineFields
	"SDL_WindowEvent compileDefinition

	typedef struct SDL_WindowEvent
	{
	    Uint32 type;        /**< ::SDL_WINDOWEVENT */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The associated window */
	    Uint8 event;        /**< ::SDL_WindowEventID */
	    Uint8 padding1;
	    Uint8 padding2;
	    Uint8 padding3;
	    Sint32 data1;       /**< event dependent data */
	    Sint32 data2;       /**< event dependent data */
	} SDL_WindowEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #event type: BYTEField new;
		defineField: #padding1 type: BYTEField new;
		defineField: #padding2 type: BYTEField new;
		defineField: #padding3 type: BYTEField new;
		defineField: #data1 type: SDWORDField new;
		defineField: #data2 type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #event #padding1 #padding2 #padding3 #data1 #data2)! !
!SDL_WindowEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

SDL_Cursor guid: (GUID fromString: '{5104b28a-0cf4-44bf-bc3c-85f9fdd3235d}')!
SDL_Cursor comment: ''!
!SDL_Cursor categoriesForClass!Kernel-Objects! !
!SDL_Cursor methodsFor!

free
	self library freeCursor_cursor: self!

makeCurrent
	self library setCursor_cursor: self! !
!SDL_Cursor categoriesForMethods!
free!public! !
makeCurrent!public! !
!

!SDL_Cursor class methodsFor!

arrow
	^self systemCursor: SDL_SYSTEM_CURSOR_ARROW!

hand
	^self systemCursor: SDL_SYSTEM_CURSOR_HAND!

iBeam
	^self systemCursor: SDL_SYSTEM_CURSOR_IBEAM!

no
	^self systemCursor: SDL_SYSTEM_CURSOR_NO!

sizeAll
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZEALL!

sizeCrosshair
	^self systemCursor: SDL_SYSTEM_CURSOR_CROSSHAIR!

sizeNESW
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENESW!

sizeNS
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENS!

sizeNWSE
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENWSE!

sizeWE
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZEWE!

systemCursor: anInteger
	^SDL2Library default createSystemCursor_id: anInteger!

wait
	^self systemCursor: SDL_SYSTEM_CURSOR_WAIT!

waitArrow
	^self systemCursor: SDL_SYSTEM_CURSOR_WAITARROW! !
!SDL_Cursor class categoriesForMethods!
arrow!public! !
hand!public! !
iBeam!public! !
no!public! !
sizeAll!public! !
sizeCrosshair!public! !
sizeNESW!public! !
sizeNS!public! !
sizeNWSE!public! !
sizeWE!public! !
systemCursor:!public! !
wait!public! !
waitArrow!public! !
!

SDL_Renderer guid: (GUID fromString: '{bb968c30-e713-45d5-b727-54acecbcc8ac}')!
SDL_Renderer comment: ''!
!SDL_Renderer categoriesForClass!External-Data-Structured! !
!SDL_Renderer methodsFor!

clear
	self library renderClear_renderer: self!

createTexture: aPoint
	^self checkResult: (self library
				createTexture_renderer: self
				format: 0
				access: 1
				w: aPoint x asInteger
				h: aPoint y asInteger)!

createTextureFromSurface: aSDL_Surface
	^self checkResult: (self library createTextureFromSurface_renderer: self surface: aSDL_Surface)!

destroy
	self library destroyRenderer_renderer: self!

drawLineFrom: start to: end
	self library
		renderDrawLine_renderer: self
		x1: start x truncated
		y1: start y truncated
		x2: end x truncated
		y2: end y truncated!

drawRectangle: aRectangle
	self library renderDrawRect_renderer: self rect: aRectangle asSDLRect!

fillRectangle: aRectangle
	self library renderFillRect_renderer: self rect: aRectangle asSDLRect!

getWindow
	^self library renderGetWindow_renderer: self!

present
	self library renderPresent_renderer: self!

renderCopy: texture source: source destination: destination
	self library
		renderCopy_renderer: self
		texture: texture
		srcrect: (source ifNotNil: [source asSDLRect])
		dstrect: (destination ifNotNil: [destination asSDLRect])!

renderGeometry: texture vertices: vertices
	self library
		renderGeometry_renderer: self
		texture: nil
		vertices: (StructureArray withAll: vertices elementClass: SDL_Vertex)
		numVertices: vertices size
		indices: nil
		numIndices: 0!

renderGeometry: texture vertices: vertices indices: indices
	self library
		renderGeometry_renderer: self
		texture: nil
		vertices: (StructureArray withAll: vertices elementClass: SDL_Vertex)
		numVertices: vertices size
		indices: (SDWORDArray withAll: indices)
		numIndices: indices size!

renderReadPixels: aRectangle format: anInteger pixels: pixels pitch: pitch
	self checkResult: (self library
				renderReadPixels_renderer: self
				rect: (aRectangle ifNotNil: [aRectangle asSDLRect])
				format: anInteger
				pixels: pixels
				pitch: pitch)!

resetClip
	self library renderSetClipRect_renderer: self rect: nil!

setClip: aRectangle
	self library renderSetClipRect_renderer: self rect: aRectangle asSDLRect!

setDrawBlendMode: anInteger
	self library setRenderDrawBlendMode_renderer: self blendMode: anInteger!

setDrawColor: aColor
	self library
		setRenderDrawColor_renderer: self
		r: aColor red
		g: aColor green
		b: aColor blue
		a: aColor alpha! !
!SDL_Renderer categoriesForMethods!
clear!public! !
createTexture:!public! !
createTextureFromSurface:!public! !
destroy!public! !
drawLineFrom:to:!public! !
drawRectangle:!public! !
fillRectangle:!public! !
getWindow!public! !
present!public! !
renderCopy:source:destination:!public! !
renderGeometry:vertices:!public! !
renderGeometry:vertices:indices:!public! !
renderReadPixels:format:pixels:pitch:!public! !
resetClip!public! !
setClip:!public! !
setDrawBlendMode:!public! !
setDrawColor:!public! !
!

SDL_Surface guid: (GUID fromString: '{3aabd7c9-80d5-4b61-8b6d-7b078df05699}')!
SDL_Surface addClassConstant: '_OffsetOf_clip_rect' value: 16r24!
SDL_Surface addClassConstant: '_OffsetOf_flags' value: 16r0!
SDL_Surface addClassConstant: '_OffsetOf_format' value: 16r4!
SDL_Surface addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_Surface addClassConstant: '_OffsetOf_list_blitmap' value: 16r20!
SDL_Surface addClassConstant: '_OffsetOf_locked' value: 16r1C!
SDL_Surface addClassConstant: '_OffsetOf_map' value: 16r34!
SDL_Surface addClassConstant: '_OffsetOf_pitch' value: 16r10!
SDL_Surface addClassConstant: '_OffsetOf_pixels' value: 16r14!
SDL_Surface addClassConstant: '_OffsetOf_refcount' value: 16r38!
SDL_Surface addClassConstant: '_OffsetOf_userdata' value: 16r18!
SDL_Surface addClassConstant: '_OffsetOf_w' value: 16r8!
SDL_Surface comment: ''!
!SDL_Surface categoriesForClass!External-Data-Structured! !
!SDL_Surface methodsFor!

clip_rect
	"Answer the <SDL_Rect> value of the receiver's 'clip_rect' field."

	^SDL_Rect fromAddress: bytes yourAddress + _OffsetOf_clip_rect!

flags
	"Answer the <Integer> value of the receiver's 'flags' field."

	^bytes dwordAtOffset: _OffsetOf_flags!

format
	"Answer the <SDL_PixelFormat> value of the receiver's 'format' field."

	^SDL_PixelFormat fromAddress: (bytes intPtrAtOffset: _OffsetOf_format)!

free
	self library freeSurface_surface: self!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

list_blitmap
	"Answer the <ExternalAddress> value of the receiver's 'list_blitmap' field."

	^(bytes uintPtrAtOffset: _OffsetOf_list_blitmap) asExternalAddress!

list_blitmap: anExternalAddress
	"Set the receiver's 'list_blitmap' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_list_blitmap put: anExternalAddress!

locked
	"Answer the <Integer> value of the receiver's 'locked' field."

	^bytes sdwordAtOffset: _OffsetOf_locked!

map
	"Answer the <SDL_BlitMap> value of the receiver's 'map' field."

	^SDL_BlitMap fromAddress: (bytes intPtrAtOffset: _OffsetOf_map)!

map: aSDL_BlitMap
	"Set the receiver's 'map' field to the value of the argument, aSDL_BlitMap"

	bytes uintPtrAtOffset: _OffsetOf_map put: aSDL_BlitMap yourAddress!

pitch
	"Answer the <Integer> value of the receiver's 'pitch' field."

	^bytes sdwordAtOffset: _OffsetOf_pitch!

pixels
	"Answer the <ExternalAddress> value of the receiver's 'pixels' field."

	^(bytes uintPtrAtOffset: _OffsetOf_pixels) asExternalAddress!

pixels: anExternalAddress
	"Set the receiver's 'pixels' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_pixels put: anExternalAddress!

refcount
	"Answer the <Integer> value of the receiver's 'refcount' field."

	^bytes sdwordAtOffset: _OffsetOf_refcount!

refcount: anInteger
	"Set the receiver's 'refcount' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refcount put: anInteger!

saveAsPNG: aString
	SDL2ImageLibrary default savePNG_surface: self file: aString!

userdata
	"Answer the <ExternalAddress> value of the receiver's 'userdata' field."

	^(bytes uintPtrAtOffset: _OffsetOf_userdata) asExternalAddress!

userdata: anExternalAddress
	"Set the receiver's 'userdata' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_userdata put: anExternalAddress!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w! !
!SDL_Surface categoriesForMethods!
clip_rect!**compiled accessors**!public! !
flags!**compiled accessors**!public! !
format!**compiled accessors**!public! !
free!public! !
h!**compiled accessors**!public! !
list_blitmap!**compiled accessors**!public! !
list_blitmap:!**compiled accessors**!public! !
locked!**compiled accessors**!public! !
map!**compiled accessors**!public! !
map:!**compiled accessors**!public! !
pitch!**compiled accessors**!public! !
pixels!**compiled accessors**!public! !
pixels:!**compiled accessors**!public! !
refcount!**compiled accessors**!public! !
refcount:!**compiled accessors**!public! !
saveAsPNG:!public! !
userdata!**compiled accessors**!public! !
userdata:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
!

!SDL_Surface class methodsFor!

defineFields
	"SDL_Surface compileDefinition
	
	typedef struct SDL_Surface
	{
	    Uint32 flags;               /**< Read-only */
	    SDL_PixelFormat *format;    /**< Read-only */
	    int w, h;                   /**< Read-only */
	    int pitch;                  /**< Read-only */
	    void *pixels;               /**< Read-write */

	    /** Application data associated with the surface */
	    void *userdata;             /**< Read-write */

	    /** information needed for surfaces requiring locks */
	    int locked;                 /**< Read-only */

	    /** list of BlitMap that hold a reference to this surface */
	    void *list_blitmap;         /**< Private */

	    /** clipping information */
	    SDL_Rect clip_rect;         /**< Read-only */

	    /** info for fast blit mapping to other surfaces */
	    SDL_BlitMap *map;           /**< Private */

	    /** Reference count -- used when freeing surface */
	    int refcount;               /**< Read-mostly */
	} SDL_Surface;"

	self
		defineField: #flags type: DWORDField new beReadOnly;
		defineField: #format type: (PointerField type: SDL_PixelFormat) beReadOnly;
		defineField: #w type: SDWORDField new beReadOnly;
		defineField: #h type: SDWORDField new beReadOnly;
		defineField: #pitch type: SDWORDField new beReadOnly;
		defineField: #pixels type: LPVOIDField new;
		defineField: #userdata type: LPVOIDField new;
		defineField: #locked type: SDWORDField new beReadOnly;
		defineField: #list_blitmap type: LPVOIDField new;
		defineField: #clip_rect type: (StructureField type: SDL_Rect) beReadOnly;
		defineField: #map type: (PointerField type: SDL_BlitMap);
		defineField: #refcount type: SDWORDField new!

fromFile: aString
	^SDL2ImageLibrary default load_file: aString!

getFieldNames
	^#(#flags #format #w #h #pitch #pixels #userdata #locked #list_blitmap #clip_rect #map #refcount)!

newExtent: aPoint
	^SDL2Library default
		createRGBSurface_flags: 0
		width: aPoint x
		height: aPoint y
		depth: 32
		rMask: 0
		gMask: 0
		bMask: 0
		aMask: 0! !
!SDL_Surface class categoriesForMethods!
defineFields!public! !
fromFile:!public! !
getFieldNames!**compiled accessors**!constants!private! !
newExtent:!public! !
!

SDL_Texture guid: (GUID fromString: '{e253ed78-06ba-402e-8f07-b2da561b1b2c}')!
SDL_Texture comment: ''!
!SDL_Texture categoriesForClass!External-Data-Structured! !
!SDL_Texture methodsFor!

destroy
	self library destroyTexture_texture: self!

getExtent
	| width height |
	width := SDWORD new.
	height := SDWORD new.
	self library
		queryTexture_renderer: self
		format: nil
		access: nil
		w: width
		h: height.
	^width value @ height value!

getWidth
	| width |
	width := SDWORD new.
	self library
		queryTexture_renderer: self
		format: nil
		access: nil
		w: width
		h: nil.
	^width value!

lock
	^self lockRectangle: nil!

lockRectangle: aRectangle
	| pitch pixels |
	pitch := SDWORD new.
	pixels := ExternalAddress new.
	self checkResult: (self library
				lockTexture_texture: self
				rect: (aRectangle ifNotNil: [aRectangle asSDLRect])
				pixels: pixels
				pitch: pitch).
	^pixels!

unlock
	self checkResult: (self library unlockTexture_texture: self)!

updatePixels: pixels pitch: pitch
	self checkResult: (self library
				updateTexture_texture: self
				rect: nil
				pixels: pixels
				pitch: pitch)!

updateRectangle: aRectangle pixels: pixels pitch: pitch
	self checkResult: (self library
				updateTexture_texture: self
				rect: aRectangle asSDLRect
				pixels: pixels
				pitch: pitch)! !
!SDL_Texture categoriesForMethods!
destroy!public! !
getExtent!public! !
getWidth!public! !
lock!public! !
lockRectangle:!public! !
unlock!public! !
updatePixels:pitch:!public! !
updateRectangle:pixels:pitch:!public! !
!

SDL_Window guid: (GUID fromString: '{24a0a78e-6a0c-472a-9fda-77b8354d6b95}')!
SDL_Window comment: ''!
!SDL_Window categoriesForClass!External-Data-Structured! !
!SDL_Window methodsFor!

createRenderer 
	^self library
		createRenderer_window: self
		index: -1
		flags: 0!

destroy
	^self library destroyWindow_window: self!

extent
	^self getExtent!

getExtent
	| width height |
	width := DWORD new.
	height := DWORD new.
	self library getWindowSize_window: self w: width h: height.
	^width value @ height value!

getHandle
	| version info |
	version := SDL_Version new.
	self library getVersion_ver: version.
	info := SDL_SysWMinfo new.
	info version: version.
	self library getWindowWMInfo_window: self info: info.
	^ExternalHandle fromInteger: info window!

getID
	^self library getWindowID_window: self!

getPosition
	| x y |
	x := SDWORD new.
	y := SDWORD new.
	self library
		getWindowPosition_window: self
		x: x
		y: y.
	^x asInteger @ y asInteger!

getSurface
	^self library getWindowSurface_window: self!

rectangle
	^Rectangle origin: 0@0 extent: self getExtent!

setIcon: aSDLSurface
	^self library setWindowIcon_window: self icon: aSDLSurface!

setInputFocus
	^self library setWindowInputFocus_window: self!

updateSurface
	self library updateWindowSurface_window: self! !
!SDL_Window categoriesForMethods!
createRenderer!public! !
destroy!public! !
extent!public! !
getExtent!public! !
getHandle!public! !
getID!public! !
getPosition!public! !
getSurface!public! !
rectangle!public! !
setIcon:!public! !
setInputFocus!public! !
updateSurface!public! !
!

TTF_Font guid: (GUID fromString: '{585b18c9-4dea-447c-af6d-2d9852b57b07}')!
TTF_Font comment: ''!
!TTF_Font categoriesForClass!External-Data-Structured! !
!TTF_Font methodsFor!

close
	self library closeFont_font: self!

getFontKerningSizeGlyphs32Between: aCharacter and: anotherCharacter
	^self checkResult: (self library
				getFontKerningSizeGlyphs32_font: self
				previousCh: aCharacter code
				ch: anotherCharacter code)!

renderGlyph32Blended: aCharacter color: aColor
	^self checkResult: (self library
				renderGlyph32Blended_font: self
				ch: aCharacter code
				fg: aColor asSDLColor)!

renderUTF8BlendedWrapped: aString color: aColor wrapLength: anInteger
	^self checkResult: (self library
				renderUTF8BlendedWrapped_font: self
				text: aString
				fg: aColor asSDLColor
				wrapLength: anInteger truncated)!

setStyle: aFontStyle
	self library setFontStyle_font: self style: aFontStyle code!

sizeText: aString
	| width height |
	width := SDWORD new.
	height := SDWORD new.
	self checkResult: (self library
				sizeText_font: self
				text: aString
				w: width
				h: height).
	^width value @ height value! !
!TTF_Font categoriesForMethods!
close!public! !
getFontKerningSizeGlyphs32Between:and:!public! !
renderGlyph32Blended:color:!public! !
renderUTF8BlendedWrapped:color:wrapLength:!public! !
setStyle:!public! !
sizeText:!public! !
!

!TTF_Font class methodsFor!

fromFile: aString pointSize: anInteger
	^SDL2TTFLibrary default openFont_file: aString ptsize: anInteger! !
!TTF_Font class categoriesForMethods!
fromFile:pointSize:!public! !
!

DrawBezierCurve guid: (GUID fromString: '{6c1c924f-fec0-4f22-ac25-1d4ab5da81bf}')!
DrawBezierCurve comment: ''!
!DrawBezierCurve categoriesForClass!Unclassified! !
!DrawBezierCurve methodsFor!

color
	^color!

color: anObject
	color := anObject!

points
	^points!

points: anObject
	points := anObject!

width
	^width!

width: anObject
	width := anObject! !
!DrawBezierCurve categoriesForMethods!
color!public! !
color:!public! !
points!public! !
points:!public! !
width!public! !
width:!public! !
!

DrawBitmap guid: (GUID fromString: '{64c6d78f-53ac-43e4-84fe-88f503bc8aeb}')!
DrawBitmap comment: ''!
!DrawBitmap categoriesForClass!Kernel-Objects! !
!DrawBitmap methodsFor!

bitmap
	^bitmap!

bitmap: anObject
	bitmap := anObject!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !
!DrawBitmap categoriesForMethods!
bitmap!accessing!public! !
bitmap:!accessing!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

DrawImage guid: (GUID fromString: '{e179d881-b7e0-43c2-9d8e-d0d44865002b}')!
DrawImage comment: ''!
!DrawImage categoriesForClass!Kernel-Objects! !
!DrawImage methodsFor!

applyOffset: aPoint
	rectangle := Rectangle origin: (rectangle origin x + aPoint x) @ (rectangle origin y + aPoint y)
				corner: (rectangle corner x + aPoint x) @ (rectangle corner y + aPoint y)!

filePath
	^filePath!

filePath: anObject
	filePath := anObject!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !
!DrawImage categoriesForMethods!
applyOffset:!public! !
filePath!accessing!public! !
filePath:!accessing!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

DrawLine guid: (GUID fromString: '{fd5096a2-6069-41e3-96a8-ad80448a7a92}')!
DrawLine comment: ''!
!DrawLine categoriesForClass!Kernel-Objects! !
!DrawLine methodsFor!

applyOffset: aPoint
	start := start + aPoint.
	end := end + aPoint!

color
	^color!

color: anObject
	color := anObject!

end
	^end!

end: anObject
	end := anObject!

start
	^start!

start: anObject
	start := anObject!

width
	^width!

width: anObject
	width := anObject! !
!DrawLine categoriesForMethods!
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
end!accessing!public! !
end:!accessing!public! !
start!accessing!public! !
start:!accessing!public! !
width!accessing!public! !
width:!accessing!public! !
!

DrawRectangle guid: (GUID fromString: '{e4359af8-1f8b-4c2f-b2b4-7d05a06a4b6a}')!
DrawRectangle comment: ''!
!DrawRectangle categoriesForClass!Kernel-Objects! !
!DrawRectangle methodsFor!

color
	^color!

color: anObject
	color := anObject!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject!

width
	^width!

width: anObject
	width := anObject! !
!DrawRectangle categoriesForMethods!
color!accessing!public! !
color:!accessing!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
width!accessing!public! !
width:!accessing!public! !
!

DrawText guid: (GUID fromString: '{3bd8bdbd-fd9a-400b-b677-a972c22853c6}')!
DrawText comment: ''!
!DrawText categoriesForClass!Kernel-Objects! !
!DrawText methodsFor!

color
	^color!

color: anObject
	color := anObject!

font
	^font!

font: anObject
	font := anObject!

fontName
	^nil!

fontSize
	^fontSize!

fontSize: anInteger
	fontSize := anInteger!

fontStyle
	^fontStyle!

fontStyle: anObject
	fontStyle := anObject!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !
!DrawText categoriesForMethods!
color!accessing!public! !
color:!accessing!public! !
font!accessing!public! !
font:!accessing!public! !
fontName!public! !
fontSize!accessing!public! !
fontSize:!public! !
fontStyle!accessing!public! !
fontStyle:!accessing!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

DrawTexture guid: (GUID fromString: '{9c54abcc-ece9-4793-a9b1-77a901533e9b}')!
DrawTexture comment: ''!
!DrawTexture categoriesForClass!Kernel-Objects! !
!DrawTexture methodsFor!

initialize
	super initialize.
	stretch := false!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject!

stretch
	^stretch!

stretch: anObject
	stretch := anObject!

texture
	^texture!

texture: anObject
	texture := anObject! !
!DrawTexture categoriesForMethods!
initialize!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
stretch!accessing!public! !
stretch:!accessing!public! !
texture!accessing!public! !
texture:!accessing!public! !
!

FillCommand guid: (GUID fromString: '{9345b0a7-07e4-47aa-b397-b75143ed37c5}')!
FillCommand comment: ''!
!FillCommand categoriesForClass!Kernel-Objects! !
!FillCommand methodsFor!

color
	^color!

color: anObject
	color := anObject! !
!FillCommand categoriesForMethods!
color!accessing!public! !
color:!accessing!public! !
!

DrawJPEG guid: (GUID fromString: '{e92fb6ff-35d7-42b2-a893-49f6ada5f647}')!
DrawJPEG comment: ''!
!DrawJPEG categoriesForClass!Kernel-Objects! !
!DrawJPEG methodsFor!

data
	^data!

data: anObject
	data := anObject! !
!DrawJPEG categoriesForMethods!
data!accessing!public! !
data:!accessing!public! !
!

DrawCharacter guid: (GUID fromString: '{2c835f33-acba-4114-9e01-679cd3df4f18}')!
DrawCharacter comment: ''!
!DrawCharacter categoriesForClass!Kernel-Objects! !
!DrawCharacter methodsFor!

character
	^character!

character: anObject
	character := anObject! !
!DrawCharacter categoriesForMethods!
character!accessing!public! !
character:!accessing!public! !
!

DrawString guid: (GUID fromString: '{273828c6-dafe-4135-b556-04cda45a2564}')!
DrawString comment: ''!
!DrawString categoriesForClass!Kernel-Objects! !
!DrawString methodsFor!

format
	^format!

format: anObject
	format := anObject!

string
	^string!

string: anObject
	string := anObject! !
!DrawString categoriesForMethods!
format!accessing!public! !
format:!accessing!public! !
string!accessing!public! !
string:!accessing!public! !
!

FillPolygon guid: (GUID fromString: '{de6ab2ee-3965-49a1-90e3-23bffc918c91}')!
FillPolygon comment: ''!
!FillPolygon categoriesForClass!Kernel-Objects! !
!FillPolygon methodsFor!

points
	^points!

points: anObject
	points := anObject! !
!FillPolygon categoriesForMethods!
points!accessing!public! !
points:!accessing!public! !
!

FillQuadrilateral guid: (GUID fromString: '{87549300-4a7b-4af5-b39e-83a1a8d4397a}')!
FillQuadrilateral comment: ''!
!FillQuadrilateral categoriesForClass!Kernel-Objects! !
!FillQuadrilateral methodsFor!

points
	^{vertexOne. vertexTwo. vertexThree. vertexFour}!

vertexFour
	^vertexFour!

vertexFour: anObject
	vertexFour := anObject!

vertexOne
	^vertexOne!

vertexOne: anObject
	vertexOne := anObject!

vertexThree
	^vertexThree!

vertexThree: anObject
	vertexThree := anObject!

vertexTwo
	^vertexTwo!

vertexTwo: anObject
	vertexTwo := anObject! !
!FillQuadrilateral categoriesForMethods!
points!public! !
vertexFour!accessing!public! !
vertexFour:!accessing!public! !
vertexOne!accessing!public! !
vertexOne:!accessing!public! !
vertexThree!accessing!public! !
vertexThree:!accessing!public! !
vertexTwo!accessing!public! !
vertexTwo:!accessing!public! !
!

FillRectangle guid: (GUID fromString: '{86298fce-d92b-436c-9f3a-841458642813}')!
FillRectangle comment: ''!
!FillRectangle categoriesForClass!Kernel-Objects! !
!FillRectangle methodsFor!

applyOffset: aPoint
	rectangle := Rectangle origin: (rectangle origin x + aPoint x) @ (rectangle origin y + aPoint y)
				corner: (rectangle corner x + aPoint x) @ (rectangle corner y + aPoint y)!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject! !
!FillRectangle categoriesForMethods!
applyOffset:!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
!

FillTriangle guid: (GUID fromString: '{56c6ac68-c0a2-4b7e-a2f9-bb20b048164c}')!
FillTriangle comment: ''!
!FillTriangle categoriesForClass!Kernel-Objects! !
!FillTriangle methodsFor!

points
	^{vertexOne. vertexTwo. vertexThree}!

vertexOne
	^vertexOne!

vertexOne: anObject
	vertexOne := anObject!

vertexThree
	^vertexThree!

vertexThree: anObject
	vertexThree := anObject!

vertexTwo
	^vertexTwo!

vertexTwo: anObject
	vertexTwo := anObject! !
!FillTriangle categoriesForMethods!
points!public! !
vertexOne!accessing!public! !
vertexOne:!accessing!public! !
vertexThree!accessing!public! !
vertexThree:!accessing!public! !
vertexTwo!accessing!public! !
vertexTwo:!accessing!public! !
!

SDLSessionManager guid: (GUID fromString: '{67b7d097-7649-4461-8bc0-b67e11b821bd}')!
SDLSessionManager comment: ''!
!SDLSessionManager categoriesForClass!Kernel-Objects! !
!SDLSessionManager methodsFor!

basicShutdown
	"Private - Perform basic system shutdown operations, just prior to the VM putting
	out the lights."

	self windowSystemShutdown.
	super basicShutdown!

basicTertiaryStartup
	"Perform tertiary system startup operations."

	self logComment: self applicationName, ' started'.
	inputState onStartup!

clearSessionState
	"Clear any state saved down for a image save which is will not be required until that saved image is
	rehydrated."

	self clearWindowState!

clearWindowState
	"Private - Clear the state of the top-level windows."

	savedWindows := nil!

inputStateClass
	^SDLInputState!

keepAlive
	inputState keepAlive!

main!

onInputLanguageChanged: aWindowsEvent!

onSettingChanged: aSettingsChangeEvent
	"Private - A system setting has been changed. This could be any of a wide range of things from a theme change,
	regional settings, even policy. The notifications come in thick and fast because they are sent to every top-level
	window. We consolidate them by queuing them up for coalescing any that arrive within a 1-second window."

	settingsChanged add: {aSettingsChangeEvent area. aSettingsChangeEvent uiAction}.
	inputState msgWindow setTimer: SettingsChangeTimerId interval: 1000!

onTimeChanged: aWindowsEvent!

parseCmdLineFlags
	!

resourceManager
	"Answer the resource manager to use to locate resources"

	^ResourceIdentifier!

restoreWindowState
	"Private - Restore the state of the persistant top-level windows."

	savedWindows notNil ifTrue: [
		savedWindows do: [:each | 
			[each restore] on: ProcessTermination do: [:e |]]]!

saveSessionState
	"Save down any session state that needs to be preserved and which is not automatically
	preserved by a normal image save. Examples would be externally managed resources
	such as Windows."

	self saveWindowState!

saveWindowState
	"Private - Save the state of the top-level windows."

	inputState purgeDeadWindows.
	savedWindows := self topLevelWindowsInZOrder reverse collect: [ :w | ViewState recordStateOf: w forRecreate: false]

!

startUI
	"Start up the input loop/message loop (instruct InputState appropriate depending on whether
	this is a GUI or console session)."

	self windowSystemStartup.
	self inputState guiStartup
!

tertiaryStartup
	"Perform GUI-system tertiary startup"

	super tertiaryStartup.
	self trigger: #sessionReady!

topLevelWindows
	"Answer a collection of the top-level windows which are currently open."

	^self inputState topLevelWindows select: [:w | w isPersistentView]!

topLevelWindowsInZOrder
	"Answer a collection of the top-level windows which are currently open."

	^self inputState topLevelWindowsInZOrder select: [:w | w isPersistentView]!

windowSystemShutdown
!

windowSystemStartup
! !
!SDLSessionManager categoriesForMethods!
basicShutdown!operations-shutdown!private! !
basicTertiaryStartup!operations-startup!public! !
clearSessionState!operations!public! !
clearWindowState!operations-saving!private! !
inputStateClass!constants!private! !
keepAlive!public! !
main!public! !
onInputLanguageChanged:!public! !
onSettingChanged:!event handling!private! !
onTimeChanged:!public! !
parseCmdLineFlags!operations-startup!private! !
resourceManager!accessing!public! !
restoreWindowState!operations-startup!private! !
saveSessionState!operations!public! !
saveWindowState!operations-saving!private! !
startUI!operations-startup!public! !
tertiaryStartup!operations-startup!public! !
topLevelWindows!accessing!public! !
topLevelWindowsInZOrder!accessing!public! !
windowSystemShutdown!operations-shutdown!private! !
windowSystemStartup!operations-startup!private! !
!

!SDLSessionManager class methodsFor!

icon
	"Answers an Icon that can be used to represent this class"

	^Icon window!

isConsoleApplication
	"Answer whether the sessions managed by instances of the receiver are for a console application 
	(as opposed to a GUI application, which is a completely separate thing under Windows)."

	^false!

isRuntime
	^true! !
!SDLSessionManager class categoriesForMethods!
icon!constants!development!public! !
isConsoleApplication!public!testing! !
isRuntime!public! !
!

"Binary Globals"!

