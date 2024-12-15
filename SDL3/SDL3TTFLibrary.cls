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

createRendererTextEngine_renderer: renderer
	<cdecl: TTF_TextEngine* TTF_CreateRendererTextEngine SDL_Renderer*>
	^self invalidCall: _failureCode!

createText_engine: engine font: font text: text length: length
	<cdecl: TTF_Text* TTF_CreateText TTF_TextEngine* TTF_Font* char* dword>
	^self invalidCall: _failureCode!

deleteTextString_text: text offset: offset length: length
	<cdecl: bool TTF_DeleteTextString TTF_Text* sdword sdword>
	^self invalidCall: _failureCode!

destroyRendererTextEngine_engine: engine
	<cdecl: void TTF_DestroyRendererTextEngine TTF_TextEngine*>
	^self invalidCall: _failureCode!

destroyText_text: text
	<cdecl: void TTF_DestroyText TTF_Text*>
	^self invalidCall: _failureCode!

drawRendererText_text: text x: x y: y
	<cdecl: bool TTF_DrawRendererText TTF_Text* float float>
	^self invalidCall: _failureCode!

getFontHeight_font: font
	<cdecl: sdword TTF_GetFontHeight TTF_Font*>
	^self invalidCall: _failureCode!

getFontKerningSizeGlyphs32_font: font previousCh: previousCh ch: ch
	<cdecl: sdword TTF_GetFontKerningSizeGlyphs32 TTF_Font* dword dword>
	^self invalidCall: _failureCode!

getFontLineSkip_font: font
	<cdecl: sdword TTF_GetFontLineSkip TTF_Font*>
	^self invalidCall: _failureCode!

getGlyphMetrics_font: font ch: ch minx: minx maxx: maxx miny: miny maxy: maxy advance: advance
	<cdecl: bool TTF_GetGlyphMetrics TTF_Font* dword sdword* sdword* sdword* sdword* sdword*>
	^self invalidCall: _failureCode!

getNextTextSubString_text: text substring: substring next: next
	<cdecl: bool TTF_GetNextTextSubString TTF_Text* TTF_SubString* TTF_SubString*>
	^self invalidCall: _failureCode!

getPreviousTextSubString_text: text substring: substring previous: previous
	<cdecl: bool TTF_GetPreviousTextSubString TTF_Text* TTF_SubString* TTF_SubString*>
	^self invalidCall: _failureCode!

getTextColor_text: text r: r g: g b: b a: a
	<cdecl: bool TTF_GetTextColor TTF_Text* byte* byte* byte* byte*>
	^self invalidCall: _failureCode!

getTextColorFloat_text: text r: r g: g b: b a: a
	<cdecl: bool TTF_GetTextColorFloat TTF_Text* float* float* float* float*>
	^self invalidCall: _failureCode!

getTextPosition_text: text x: x y: y
	<cdecl: bool TTF_GetTextPosition TTF_Text* sdword* sdword*>
	^self invalidCall: _failureCode!

getTextSubString_text: text offset: offset substring: substring
	<cdecl: bool TTF_GetTextSubString TTF_Text* sdword TTF_SubString*>
	^self invalidCall: _failureCode!

getTextSubStringForLine_text: text line: line substring: substring
	<cdecl: bool TTF_GetTextSubStringForLine TTF_Text* sdword TTF_SubString*>
	^self invalidCall: _failureCode!

getTextSubStringForPoint_text: text x: x y: y substring: substring
	<cdecl: bool TTF_GetTextSubStringForPoint TTF_Text* sdword sdword TTF_SubString*>
	^self invalidCall: _failureCode!

getTextSubStringsForRange_text: text offset: offset length: length count: count
	<cdecl: void* TTF_GetTextSubStringsForRange TTF_Text* sdword sdword sdword*>
	^self invalidCall: _failureCode!

getTextWrapWidth_text: text wrapWidth: wrapWidth
	<cdecl: bool TTF_GetTextWrapWidth TTF_Text* sdword*>
	^self invalidCall: _failureCode!

init
	<cdecl: bool TTF_Init>
	^self invalidCall: _failureCode!

insertTextString_text: text offset: offset string: string length: length
	<cdecl: bool TTF_InsertTextString TTF_Text* sdword char* dword>
	^self invalidCall: _failureCode!

measureString_font: font text: text length: length maxWidth: maxWidth measuredWidth: measuredWidth measuredLength: measuredLength
	<cdecl: bool TTFMeasureString TTF_Font* char* dword sdword sdword* dword*>
	^self invalidCall: _failureCode!

openFont_file: file ptsize: ptsize
	<cdecl: TTF_Font* TTF_OpenFont lpstr float>
	^self invalidCall: _failureCode!

quit
	<cdecl: void TTF_Quit>
	^self invalidCall: _failureCode!

renderGlyphBlended_font: font ch: ch fg: fg
	<cdecl: SDL_Surface* TTF_RenderGlyph_Blended TTF_Font* dword SDL_Color>
	^self invalidCall: _failureCode!

renderTextBlendedWrapped_font: font text: text length: length fg: fg wrapWidth: wrapLength
	<cdecl: SDL_Surface* TTF_RenderText_Blended_Wrapped TTF_Font* char* dword SDL_Color sdword>
	^self invalidCall: _failureCode!

setFontSize_font: font ptsize: ptsize
	<cdecl: bool TTF_SetFontSize TTF_Font* float>
	^self invalidCall: _failureCode!

setFontStyle_font: font style: style
	<cdecl: void TTF_SetFontStyle TTF_Font* sdword>
	^self invalidCall: _failureCode!

setTextColor_text: text r: r g: g b: b a: a
	<cdecl: bool TTF_SetTextColor TTF_Text* byte byte byte byte>
	^self invalidCall: _failureCode!

setTextColorFloat_text: text r: r g: g b: b a: a
	<cdecl: bool TTF_SetTextColorFloat TTF_Text* float float float float>
	^self invalidCall: _failureCode!

setTextPosition_text: text x: x y: y
	<cdecl: bool TTF_SetTextPosition TTF_Text* sdword sdword>
	^self invalidCall: _failureCode!

setTextWrapWhitespaceVisible_text: text visible: visible
	<cdecl: bool TTF_SetTextWrapWhitespaceVisible TTF_Text* bool>
	^self invalidCall: _failureCode!

setTextWrapWidth_text: text wrapWidth: wrapWidth
	<cdecl: bool TTF_SetTextWrapWidth TTF_Text* sdword>
	^self invalidCall: _failureCode!

textWrapWhitespaceVisible_text: text
	<cdecl: bool TTF_TextWrapWhitespaceVisible TTF_Text*>
	^self invalidCall: _failureCode!

updateText_text: text
	<cdecl: bool TTF_UpdateText TTF_Text*>
	^self invalidCall: _failureCode!

version
	<cdecl: sdword TTF_Version>
	^self invalidCall: _failureCode!

wasInit
	<cdecl: sdword TTF_WasInit>
	^self invalidCall: _failureCode! !

!SDL3TTFLibrary categoriesForMethods!
closeFont_font:!public! !
createRendererTextEngine_renderer:!public! !
createText_engine:font:text:length:!public! !
deleteTextString_text:offset:length:!public! !
destroyRendererTextEngine_engine:!public! !
destroyText_text:!public! !
drawRendererText_text:x:y:!public! !
getFontHeight_font:!public! !
getFontKerningSizeGlyphs32_font:previousCh:ch:!public! !
getFontLineSkip_font:!public! !
getGlyphMetrics_font:ch:minx:maxx:miny:maxy:advance:!public! !
getNextTextSubString_text:substring:next:!public! !
getPreviousTextSubString_text:substring:previous:!public! !
getTextColor_text:r:g:b:a:!public! !
getTextColorFloat_text:r:g:b:a:!public! !
getTextPosition_text:x:y:!public! !
getTextSubString_text:offset:substring:!public! !
getTextSubStringForLine_text:line:substring:!public! !
getTextSubStringForPoint_text:x:y:substring:!public! !
getTextSubStringsForRange_text:offset:length:count:!public! !
getTextWrapWidth_text:wrapWidth:!public! !
init!public! !
insertTextString_text:offset:string:length:!public! !
measureString_font:text:length:maxWidth:measuredWidth:measuredLength:!public! !
openFont_file:ptsize:!public! !
quit!public! !
renderGlyphBlended_font:ch:fg:!public! !
renderTextBlendedWrapped_font:text:length:fg:wrapWidth:!public! !
setFontSize_font:ptsize:!public! !
setFontStyle_font:style:!public! !
setTextColor_text:r:g:b:a:!public! !
setTextColorFloat_text:r:g:b:a:!public! !
setTextPosition_text:x:y:!public! !
setTextWrapWhitespaceVisible_text:visible:!public! !
setTextWrapWidth_text:wrapWidth:!public! !
textWrapWhitespaceVisible_text:!public! !
updateText_text:!public! !
version!public! !
wasInit!public! !
!

!SDL3TTFLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'SDL3_ttf'! !

!SDL3TTFLibrary class categoriesForMethods!
fileName!public! !
!

