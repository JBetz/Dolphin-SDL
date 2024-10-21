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

height
	^self library getFontHeight_font: self!

initialize
	super initialize.
	glyphCache := LookupTable new!

lineSkip
	^library getFontLineSkip_font: self!

lookupGlyph: aCharacter color: aColor renderer: aRenderer
	| colorCache |
	colorCache := glyphCache at: aCharacter ifAbsentPut: [LookupTable new].
	^colorCache at: aColor
		ifAbsentPut: 
			[| surface |
			surface := self renderGlyphBlended: aCharacter color: aColor.
			aRenderer createTextureFromSurface: surface]!

renderGlyphBlended: aCharacter color: aColor
	| surface |
	surface := self library
				renderGlyphBlended_font: self
				ch: aCharacter code
				fg: aColor asSDLColor.
	self checkObjectResult: surface.
	^surface initialize!

renderTextBlendedWrapped: aString color: aColor wrapWidth: anInteger
	| surface |
	surface := self library
				renderTextBlendedWrapped_font: self
				text: aString
				length: aString size
				fg: aColor asSDLColor
				wrapWidth: anInteger truncated.
	self checkObjectResult: surface.
	^surface initialize!

setStyle: aFontStyle
	self library setFontStyle_font: self style: aFontStyle code! !

!TTF_Font categoriesForMethods!
close!public! !
destroy!public! !
getFontKerningSizeGlyphs32Between:and:!public! !
height!public! !
initialize!public! !
lineSkip!public! !
lookupGlyph:color:renderer:!public! !
renderGlyphBlended:color:!public! !
renderTextBlendedWrapped:color:wrapWidth:!public! !
setStyle:!public! !
!

!TTF_Font class methodsFor!

fromFile: aString pointSize: aFloat
	^(SDL3TTFLibrary default openFont_file: aString ptsize: aFloat asFloat) initialize! !

!TTF_Font class categoriesForMethods!
fromFile:pointSize:!public! !
!

