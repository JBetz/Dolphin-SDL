"Filed out from Dolphin Smalltalk"!

TTF_Object subclass: #TTF_Font
	instanceVariableNames: 'glyphCache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
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

initialize
	super initialize.
	glyphCache := LookupTable new!

lineSkip
	^library fontLineSkip_font: self!

lookupGlyph: aCharacter color: aColor renderer: aRenderer
	| colorCache |
	colorCache := glyphCache at: aCharacter ifAbsentPut: [LookupTable new].
	^colorCache at: aColor
		ifAbsentPut: 
			[| surface texture |
			surface := self renderGlyph32Blended: aCharacter color: aColor.
			texture := aRenderer createTextureFromSurface: surface.
			surface destroy.
			texture]!

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
initialize!public! !
lineSkip!public! !
lookupGlyph:color:renderer:!public! !
renderGlyph32Blended:color:!public! !
renderUTF8BlendedWrapped:color:wrapLength:!public! !
setStyle:!public! !
sizeText:!public! !
!

!TTF_Font class methodsFor!

fromFile: aString pointSize: anInteger
	^(SDL3TTFLibrary default openFont_file: aString ptsize: anInteger)
		initialize;
		yourself! !
!TTF_Font class categoriesForMethods!
fromFile:pointSize:!public! !
!

