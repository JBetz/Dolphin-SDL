"Filed out from Dolphin Smalltalk"!

Object subclass: #Renderer2D
	instanceVariableNames: 'renderQueue offset clip isEnabled fontCache sdlRenderer'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants TTFConstants'
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

clip
	^clip!

clip: aRectangle 
	clip := aRectangle!

createImageTexture: aString
	| surface |
	surface := SDL_Surface fromFile: aString.
	^self createTextureFromSurface: surface!

createStaticTexture: aPoint
	^sdlRenderer createTexture: aPoint access: SDL_TEXTUREACCESS_STATIC!

createStreamingTexture: aPoint
	^sdlRenderer createTexture: aPoint access: SDL_TEXTUREACCESS_STREAMING!

createStringTexture: aDrawString
	| font texture surface |
	font := self lookupFont: (aDrawString fontName ifNil: [self defaultFontFile])
				pointSize: (aDrawString fontSize ifNil: [18]).
	font setStyle: (aDrawString fontStyle ifNil: [TTFFontStyle normal]).
	surface := font
				renderUTF8BlendedWrapped: aDrawString string displayString
				color: (aDrawString color ifNil: [Color black])
				wrapLength: 0.
	aDrawString fontStyle ifNotNil: [font setStyle: TTFFontStyle normal].
	texture := self createTextureFromSurface: surface.
	^texture!

createTargetTexture: aPoint
	^sdlRenderer createTexture: aPoint access: SDL_TEXTUREACCESS_TARGET!

createTextureFromSurface: aSDL_Surface
	^sdlRenderer createTextureFromSurface: aSDL_Surface!

defaultFontFile
	^'default.ttf'!

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

drawCount
	| count |
	count := 0.
	renderQueue do: [:each | count := count + each size].
	^count!

drawImage: anImage rectangle: aRectangle stretch: aBoolean zIndex: anInteger
	self addCommand: (DrawImage new
				image: anImage;
				rectangle: aRectangle;
				stretch: aBoolean;
				zIndex: anInteger)!

drawLineFrom: startPoint to: endPoint color: color zIndex: zIndex
	self addCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				color: color;
				zIndex: zIndex)!

drawLineFrom: startPoint to: endPoint width: width color: color zIndex: zIndex
	self addCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				width: width;
				color: color;
				zIndex: zIndex)!

drawLineFrom: startPoint to: endPoint zIndex: anInteger 
	self addCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				zIndex: anInteger)!

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

duplicateTexture: aSDL_Texture 
	^sdlRenderer duplicateTexture: aSDL_Texture!

enable
	isEnabled := true!

execute: aRenderCommand
	| selector |
	selector := aRenderCommand asSelector.
	aRenderCommand clip ifNotNil: [:aRectangle | sdlRenderer setClip: aRectangle].
	self perform: selector with: aRenderCommand.
	aRenderCommand clip ifNotNil: [sdlRenderer resetClip]!

executeDrawImage: aDrawImage
	aDrawImage image isTexture ifTrue: [self executeDrawTexture: aDrawImage asDrawTexture].
	aDrawImage image isSurface ifTrue: [self executeDrawSurface: aDrawImage asDrawSurface]!

executeDrawLine: aDrawLine
	aDrawLine color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer renderLineFrom: aDrawLine start to: aDrawLine end!

executeDrawRectangle: aDrawRectangle
	aDrawRectangle color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer renderRectangle: aDrawRectangle rectangle!

executeDrawString: aDrawString
	| texture |
	texture := self createStringTexture: aDrawString.
	sdlRenderer
		renderTexture: texture
		source: nil
		destination: (Rectangle origin: aDrawString rectangle origin extent: texture getExtent)!

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
		destination: destinationRectangle!

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
	| color vertices indices |
	color := (aFillQuadrilateral color ifNil: [Color white]) asSDLColor.
	vertices := aFillQuadrilateral points collect: 
					[:aPoint |
					SDL_Vertex new
						position: (SDL_FPoint new
									x: aPoint x;
									y: aPoint y);
						color: color;
						tex_coord: SDL_FPoint new].
	indices := {0. 3. 1. 1. 2. 3} collect: [:anInteger | anInteger asSDword].
	sdlRenderer
		renderGeometry: nil
		vertices: vertices
		indices: indices!

executeFillRectangle: aFillRectangle
	aFillRectangle color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	aFillRectangle rectangle ifNotNil: [:aRectangle | sdlRenderer fillRectangle: aRectangle]!

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
	fontCache := LookupTable new!

isEnabled
	^isEnabled!

lookupFont: aString pointSize: anInteger
	| fontFileName index font |
	fontFileName := SessionManager current imageBase , aString.
	(File exists: fontFileName)
		ifFalse: [Error signal: ('Font file does not exist at: <1s>' expandMacrosWith: fontFileName)].
	index := aString -> anInteger.
	font := fontCache at: index ifAbsent: [nil].
	(font isNil or: [font isNull])
		ifTrue: [font := fontCache at: index put: (TTF_Font fromFile: fontFileName pointSize: anInteger)].
	^font!

offset
	^offset!

offset: aPoint
	offset := aPoint!

present
	sdlRenderer present!

resetClip
	clip := nil!

saveTexture: aSDLTexture fileName: aString
	| extent newTexture surface |
	extent := aSDLTexture getExtent.
	newTexture := self createTargetTexture: extent.
	sdlRenderer
		setRenderTarget: newTexture;
		setDrawColor: Color white;
		clear;
		renderTexture: aSDLTexture
			source: nil
			destination: nil.
	surface := sdlRenderer renderReadPixels: nil.
	surface saveAsPNG: aString.
	^surface!

sdlRenderer: aSDL_Renderer
	sdlRenderer := aSDL_Renderer!

subtractOffset: aPoint
	offset := offset - aPoint!

viewport
	^Rectangle origin: 0 @ 0 extent: sdlRenderer getWindow getExtent!

withClip: aRectangle do: aBlock
	| currentClip |
	aRectangle ifNil: [^aBlock value].
	currentClip := clip.
	clip := currentClip
				ifNotNil: 
					[(currentClip intersects: aRectangle)
						ifTrue: [currentClip intersect: aRectangle]
						ifFalse: [Rectangle empty]]
				ifNil: [aRectangle].
	aBlock value.
	clip := currentClip!

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
addCommand:!private! !
addOffset:!private! !
clear!public! !
clip!public! !
clip:!public! !
createImageTexture:!public! !
createStaticTexture:!public! !
createStreamingTexture:!public! !
createStringTexture:!public! !
createTargetTexture:!public! !
createTextureFromSurface:!public! !
defaultFontFile!public! !
disable!public! !
drawArrowFrom:to:width:color:zIndex:!accessing!public! !
drawCount!public! !
drawImage:rectangle:stretch:zIndex:!accessing!public! !
drawLineFrom:to:color:zIndex:!public! !
drawLineFrom:to:width:color:zIndex:!accessing!public! !
drawLineFrom:to:zIndex:!public! !
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
duplicateTexture:!public! !
enable!public! !
execute:!private! !
executeDrawImage:!executing!private! !
executeDrawLine:!executing!private! !
executeDrawRectangle:!executing!private! !
executeDrawString:!executing!private! !
executeDrawSurface:!executing!private! !
executeDrawTexture:!executing!private! !
executeFillQuadrilateral:!executing!private! !
executeFillRectangle:!executing!private! !
executeFillTriangle:!executing!private! !
fillPolygon:color:zIndex:!public! !
fillQuadrilateral:color:zIndex:!public! !
fillRectangle:color:zIndex:!public! !
fillTriangle:color:zIndex:!public! !
flush!public! !
forceRender:!public! !
initialize!public! !
isEnabled!public! !
lookupFont:pointSize:!public! !
offset!public! !
offset:!public! !
present!public! !
resetClip!public! !
saveTexture:fileName:!public! !
sdlRenderer:!accessing!public! !
subtractOffset:!private! !
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

