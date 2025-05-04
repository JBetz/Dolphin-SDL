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

createTextureWithProperties: aProperties
	| texture |
	texture := self library createTextureWithProperties_renderer: self props: aProperties id.
	self checkObjectResult: texture.
	^texture initialize!

destroy
	self library destroyRenderer_renderer: self!

direct3D11Device
	^self properties getProperty: SDL_PROP_RENDERER_D3D11_DEVICE_POINTER!

direct3D11Swapchain
	^self properties getProperty: SDL_PROP_RENDERER_D3D11_SWAPCHAIN_POINTER!

direct3D12CommandQueue
	^self properties getProperty: SDL_PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER!

direct3D12Device
	^self properties getProperty: SDL_PROP_RENDERER_D3D12_DEVICE_POINTER!

direct3D12Swapchain
	^self properties getProperty: SDL_PROP_RENDERER_D3D12_SWAPCHAIN_POINTER!

direct3DDevice
	self isUsingDirect3D11Driver ifTrue: [^self direct3D11Device].
	self isUsingDirect3D12Driver ifTrue: [^self direct3D12Device].
	^nil!

fillRectangle: aRectangle
	self library renderFillRect_renderer: self rect: aRectangle asSDLFRect!

getPropertiesId
	^self library getRendererProperties_renderer: self!

getRenderTarget
	^self library getRenderTarget_renderer: self!

getRenderViewport
	| rect result |
	rect := SDL_Rect new.
	result := self library getRenderViewport_renderer: self rect: rect.
	self checkBooleanResult: result.
	^rect!

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

gpuDevice
	^self properties getProperty: SDL_PROP_RENDERER_GPU_DEVICE_POINTER!

isUsingDirect3D11Driver
	^self name = 'direct3d11'!

isUsingDirect3D12Driver
	^self name = 'direct3d12'!

isUsingOpenGLDriver
	^self name = 'opengl'!

isUsingSoftwareDriver
	^self name = 'software'!

isUsingVulkanDriver
	^self name = 'vulkan'!

name
	^self properties getProperty: SDL_PROP_RENDERER_NAME_STRING!

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

window
	^self properties getProperty: SDL_PROP_RENDERER_WINDOW_POINTER! !

!SDL_Renderer categoriesForMethods!
clear!public! !
createSurfaceFrom:width:height:pitch:format:!public! !
createTexture:access:!public! !
createTexture:access:format:!public! !
createTexture:format:!public! !
createTextureFromSurface:!public! !
createTextureWithProperties:!public! !
destroy!public! !
direct3D11Device!properties!public! !
direct3D11Swapchain!properties!public! !
direct3D12CommandQueue!properties!public! !
direct3D12Device!properties!public! !
direct3D12Swapchain!properties!public! !
direct3DDevice!properties!public! !
fillRectangle:!public! !
getPropertiesId!properties!public! !
getRenderTarget!public! !
getRenderViewport!public! !
getScale!public! !
getWindow!public! !
gpuDevice!properties!public! !
isUsingDirect3D11Driver!drivers!properties!public! !
isUsingDirect3D12Driver!drivers!properties!public! !
isUsingOpenGLDriver!drivers!properties!public! !
isUsingSoftwareDriver!drivers!properties!public! !
isUsingVulkanDriver!drivers!properties!public! !
name!properties!public! !
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
setClip:!public! !
setDrawBlendMode:!public! !
setDrawColor:!public! !
setRenderTarget:!public! !
window!properties!public! !
!

