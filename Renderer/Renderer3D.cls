"Filed out from Dolphin Smalltalk"!

Renderer subclass: #Renderer3D
	instanceVariableNames: 'window camera gpuDevice renderPipeline commandBuffer fragmentSampler fallbackTexture resolveTexture multisampleTexture swapchainTexture vertices indices vertexBuffer uploadBuffer indexBuffer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Renderer3D guid: (GUID fromString: '{4e7dc093-cd11-4008-953d-70a34763af8a}')!

Renderer3D comment: ''!

!Renderer3D categoriesForClass!Kernel-Objects! !

!Renderer3D methodsFor!

blitResolveTexture
	commandBuffer
		blitTexture: (SDL_GPUBlitRegion new
				texture: resolveTexture;
				w: resolveTexture width;
				h: resolveTexture height)
		destination: (SDL_GPUBlitRegion new
				texture: swapchainTexture;
				w: swapchainTexture width;
				h: swapchainTexture height)
		filter: SDL_GPU_FILTER_LINEAR!

camera
	^camera!

clearFallbackTexture
	| commandBuffer |
	commandBuffer := gpuDevice acquireCommandBuffer.
	(commandBuffer beginRenderPass: fallbackTexture clearColor: Color white) end.
	commandBuffer submit!

compileShader: aShaderSource
	| shaderInfo |
	shaderInfo := SDL_ShaderCross_HLSL_Info new.
	shaderInfo
		source: aShaderSource sourceCode;
		entrypoint: 'main';
		shader_stage: aShaderSource stage;
		enable_debug: true;
		name: aShaderSource name.
	^gpuDevice compileShader: shaderInfo!

createBuffers
	vertexBuffer := gpuDevice createVertexBuffer: Vertex byteSize * 1024.
	indexBuffer := gpuDevice createIndexBuffer: WORD byteSize * 1024.
	uploadBuffer := gpuDevice createUploadBuffer: 1!

createFallbackTexture
	fallbackTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_2D;
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						usage: SDL_GPU_TEXTUREUSAGE_COLOR_TARGET | SDL_GPU_TEXTUREUSAGE_SAMPLER;
						width: window width;
						height: window height;
						layer_count_or_depth: 1;
						num_levels: 1)!

createFragmentSampler
	fragmentSampler := gpuDevice createSampler: (SDL_GPUSamplerCreateInfo new
						min_filter: SDL_GPU_FILTER_LINEAR;
						mag_filter: SDL_GPU_FILTER_LINEAR;
						mipmap_mode: SDL_GPU_SAMPLERMIPMAPMODE_LINEAR;
						address_mode_u: SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE;
						address_mode_v: SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE;
						address_mode_w: SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE)!

createMultisampleTexture
	| usageFlag |
	usageFlag := SDL_GPU_TEXTUREUSAGE_COLOR_TARGET
				bitOr: (self isMultisampling ifTrue: [0] ifFalse: [SDL_GPU_TEXTUREUSAGE_SAMPLER]).
	multisampleTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_2D;
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						usage: usageFlag;
						width: window width;
						height: window height;
						layer_count_or_depth: 1;
						num_levels: 1;
						sample_count: self sampleCount)!

createRenderPipeline: anInteger vertexShader: aVertexShader fragmentShader: aFragmentShader
	| graphicsPipelineCreateInfo |
	graphicsPipelineCreateInfo := SDL_GPUGraphicsPipelineCreateInfo new.
	graphicsPipelineCreateInfo
		target_info: (SDL_GPUGraphicsPipelineTargetInfo new
					color_target_descriptions: (StructureArray with: (SDL_GPUColorTargetDescription new
									format: (gpuDevice getSwapchainTextureFormat: window);
									blend_state: (SDL_GPUColorTargetBlendState new
												enable_blend: true;
												alpha_blend_op: SDL_GPU_BLENDOP_ADD;
												color_blend_op: SDL_GPU_BLENDOP_ADD;
												color_write_mask: 16rF;
												src_alpha_blendfactor: SDL_GPU_BLENDFACTOR_SRC_ALPHA;
												dst_alpha_blendfactor: SDL_GPU_BLENDFACTOR_DST_ALPHA;
												src_color_blendfactor: SDL_GPU_BLENDFACTOR_SRC_ALPHA;
												dst_color_blendfactor: SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA))));
		multisample_state: (SDL_GPUMultisampleState new sample_count: self sampleCount);
		primitive_type: anInteger;
		vertex_input_state: (SDL_GPUVertexInputState new
					vertex_buffer_descriptions: (StructureArray with: (SDL_GPUVertexBufferDescription new
										slot: 0;
										input_rate: SDL_GPU_VERTEXINPUTRATE_VERTEX;
										instance_step_rate: 0;
										pitch: Vertex byteSize));
					vertex_attributes: (StructureArray withAll: (Array
										with: (SDL_GPUVertexAttribute new
												buffer_slot: 0;
												format: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3;
												location: 0;
												offset: 0)
										with: (SDL_GPUVertexAttribute new
												buffer_slot: 0;
												format: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4;
												location: 1;
												offset: FLOAT byteSize * 3)
										with: (SDL_GPUVertexAttribute new
												buffer_slot: 0;
												format: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2;
												location: 2;
												offset: FLOAT byteSize * 7))
								elementClass: SDL_GPUVertexAttribute));
		vertex_shader: aVertexShader;
		fragment_shader: aFragmentShader.
	^gpuDevice createGraphicsPipeline: graphicsPipelineCreateInfo!

createRenderPipelines
	| vertexShader fragmentShader |
	vertexShader := self compileShader: ShaderSource geometryVertex.
	fragmentShader := self compileShader: ShaderSource geometryFragment.
	renderPipeline := self
				createRenderPipeline: SDL_GPU_PRIMITIVETYPE_TRIANGLELIST
				vertexShader: vertexShader
				fragmentShader: fragmentShader.
	gpuDevice
		releaseShader: vertexShader;
		releaseShader: fragmentShader!

createResolveTexture
	resolveTexture := gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_2D;
						format: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
						usage: SDL_GPU_TEXTUREUSAGE_COLOR_TARGET | SDL_GPU_TEXTUREUSAGE_SAMPLER;
						width: window width;
						height: window height;
						layer_count_or_depth: 1;
						num_levels: 1)!

createTextEngine
	textEngine := SDL3TTFLibrary default createGPUTextEngine_device: gpuDevice!

createTexture: aPoint
	^gpuDevice createTexture: aPoint format: SDL_GPU_TEXTUREFORMAT_INVALID!

createTexture: aPoint format: anInteger
	^gpuDevice createTexture: (SDL_GPUTextureCreateInfo new
						type: SDL_GPU_TEXTURETYPE_2D;
						format: anInteger ;
						usage: SDL_GPU_TEXTUREUSAGE_SAMPLER | SDL_GPU_TEXTUREUSAGE_COLOR_TARGET;
						width: aPoint x;
						height: aPoint y;
						layer_count_or_depth: 1;
						num_levels: 1)!

createUtilityTextures
	self
		createMultisampleTexture;
		createResolveTexture;
		createFallbackTexture!

destroy
	textEngine destroy.
	textEngine := nil.
	gpuDevice
		releaseBuffer: vertexBuffer;
		releaseBuffer: indexBuffer;
		releaseTransferBuffer: uploadBuffer;
		releaseTexture: fallbackTexture;
		releaseTexture: multisampleTexture;
		releaseTexture: resolveTexture;
		releaseSampler: fragmentSampler;
		releaseGraphicsPipeline: renderPipeline.
	fallbackTexture := nil.
	multisampleTexture := nil.
	resolveTexture := nil.
	fragmentSampler := nil.
	renderPipeline := nil.
	gpuDevice destroy.
	gpuDevice := nil!

downloadTexture: aGPUTexture pixelFormat: anInteger
	| extent surface imageSize downloadBuffer copyPass fence |
	commandBuffer := gpuDevice acquireCommandBuffer.
	extent := aGPUTexture extent.
	surface := SDL_Surface extent: extent format: anInteger.
	imageSize := extent x * extent y * 4.
	downloadBuffer := gpuDevice createDownloadBuffer: imageSize.
	copyPass := commandBuffer beginCopyPass.
	copyPass
		downloadFromTexture: (SDL_GPUTextureRegion fromTexture: aGPUTexture)
			destination: (SDL_GPUTextureTransferInfo new
					transfer_buffer: downloadBuffer;
					pixels_per_row: extent x;
					rows_per_layer: extent y);
		end.
	fence := commandBuffer submitAndAcquireFence.
	gpuDevice waitForAndReleaseFence: fence.
	gpuDevice
		downloadFromBuffer: downloadBuffer
			data: surface pixels
			length: imageSize;
		releaseTransferBuffer: downloadBuffer.
	^surface!

executeDrawCommand: aDrawCommand in: aRenderPass
	| drawData |
	drawData := aDrawCommand drawData.
	drawData ifNil: [^self].
	aRenderPass
		bindFragmentSamplers: (Array with: (SDL_GPUTextureSamplerBinding new
							texture: (drawData texture ifNil: [fallbackTexture]);
							sampler: fragmentSampler));
		drawIndexedPrimitives: drawData indices size
			firstIndex: drawData indexOffset
			vertexOffset: drawData vertexOffset!

free
	super free.
	textEngine destroy.
	textEngine := nil.
	window destroy.
	window := nil.
	gpuDevice destroy.
	gpuDevice := nil.
	!

gpuDevice: aGPUDevice
	gpuDevice := aGPUDevice!

initialize
	super initialize.
	camera := Camera2D new.
	vertices := OrderedCollection new.
	indices := OrderedCollection new!

isMultisampling
	^self sampleCount ~= SDL_GPU_SAMPLECOUNT_1!

loadShader: aShader
	| codeSize code shaderCreateInfo |
	codeSize := DWORD new.
	code := SDL3Library default loadFile_file: self shadersPath , aShader sourceFile , '.dxil'
				datasize: codeSize.
	code isNull ifTrue: [self error: SDL3Library default getError].
	shaderCreateInfo := SDL_GPUShaderCreateInfo new.
	shaderCreateInfo
		code: code;
		code_size: codeSize;
		format: SDL_GPU_SHADERFORMAT_DXIL;
		entrypoint: 'main';
		num_samplers: aShader samplerCount;
		num_uniform_buffers: aShader uniformBufferCount;
		num_storage_buffers: aShader storageBufferCount;
		num_storage_textures: aShader storageTextureCount;
		stage: aShader stage.
	^gpuDevice createShader: shaderCreateInfo!

present: aCanvas
	commandBuffer := gpuDevice acquireCommandBuffer.
	swapchainTexture := commandBuffer acquireSwapchainTexture: window.
	swapchainTexture isNull ifFalse: [self render: aCanvas].
	commandBuffer submit!

queueDrawCommand: aDrawCommand
	| selector drawData |
	selector :=CommandMap at: aDrawCommand class.
	drawData := self perform: selector with: aDrawCommand.
	drawData ifNil: [^self].
	drawData
		vertexOffset: vertices size;
		indexOffset: indices size.
	vertices addAll: drawData vertices.
	indices addAll: drawData indices.
	aDrawCommand drawData: drawData!

queueDrawLine: aDrawLine
	| start end offset fcolor vertices indices |
	start := aDrawLine start.
	end := aDrawLine end.
	offset := aDrawLine offset.
	fcolor := aDrawLine color asSDLFColor.
	vertices := Array
				with: (Vertex position: start - offset color: fcolor)
				with: (Vertex position: start + offset color: fcolor)
				with: (Vertex position: end - offset color: fcolor)
				with: (Vertex position: end + offset color: fcolor).
	indices := #(0 1 2 1 2 3).
	^DrawData vertices: vertices indices: indices!

queueDrawRectangle: aDrawRectangle
	| vertices indices rectangle color lines |
	rectangle := aDrawRectangle rectangle.
	rectangle ifNil: [^nil].
	color := aDrawRectangle color.
	lines := Array
				with: (DrawLine new
						start: rectangle topLeft;
						end: rectangle topRight;
						color: color)
				with: (DrawLine new
						start: rectangle topRight;
						end: rectangle bottomRight;
						color: color)
				with: (DrawLine new
						start: rectangle bottomRight;
						end: rectangle bottomLeft;
						color: color)
				with: (DrawLine new
						start: rectangle bottomLeft;
						end: rectangle topLeft;
						color: color).
	vertices := lines inject: OrderedCollection new
				into: 
					[:all :each |
					| lineDrawData |
					lineDrawData := self queueDrawLine: each.
					all
						addAll: lineDrawData vertices;
						yourself].
	indices := #(0 1 2 1 2 3 4 5 6 5 6 7 8 9 10 9 10 11 12 13 14 13 14 15).
	^DrawData vertices: vertices indices: indices!

queueDrawString: aDrawString
	| vertices ttfText drawData texture fcolor rectangle |
	ttfText := textEngine createText: aDrawString string font: aDrawString font ?? self defaultFont.
	(ttfText isNil or: [ttfText text isNil]) ifTrue: [^nil].
	drawData := textEngine getDrawData: ttfText.
	texture := drawData atlas_texture.
	ttfText color: aDrawString color asSDLColor.
	fcolor := aDrawString color asSDLFColor.
	rectangle := aDrawString rectangle.
	vertices := (1 to: drawData num_vertices) collect: 
					[:index |
					| xy uv |
					xy := drawData xy at: index.
					uv := drawData uv at: index.
					Vertex
						position: rectangle origin truncated + (xy x @ xy y negated)
						color: fcolor
						uv: uv x @ uv y].
	^DrawData
		vertices: vertices
		indices: drawData indices
		texture: texture!

queueDrawText: aDrawText
	| ttfText drawData texture fcolor rectangle vertices |
	ttfText := aDrawText text.
	(ttfText isNil or: [ttfText text isNil]) ifTrue: [^nil].
	drawData := textEngine getDrawData: ttfText.
	texture := drawData atlas_texture.
	ttfText color: aDrawText color asSDLColor.
	fcolor := aDrawText color asSDLFColor.
	rectangle := aDrawText rectangle.
	vertices := (1 to: drawData num_vertices) collect: 
					[:index |
					| xy uv |
					xy := drawData xy at: index.
					uv := drawData uv at: index.
					Vertex
						position: rectangle origin truncated + (xy x @ xy y negated)
						color: fcolor
						uv: uv x @ uv y].
	^DrawData
		vertices: vertices
		indices: drawData indices
		texture: texture!

queueDrawTexture: aDrawTexture
	| texture rectangle uvRectangle vertices indices |
	texture := aDrawTexture texture.
	texture ifNil: [^nil].
	rectangle := aDrawTexture rectangle.
	aDrawTexture stretch
		ifFalse: 
			[rectangle := Rectangle origin: rectangle origin
						extent: rectangle width @ (rectangle width / texture width * texture height)].
	uvRectangle := Rectangle origin: 0 @ 0 extent: 1 @ 1.
	vertices := Array
				with: (Vertex position: rectangle topLeft uv: uvRectangle topLeft)
				with: (Vertex position: rectangle topRight uv: uvRectangle topRight)
				with: (Vertex position: rectangle bottomRight uv: uvRectangle bottomRight)
				with: (Vertex position: rectangle bottomLeft uv: uvRectangle bottomLeft).
	aDrawTexture rotation ~= 0
		ifTrue: [vertices do: [:each | each rotate: aDrawTexture rotation around: rectangle center]].
	indices := #(0 1 2 2 3 0).
	^DrawData
		vertices: vertices
		indices: indices
		texture: texture!

queueFillPolygon: aFillPolygon
	^DrawData vertices: aFillPolygon vertices indices: aFillPolygon indices!

queueFillRectangle: aFillRectangle
	| rectangle fcolor vertices indices |
	rectangle := aFillRectangle rectangle.
	fcolor := aFillRectangle color asSDLFColor.
	vertices := Array
				with: (Vertex position: rectangle topLeft color: fcolor)
				with: (Vertex position: rectangle topRight color: fcolor)
				with: (Vertex position: rectangle bottomRight color: fcolor)
				with: (Vertex position: rectangle bottomLeft color: fcolor).
	indices := #(0 1 2 2 3 0).
	^DrawData vertices: vertices indices: indices!

releaseTexture: aSDL_GPUTexture 
	gpuDevice releaseTexture: aSDL_GPUTexture!

render: aCanvas
	self
		runCopyPass: aCanvas;
		runRenderPass: aCanvas!

resizeUploadBuffer: anInteger
	uploadBuffer ifNotNil: [gpuDevice releaseBuffer: uploadBuffer].
	uploadBuffer := gpuDevice createUploadBuffer: anInteger!

runCopyPass: aCanvas
	| drawCommands |
	drawCommands := aCanvas drawCommands asOrderedCollection.
	drawCommands do: [:each | self queueDrawCommand: each].
	self uploadVertices.
	vertices removeAll.
	indices removeAll!

runRenderPass: aCanvas
	| renderPass |
	renderPass := self isMultisampling
				ifTrue: [commandBuffer beginRenderPass: multisampleTexture resolveTexture: resolveTexture]
				ifFalse: [commandBuffer beginRenderPass: swapchainTexture].
	commandBuffer pushVertexUniformData: (Uniform new view: self viewMatrix asFLOATArray).
	renderPass
		bindGraphicsPipeline: renderPipeline;
		bindVertexBuffers: (Array with: vertexBuffer);
		bind16BitIndexBuffer: indexBuffer.
	aCanvas drawCommands reverseFlushWith: [:each | self executeDrawCommand: each in: renderPass].
	renderPass end.
	self isMultisampling ifTrue: [self blitResolveTexture]!

sampleCount
	^SDL_GPU_SAMPLECOUNT_1!

sdl
	^SDL3Library default!

shadersPath
	^FileLocator imageRelative: 'shaders\'!

updateTexture: aGPUTexture pixels: anExternalAddress pitch: anInteger
	| commandBuffer copyPass transferSize |
	gpuDevice ifNil: [^self].
	transferSize := aGPUTexture height * anInteger.
	transferSize > uploadBuffer size ifTrue: [self resizeUploadBuffer: transferSize].
	gpuDevice
		uploadToBuffer: uploadBuffer
		data: anExternalAddress
		length: transferSize.
	commandBuffer := gpuDevice acquireCommandBuffer.
	copyPass := commandBuffer beginCopyPass.
	copyPass
		uploadToTexture: (SDL_GPUTextureTransferInfo new transfer_buffer: uploadBuffer)
			destination: (SDL_GPUTextureRegion new
					texture: aGPUTexture;
					w: aGPUTexture width;
					h: aGPUTexture height;
					d: 1);
		end.
	commandBuffer submit!

uploadVertices
	| copyPass vertexData indexData transferSize |
	vertexData := StructureArray withAll: vertices elementClass: Vertex.
	indexData := WORDArray withAll: indices.
	transferSize := vertexData byteSize + indexData byteSize.
	transferSize > uploadBuffer size ifTrue: [self resizeUploadBuffer: transferSize].
	gpuDevice
		uploadToBuffer: uploadBuffer
		data: vertexData asByteArray , indexData asByteArray
		length: vertexData byteSize + indexData byteSize.
	copyPass := commandBuffer beginCopyPass.
	copyPass
		uploadToBuffer: uploadBuffer
			destination: vertexBuffer
			size: vertexData byteSize;
		uploadToBuffer: uploadBuffer
			offset: vertexData byteSize
			destination: indexBuffer
			size: indexData byteSize;
		end!

viewMatrix
	^(Matrix identity: 4)
		at: 1 @ 1 put: 2.0 / window width;
		at: 2 @ 2 put: -2.0 / window height;
		at: 1 @ 4 put: -1;
		at: 2 @ 4 put: 1;
		yourself!

window: aWindow
	window := aWindow! !

!Renderer3D categoriesForMethods!
blitResolveTexture!private! !
camera!public! !
clearFallbackTexture!private! !
compileShader:!private! !
createBuffers!private! !
createFallbackTexture!private! !
createFragmentSampler!private! !
createMultisampleTexture!private! !
createRenderPipeline:vertexShader:fragmentShader:!private! !
createRenderPipelines!private! !
createResolveTexture!private! !
createTextEngine!private! !
createTexture:!public! !
createTexture:format:!public! !
createUtilityTextures!private! !
destroy!public! !
downloadTexture:pixelFormat:!public! !
executeDrawCommand:in:!private! !
free!public! !
gpuDevice:!public! !
initialize!public! !
isMultisampling!private! !
loadShader:!private! !
present:!public! !
queueDrawCommand:!private! !
queueDrawLine:!private! !
queueDrawRectangle:!private! !
queueDrawString:!private! !
queueDrawText:!private! !
queueDrawTexture:!private! !
queueFillPolygon:!private! !
queueFillRectangle:!private! !
releaseTexture:!public! !
render:!private! !
resizeUploadBuffer:!private! !
runCopyPass:!private! !
runRenderPass:!private! !
sampleCount!private! !
sdl!private! !
shadersPath!private! !
updateTexture:pixels:pitch:!public! !
uploadVertices!private! !
viewMatrix!private! !
window:!public! !
!

!Renderer3D class methodsFor!

forWindow: aWindow
	| renderer gpuDevice |
	gpuDevice := SDL_GPUDevice name: 'Renderer3D' formatFlags: SDL_GPU_SHADERFORMAT_DXIL.
	gpuDevice claimWindow: aWindow.
	renderer := self new.
	renderer
		window: aWindow;
		gpuDevice: gpuDevice;
		createRenderPipelines;
		createFragmentSampler;
		createUtilityTextures;
		createTextEngine;
		createBuffers;
		clearFallbackTexture.
	^renderer!

new
	^super new initialize! !

!Renderer3D class categoriesForMethods!
forWindow:!public! !
new!public! !
!

