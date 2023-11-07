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
	self library renderClear_renderer: self!

createTexture: aPoint
	^self checkResult: (self library
				createTexture_renderer: self
				format: 0
				access: 1
				w: aPoint x asInteger
				h: aPoint y asInteger)!

createTextureFromSurface: aSDL_Surface
	^self checkResult: (self library createTextureFromSurface_renderer: self surface: aSDL_Surface)!

destroy
	self library destroyRenderer_renderer: self!

drawLineFrom: start to: end
	self library
		renderDrawLine_renderer: self
		x1: start x truncated
		y1: start y truncated
		x2: end x truncated
		y2: end y truncated!

drawRectangle: aRectangle
	self library renderDrawRect_renderer: self rect: aRectangle asSDLRect!

fillRectangle: aRectangle
	self library renderFillRect_renderer: self rect: aRectangle asSDLRect!

getWindow
	^self library renderGetWindow_renderer: self!

present
	self library renderPresent_renderer: self!

renderCopy: texture source: source destination: destination
	self library
		renderCopy_renderer: self
		texture: texture
		srcrect: (source ifNotNil: [source asSDLRect])
		dstrect: (destination ifNotNil: [destination asSDLRect])!

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

renderReadPixels: aRectangle format: anInteger pixels: pixels pitch: pitch
	self checkResult: (self library
				renderReadPixels_renderer: self
				rect: (aRectangle ifNotNil: [aRectangle asSDLRect])
				format: anInteger
				pixels: pixels
				pitch: pitch)!

resetClip
	self library renderSetClipRect_renderer: self rect: nil!

setClip: aRectangle
	self library renderSetClipRect_renderer: self rect: aRectangle asSDLRect!

setDrawBlendMode: anInteger
	self library setRenderDrawBlendMode_renderer: self blendMode: anInteger!

setDrawColor: aColor
	self library
		setRenderDrawColor_renderer: self
		r: aColor red
		g: aColor green
		b: aColor blue
		a: aColor alpha! !
!SDL_Renderer categoriesForMethods!
clear!public! !
createTexture:!public! !
createTextureFromSurface:!public! !
destroy!public! !
drawLineFrom:to:!public! !
drawRectangle:!public! !
fillRectangle:!public! !
getWindow!public! !
present!public! !
renderCopy:source:destination:!public! !
renderGeometry:vertices:!public! !
renderGeometry:vertices:indices:!public! !
renderReadPixels:format:pixels:pitch:!public! !
resetClip!public! !
setClip:!public! !
setDrawBlendMode:!public! !
setDrawColor:!public! !
!

