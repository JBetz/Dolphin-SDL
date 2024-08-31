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

destroy
	self close!

getFontKerningSizeGlyphs32Between: aCharacter and: anotherCharacter
	^self library
		getFontKerningSizeGlyphs32_font: self
		previousCh: aCharacter code
		ch: anotherCharacter code!

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
			[| surface |
			surface := self renderGlyph32Blended: aCharacter color: aColor.
			aRenderer createTextureFromSurface: surface]!

renderGlyph32Blended: aCharacter color: aColor
	| surface |
	surface := self library
				renderGlyph32Blended_font: self
				ch: aCharacter code
				fg: aColor asSDLColor.
	self checkObjectResult: surface.
	^surface initialize!

renderUTF8BlendedWrapped: aString color: aColor wrapLength: anInteger
	| surface |
	surface := self library
				renderUTF8BlendedWrapped_font: self
				text: aString
				fg: aColor asSDLColor
				wrapLength: anInteger truncated.
	self checkObjectResult: surface.
	^surface initialize!

setStyle: aFontStyle
	self library setFontStyle_font: self style: aFontStyle code!

sizeText: aString
	| width height |
	width := SDWORD new.
	height := SDWORD new.
	self checkBooleanResult: (self library
				sizeText_font: self
				text: aString
				w: width
				h: height).
	^width value @ height value! !

!TTF_Font categoriesForMethods!
close!public! !
destroy!public! !
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
	^(SDL3TTFLibrary default openFont_file: aString ptsize: anInteger) initialize! !

!TTF_Font class categoriesForMethods!
fromFile:pointSize:!public! !
!

