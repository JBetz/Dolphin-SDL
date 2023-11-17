"Filed out from Dolphin Smalltalk"!

Object subclass: #Renderer2D
	instanceVariableNames: 'renderQueue offset clip isEnabled fontCache sdlRenderer'
	classVariableNames: ''
	poolDictionaries: 'TTFConstants'
	classInstanceVariableNames: ''!
Renderer2D guid: (GUID fromString: '{9be79942-98a4-44d7-8072-de4700712167}')!
Renderer2D comment: ''!
!Renderer2D categoriesForClass!Kernel-Objects! !
!Renderer2D methodsFor!

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
	^self createTextureFromSurface: surface!

createStringTexture: aDrawString
	| font texture surface |
	font := self
				lookupFont: (aDrawString fontName ifNil: [self defaultFontName])
				style: (aDrawString fontStyle ifNil: [TTFFontStyle normal])
				pointSize: (aDrawString fontSize ifNil: [18]).
	aDrawString fontStyle ifNotNil: [:aFontStyle | font setStyle: aFontStyle].
	surface := font
				renderUTF8BlendedWrapped: aDrawString string displayString
				color: (aDrawString color ifNil: [Color black])
				wrapLength: aDrawString rectangle width.
	aDrawString fontStyle ifNotNil: [font setStyle: TTFFontStyle normal].
	texture := self createTextureFromSurface: surface.
	surface destroy.
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
			fontCache removeAll]!

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

drawSurface: aSurface rectangle: aRectangle stretch: aBoolean zIndex: anInteger
	self addCommand: (DrawSurface new
				surface: aSurface;
				rectangle: aRectangle;
				stretch: aBoolean;
				zIndex: anInteger)!

drawSurface: aSurface rectangle: aRectangle zIndex: anInteger
	self addCommand: (DrawSurface new
				texture: aSurface;
				rectangle: aRectangle;
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
				style: (aDrawCharacter fontStyle ifNil: [TTFFontStyle normal])
				pointSize: aDrawCharacter fontSize.
	surface := font renderGlyph32Blended: aDrawCharacter character color: aDrawCharacter color.
	texture := self createTextureFromSurface: surface.
	surface destroy.
	textureExtent := texture getExtent.
	sdlRenderer
		renderTexture: texture
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
		renderTexture: texture
		source: nil
		destination: (Rectangle origin: aDrawString rectangle origin extent: texture getExtent).
	texture destroy!

executeDrawSurface: aDrawSurface
	| surface texture destinationRectangle |
	surface := aDrawSurface surface.
	surface ifNil: [^self].
	texture := self createTextureFromSurface: surface.
	destinationRectangle := aDrawSurface stretch
				ifTrue: [aDrawSurface rectangle]
				ifFalse: 
					[| textureExtent |
					textureExtent := texture getExtent.
					Rectangle origin: aDrawSurface rectangle origin extent: textureExtent].
	sdlRenderer
		renderTexture: texture
		source: nil
		destination: destinationRectangle.
	texture destroy!

executeDrawTexture: aDrawTexture
	| texture destinationRectangle |
	texture := aDrawTexture texture.
	texture ifNil: [^self].
	destinationRectangle := aDrawTexture stretch
				ifTrue: [aDrawTexture rectangle]
				ifFalse: 
					[| textureExtent |
					textureExtent := texture getExtent.
					Rectangle origin: aDrawTexture rectangle origin extent: textureExtent].
	sdlRenderer
		renderTexture: texture
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
	SDL3TTFLibrary default init.
	SDL3ImageLibrary default init_flags: 0!

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
		fontStyle: TTFFontStyle normal!

measureString: aString fontSize: anInteger fontStyle: aFontStyle
	| font origin extent |
	font := self
				lookupFont: self defaultFontName
				style: (aFontStyle ifNil: [TTFFontStyle normal])
				pointSize: anInteger.
	origin := 0 @ 0.
	extent := font sizeText: aString.
	^Rectangle origin: origin extent: extent!

measureString: aString inRectangle: aRectangle fontSize: anInteger fontStyle: aFontStyle
	| font origin extent |
	font := self
				lookupFont: self defaultFontName
				style: (aFontStyle ifNil: [TTFFontStyle normal])
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
			surface destroy].
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
!Renderer2D categoriesForMethods!
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
drawSurface:rectangle:stretch:zIndex:!accessing!public! !
drawSurface:rectangle:zIndex:!accessing!public! !
drawTexture:rectangle:stretch:zIndex:!accessing!public! !
drawTexture:rectangle:zIndex:!accessing!public! !
enable!public! !
execute:!private! !
executeDrawCharacter:!private! !
executeDrawLine:!private! !
executeDrawRectangle:!private! !
executeDrawString:!private! !
executeDrawSurface:!private! !
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

!Renderer2D class methodsFor!

new
	^super new initialize! !
!Renderer2D class categoriesForMethods!
new!public! !
!

