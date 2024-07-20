"Filed out from Dolphin Smalltalk"!

GLObject subclass: #GLContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLContext guid: (GUID fromString: '{61a36674-c914-4fb8-827c-1641fe7a11b9}')!

GLContext comment: ''!

!GLContext categoriesForClass!Kernel-Objects! !

!GLContext methodsFor!

bind: aGLObject in: aBlock
	aGLObject bind.
	aBlock value.
	aGLObject unbind!

clearColor: aColor
	gl
		glClearColor_red: aColor red
			green: aColor green
			blue: aColor blue
			alpha: aColor alpha;
		glClear_mask: GL_COLOR_BUFFER_BIT!

createFragmentShader
	^GLShader fromHandle: (gl glCreateShader_shaderType: GL_FRAGMENT_SHADER)!

createProgram
	^GLProgram fromHandle: gl glCreateProgram!

createVertexShader
	^GLShader fromHandle: (gl glCreateShader_shaderType: GL_VERTEX_SHADER)!

delete
	SDL3Library default glDeleteContext_context: handle!

generateArrayBuffer
	| buffers |
	buffers := DWORDArray new: 1.
	gl glGenBuffers_n: 1 buffers: buffers asParameter.
	^GLArrayBuffer fromHandle: (buffers at: 1)!

generateBuffer
	| buffers |
	buffers := DWORDArray new: 1.
	gl glGenBuffers_n: 1 buffers: buffers asParameter.
	^GLBuffer fromHandle: (buffers at: 1)!

generateElementArrayBuffer
	| buffers |
	buffers := DWORDArray new: 1.
	gl glGenBuffers_n: 1 buffers: buffers asParameter.
	^GLElementArrayBuffer fromHandle: (buffers at: 1)!

generateTexture
	| textures |
	textures := DWORDArray new: 1.
	gl glGenTextures_n: 1 textures: textures asParameter.
	^GLTexture fromHandle: (textures at: 1)!

generateVertexArray
	| vertexArrays |
	vertexArrays := DWORDArray new: 1.
	gl glGenVertexArrays_n: 1 arrays: vertexArrays asParameter.
	^GLVertexArray fromHandle: (vertexArrays at: 1)!

unbindBuffer
	gl glBindBuffer_target: GL_ARRAY_BUFFER buffer: 0!

unbindVertexArray
	gl glBindVertexArray_array: 0!

useProgram: aGLProgram
	gl glUseProgram_program: aGLProgram handle!

viewport: aPoint extent: anotherPoint
	gl
		glViewport_x: aPoint x
		y: aPoint y
		width: anotherPoint x
		height: anotherPoint y! !

!GLContext categoriesForMethods!
bind:in:!public! !
clearColor:!public! !
createFragmentShader!public! !
createProgram!public! !
createVertexShader!public! !
delete!public! !
generateArrayBuffer!public! !
generateBuffer!public! !
generateElementArrayBuffer!public! !
generateTexture!public! !
generateVertexArray!public! !
unbindBuffer!public! !
unbindVertexArray!public! !
useProgram:!public! !
viewport:extent:!public! !
!

