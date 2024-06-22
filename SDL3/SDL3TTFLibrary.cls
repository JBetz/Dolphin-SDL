"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #SDL3TTFLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL3TTFLibrary guid: (GUID fromString: '{ca75e275-9381-4cf6-a337-2384f3ab7f23}')!

SDL3TTFLibrary comment: ''!

!SDL3TTFLibrary categoriesForClass!Unclassified! !

!SDL3TTFLibrary methodsFor!

closeFont_font: font
	<cdecl: void TTF_CloseFont TTF_Font*>
	^self invalidCall: _failureCode!

fontLineSkip_font: font
	<cdecl: sdword TTF_FontLineSkip TTF_Font*>
	^self invalidCall: _failureCode!

getFontKerningSizeGlyphs32_font: font previousCh: previousCh ch: ch
	<cdecl: sdword TTF_GetFontKerningSizeGlyphs32 TTF_Font* dword dword>
	^self invalidCall: _failureCode!

glyphMetrics32_font: font ch: ch minx: minx maxx: maxx miny: miny maxy: maxy advance: advance
	<cdecl: sdword TTF_GlyphMetrics32 TTF_Font* dword sdword* sdword* sdword* sdword* sdword*>
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

quitIfOpen
	self isOpen ifTrue: [self quit]!

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

!SDL3TTFLibrary categoriesForMethods!
closeFont_font:!public! !
fontLineSkip_font:!public! !
getFontKerningSizeGlyphs32_font:previousCh:ch:!public! !
glyphMetrics32_font:ch:minx:maxx:miny:maxy:advance:!public! !
init!public! !
measureText_font:text:measureWidth:extent:count:!public! !
measureUTF8_font:text:measureWidth:extent:count:!public! !
openFont_file:ptsize:!public! !
openFontIndex_file:ptsize:index:!public! !
quit!public! !
quitIfOpen!public! !
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

!SDL3TTFLibrary class methodsFor!

fileName
	^'SDL3_ttf'! !

!SDL3TTFLibrary class categoriesForMethods!
fileName!public! !
!

