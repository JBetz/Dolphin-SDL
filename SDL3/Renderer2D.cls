﻿"Filed out from Dolphin Smalltalk"!

Object subclass: #Renderer2D
	instanceVariableNames: 'renderQueue offset clip isEnabled fontCache sdlRenderer'
	classVariableNames: 'CommandMap'
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

createStaticTexture: aPoint format: anInteger
	^sdlRenderer createTexture: aPoint access: SDL_TEXTUREACCESS_STATIC format: anInteger!

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
	^FileLocator imageRelative: 'default.ttf'!

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
	selector := CommandMap at: aRenderCommand class.
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
	aDrawString string isEmpty ifTrue: [^self].
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

executeFillPolygon: aFillPolygon
	| vertices indices |
	vertices := aFillPolygon vertices.
	indices := aFillPolygon indices.
	indices
		ifNil: [sdlRenderer renderGeometry: nil vertices: vertices]
		ifNotNil: 
			[sdlRenderer
				renderGeometry: nil
				vertices: vertices
				indices: (indices collect: [:each | each asSDword])]!

executeFillRectangle: aFillRectangle
	aFillRectangle color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	aFillRectangle rectangle ifNotNil: [:aRectangle | sdlRenderer fillRectangle: aRectangle]!

fillPolygon: anArrayOfVertices zIndex: anInteger
	self addCommand: (FillPolygon new
				vertices: anArrayOfVertices;
				zIndex: anInteger)!

fillQuadrilateral: anArrayOfVertices zIndex: anInteger
	self assert: [anArrayOfVertices size = 4].
	self addCommand: (FillPolygon new
				vertices: anArrayOfVertices;
				indices: #(0 3 1 1 2 3);
				zIndex: anInteger)!

fillRectangle: aRectangle color: aColor zIndex: anInteger
	self addCommand: (FillRectangle new
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

fillTriangle: anArrayOfVertices zIndex: anInteger
	self assert: [anArrayOfVertices size = 3].
	self addCommand: (FillPolygon new
				vertices: anArrayOfVertices;
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
	| index font |
	(File exists: aString)
		ifFalse: [Error signal: ('Font file does not exist at: <1s>' expandMacrosWith: aString)].
	index := aString -> anInteger.
	font := fontCache at: index ifAbsent: [nil].
	(font isNil or: [font isNull])
		ifTrue: [font := fontCache at: index put: (TTF_Font fromFile: aString pointSize: anInteger)].
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

setDrawColor: aColor
	sdlRenderer setDrawColor: aColor!

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
clip!accessing!public! !
clip:!accessing!public! !
createImageTexture:!public! !
createStaticTexture:!public! !
createStaticTexture:format:!public! !
createStreamingTexture:!public! !
createStringTexture:!public! !
createTargetTexture:!public! !
createTextureFromSurface:!public! !
defaultFontFile!public! !
disable!public! !
drawArrowFrom:to:width:color:zIndex:!public! !
drawCount!public!statistics! !
drawImage:rectangle:stretch:zIndex:!images!public! !
drawLineFrom:to:color:zIndex:!geometry!public! !
drawLineFrom:to:width:color:zIndex:!geometry!public! !
drawLineFrom:to:zIndex:!geometry!public! !
drawRectangle:!geometry!public! !
drawRectangle:color:!geometry!public! !
drawRectangle:color:width:zIndex:!geometry!public! !
drawRectangle:color:zIndex:!geometry!public! !
drawString:rectangle:!public!text! !
drawString:rectangle:color:!public!text! !
drawString:rectangle:color:fontStyle:zIndex:!public!text! !
drawString:rectangle:color:zIndex:!public!text! !
drawString:rectangle:fontSize:zIndex:!public!text! !
drawString:rectangle:zIndex:!public!text! !
drawSurface:rectangle:stretch:zIndex:!images!public! !
drawSurface:rectangle:zIndex:!images!public! !
drawTexture:rectangle:stretch:zIndex:!images!public! !
drawTexture:rectangle:zIndex:!images!public! !
duplicateTexture:!images!public! !
enable!public! !
execute:!private! !
executeDrawImage:!executing!private! !
executeDrawLine:!executing!private! !
executeDrawRectangle:!executing!private! !
executeDrawString:!executing!private! !
executeDrawSurface:!executing!private! !
executeDrawTexture:!executing!private! !
executeFillPolygon:!executing!private! !
executeFillRectangle:!executing!private! !
fillPolygon:zIndex:!geometry!public! !
fillQuadrilateral:zIndex:!geometry!public! !
fillRectangle:color:zIndex:!geometry!public! !
fillTriangle:zIndex:!geometry!public! !
flush!public! !
forceRender:!public! !
initialize!public! !
isEnabled!accessing!public! !
lookupFont:pointSize:!font!public! !
offset!accessing!public! !
offset:!accessing!public! !
present!public! !
resetClip!public! !
saveTexture:fileName:!images!public! !
sdlRenderer:!accessing!public! !
setDrawColor:!executing!private! !
subtractOffset:!private! !
viewport!public! !
withClip:do:!public! !
withOffset:do:!public! !
withoutClipDo:!public! !
withoutOffsetDo:!public! !
!

!Renderer2D class methodsFor!

initialize
	"self initialize"

	CommandMap := LookupTable new.
	CommandMap
		at: DrawImage put: #executeDrawImage:;
		at: DrawSurface put: #executeDrawSurface:;
		at: DrawTexture put: #executeDrawTexture:;
		at: DrawLine put: #executeDrawLine:;
		at: DrawRectangle put: #executeDrawRectangle:;
		at: DrawString put: #executeDrawString:;
		at: FillPolygon put: #executeFillPolygon:;
		at: FillRectangle put: #executeFillRectangle:!

new
	^super new initialize! !

!Renderer2D class categoriesForMethods!
initialize!public! !
new!public! !
!

