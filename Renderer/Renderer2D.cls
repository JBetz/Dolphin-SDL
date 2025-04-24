"Filed out from Dolphin Smalltalk"!

Renderer subclass: #Renderer2D
	instanceVariableNames: 'sdlRenderer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Renderer2D guid: (GUID fromString: '{709e7faa-1d4b-4ee6-b0d9-077aa539b165}')!

Renderer2D comment: ''!

!Renderer2D categoriesForClass!Kernel-Objects! !

!Renderer2D methodsFor!

clear
	sdlRenderer clear!

clear: aColor
	sdlRenderer
		setDrawColor: aColor;
		clear!

createStreamingTexture: aPoint
	^sdlRenderer createTexture: aPoint access: SDL_TEXTUREACCESS_STREAMING!

createTargetTexture: aPoint
	^sdlRenderer createTexture: aPoint access: SDL_TEXTUREACCESS_TARGET!

createTextEngine
	textEngine := SDL3TTFLibrary default createRendererTextEngine_renderer: sdlRenderer!

createTexture: aPoint 
	^self createStreamingTexture: aPoint!

createTexture: aPoint format: anInteger
	^self createStreamingTexture: aPoint!

createTextureFromSurface: aSDL_Surface
	^sdlRenderer createTextureFromSurface: aSDL_Surface!

destroy
	sdlRenderer destroy.
	sdlRenderer := nil!

downloadTexture: aSDLTexture pixelFormat: anInteger
	| extent newTexture |
	extent := aSDLTexture extent.
	newTexture := self createTargetTexture: extent.
	sdlRenderer
		setRenderTarget: newTexture;
		setDrawColor: Color white;
		renderTexture: aSDLTexture
			source: nil
			destination: nil.
	^sdlRenderer renderReadPixels: nil!

present: aCanvas
	self clear: Color white.
	aCanvas drawQueue reverseFlushWith: [:each | self queueDrawCommand: each].
	sdlRenderer present!

queueDrawCommand: aRenderCommand
	| selector |
	selector := CommandMap at: aRenderCommand class.
	aRenderCommand clip ifNotNil: [:aRectangle | sdlRenderer setClip: aRectangle].
	self perform: selector with: aRenderCommand.
	aRenderCommand clip ifNotNil: [sdlRenderer resetClip]!

queueDrawLine: aDrawLine
	aDrawLine color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer renderLineFrom: aDrawLine start to: aDrawLine end!

queueDrawPoint: aDrawPoint
	aDrawPoint color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer renderPoint: aDrawPoint position!

queueDrawRectangle: aDrawRectangle
	aDrawRectangle color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	sdlRenderer renderRectangle: aDrawRectangle rectangle!

queueDrawString: aDrawString
	| font rectangle text |
	aDrawString string isString ifFalse: [^self].
	font := aDrawString font ifNil: [self defaultFont].
	rectangle := aDrawString rectangle.
	font setStyle: (aDrawString fontStyle ifNil: [TTFFontStyle normal]).
	text := textEngine createText: aDrawString string font: font.
	rectangle width > 0 ifTrue: [text wrapWidth: rectangle width asInteger].
	text color: (aDrawString color ifNil: [Color black]) asSDLColor.
	textEngine
		drawText: text
		x: rectangle origin x
		y: rectangle origin y!

queueDrawSurface: aDrawSurface
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

queueDrawText: aDrawText
	| rectangle text |
	rectangle := aDrawText rectangle.
	text := aDrawText text.
	text color: (aDrawText color ifNil: [Color black]) asSDLColor.
	textEngine
		drawText: text
		x: rectangle origin x
		y: rectangle origin y!

queueDrawTexture: aDrawTexture
	| texture destinationRectangle |
	texture := aDrawTexture texture.
	texture ifNil: [^self].
	destinationRectangle := aDrawTexture stretch
				ifTrue: [aDrawTexture rectangle]
				ifFalse: 
					[| textureExtent |
					textureExtent := texture extent.
					Rectangle origin: aDrawTexture rectangle origin extent: textureExtent].
	sdlRenderer
		renderTexture: texture
		source: nil
		destination: destinationRectangle!

queueFillPolygon: aFillPolygon
	| vertices indices |
	vertices := aFillPolygon vertices collect: [:each | each asSDLVertex].
	indices := aFillPolygon indices.
	indices
		ifNil: [sdlRenderer renderGeometry: nil vertices: vertices]
		ifNotNil: 
			[sdlRenderer
				renderGeometry: nil
				vertices: vertices
				indices: (indices collect: [:each | each asSDword])]!

queueFillRectangle: aFillRectangle
	aFillRectangle color ifNotNil: [:aColor | sdlRenderer setDrawColor: aColor].
	aFillRectangle rectangle ifNotNil: [:aRectangle | sdlRenderer fillRectangle: aRectangle]!

releaseTexture: aSDL_Texture 
	aSDL_Texture destroy!

sdlRenderer: aSDL_Renderer
	sdlRenderer := aSDL_Renderer!

setDrawColor: aColor
	sdlRenderer setDrawColor: aColor!

updateTexture: aTexture pixels: anExternalAddress pitch: anInteger
	aTexture
		updatePixels: anExternalAddress pitch: anInteger;
		isPainted: true!

viewport
	^Rectangle origin: 0 @ 0 extent: sdlRenderer getWindow getExtent! !

!Renderer2D categoriesForMethods!
clear!public! !
clear:!public! !
createStreamingTexture:!public! !
createTargetTexture:!public! !
createTextEngine!accessing!private! !
createTexture:!public! !
createTexture:format:!public! !
createTextureFromSurface:!public! !
destroy!public! !
downloadTexture:pixelFormat:!images!public! !
present:!public! !
queueDrawCommand:!private! !
queueDrawLine:!executing!private! !
queueDrawPoint:!private! !
queueDrawRectangle:!executing!private! !
queueDrawString:!private! !
queueDrawSurface:!executing!private! !
queueDrawText:!private! !
queueDrawTexture:!executing!private! !
queueFillPolygon:!executing!private! !
queueFillRectangle:!executing!private! !
releaseTexture:!public! !
sdlRenderer:!accessing!private! !
setDrawColor:!executing!public! !
updateTexture:pixels:pitch:!public! !
viewport!public! !
!

