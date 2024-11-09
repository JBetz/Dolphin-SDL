"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Renderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Renderer guid: (GUID fromString: '{bb968c30-e713-45d5-b727-54acecbcc8ac}')!

SDL_Renderer comment: ''!

!SDL_Renderer categoriesForClass!External-Data-Structured! !

!SDL_Renderer methodsFor!

clear
	self checkBooleanResult: (self library renderClear_renderer: self)!

createSurfaceFrom: pixels width: width height: height pitch: pitch format: format
	| surface |
	surface := self library
				createSurfaceFrom_pixels: pixels
				width: width
				height: height
				pitch: pitch
				format: format.
	self checkObjectResult: surface.
	^surface initialize!

createSurfaceFrom_pixels: pixels width: width height: height pitch: pitch format: format
	| surface |
	surface := self library
				createSurfaceFrom_pixels: pixels
				width: width
				height: height
				pitch: pitch
				format: format.
	self checkObjectResult: surface.
	^surface initialize!

createTexture: aPoint access: anInteger
	^self createTexture: aPoint access: anInteger format: SDL_PIXELFORMAT_UNKNOWN!

createTexture: aPoint access: anInteger format: anotherInteger
	| texture |
	texture := self library
				createTexture_renderer: self
				format: anotherInteger
				access: anInteger
				w: aPoint x asInteger
				h: aPoint y asInteger.
	self checkObjectResult: texture.
	^texture initialize!

createTexture: aPoint format: anInteger
	^self createTexture: aPoint access: SDL_TEXTUREACCESS_STATIC format: anInteger!

createTextureFromSurface: aSDL_Surface
	| texture |
	texture := self library createTextureFromSurface_renderer: self surface: aSDL_Surface.
	self checkObjectResult: texture.
	^texture initialize!

destroy
	self library destroyRenderer_renderer: self!

fillRectangle: aRectangle
	self library renderFillRect_renderer: self rect: aRectangle asSDLFRect!

getPropertiesId
	^self library getRendererProperties_renderer: self!

getRenderTarget
	^self library getRenderTarget_renderer: self!

getScale
	| scaleX scaleY |
	scaleX := FLOAT new.
	scaleY := FLOAT new.
	self checkBooleanResult: (self library
				getRenderScale_renderer: self
				scaleX: scaleX
				scaleY: scaleY).
	^scaleX value @ scaleY value!

getWindow
	^self library getRenderWindow_renderer: self!

present
	self checkBooleanResult: (self library renderPresent_renderer: self)!

renderDebugText: aString origin: aPoint
	| result |
	result := self library
				renderDebugText_renderer: self
				x: aPoint x asFloat
				y: aPoint y asFloat
				str: aString.
	self checkBooleanResult: result!

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

renderLineFrom: start to: end
	self library
		renderLine_renderer: self
		x1: start x
		y1: start y
		x2: end x
		y2: end y!

renderPoint: aPoint
	self library
		renderPoint_renderer: self
		x: aPoint x
		y: aPoint y!

renderReadPixels: aRectangle
	| surface |
	surface := self library renderReadPixels_renderer: self
				rect: (aRectangle ifNotNil: [aRectangle asSDLRect]).
	self checkObjectResult: surface.
	^surface!

renderRectangle: aRectangle
	self library renderRect_renderer: self rect: aRectangle asSDLFRect!

renderTexture: texture source: source destination: destination
	| result |
	result := self library
				renderTexture_renderer: self
				texture: texture
				srcrect: (source ifNotNil: [source asSDLFRect])
				dstrect: (destination ifNotNil: [destination asSDLFRect]).
	self checkBooleanResult: result!

resetClip
	self checkBooleanResult: (self library setRenderClipRect_renderer: self rect: nil)!

resetScale
	self setScale: 1.0 @ 1.0!

setClip: aRectangle
	| result |
	result := self library setRenderClipRect_renderer: self rect: aRectangle asSDLRect.
	self checkBooleanResult: result!

setDrawBlendMode: anInteger
	self library setRenderDrawBlendMode_renderer: self blendMode: anInteger!

setDrawColor: aColor
	self library
		setRenderDrawColor_renderer: self
		r: aColor red
		g: aColor green
		b: aColor blue
		a: aColor alpha!

setRenderTarget: aSDLTexture
	self checkBooleanResult: (self library setRenderTarget_renderer: self texture: aSDLTexture)!

setScale: aPoint
	self checkBooleanResult: (self library
				setRenderScale_renderer: self
				scaleX: aPoint x
				scaleY: aPoint y)! !

!SDL_Renderer categoriesForMethods!
clear!public! !
createSurfaceFrom:width:height:pitch:format:!public! !
createSurfaceFrom_pixels:width:height:pitch:format:!public! !
createTexture:access:!public! !
createTexture:access:format:!public! !
createTexture:format:!public! !
createTextureFromSurface:!public! !
destroy!public! !
fillRectangle:!public! !
getPropertiesId!public! !
getRenderTarget!public! !
getScale!public! !
getWindow!public! !
present!public! !
renderDebugText:origin:!public! !
renderGeometry:vertices:!public! !
renderGeometry:vertices:indices:!public! !
renderLineFrom:to:!public! !
renderPoint:!public! !
renderReadPixels:!public! !
renderRectangle:!public! !
renderTexture:source:destination:!public! !
resetClip!public! !
resetScale!public! !
setClip:!public! !
setDrawBlendMode:!public! !
setDrawColor:!public! !
setRenderTarget:!public! !
setScale:!public! !
!

