"Filed out from Dolphin Smalltalk"!

GLDemo subclass: #TextureDemo
	instanceVariableNames: 'containerTexture'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TextureDemo guid: (GUID fromString: '{68787b09-b138-4f42-a2ff-6bdd927511b0}')!

TextureDemo comment: ''!

!TextureDemo categoriesForClass!Kernel-Objects! !

!TextureDemo methodsFor!

render
	gl glActiveTexture_texture: GL_TEXTURE0.
	containerTexture bind.
	shaderProgram use.
	gl
		glDrawElements_mode: GL_TRIANGLES
		count: 6
		type: GL_UNSIGNED_INT
		indices: 0!

setup
	super setup.
	self
		setupVertexData;
		setupShaderProgram;
		setupContainerTexture!

setupContainerTexture
	| imageSurface |
	containerTexture := context generateTexture.
	containerTexture
		bind;
		setIntParameter: GL_TEXTURE_WRAP_S value: GL_REPEAT;
		setIntParameter: GL_TEXTURE_WRAP_T value: GL_REPEAT;
		setIntParameter: GL_TEXTURE_MIN_FILTER value: GL_LINEAR;
		setIntParameter: GL_TEXTURE_MAG_FILTER value: GL_LINEAR.
	imageSurface := SDL_Surface fromFile: 'container.jpg'.
	gl
		glTexImage2D_target: GL_TEXTURE_2D
			level: 0
			internalFormat: GL_RGB
			width: imageSurface width
			height: imageSurface height
			border: 0
			format: GL_RGB
			type: GL_UNSIGNED_BYTE
			data: imageSurface pixels;
		glGenerateMipmap_target: GL_TEXTURE_2D.
	shaderProgram
		use;
		setInt: 'ourTexture' value: 0!

setupShaderProgram
	| vertexShader fragmentShader |
	vertexShader := context createVertexShader.
	vertexShader
		sourceCode: '#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexCoord;

out vec3 ourColor;
out vec2 TexCoord;

void main()
{
    gl_Position = vec4(aPos, 1.0);
    ourColor = aColor;
    TexCoord = aTexCoord;
}';
		compile.
	fragmentShader := context createFragmentShader.
	fragmentShader
		sourceCode: '#version 330 core
out vec4 FragColor;
  
in vec3 ourColor;
in vec2 TexCoord;

uniform sampler2D ourTexture;

void main()
{
    FragColor = texture(ourTexture, TexCoord);
}';
		compile.
	shaderProgram := context createProgram.
	shaderProgram
		attachShader: vertexShader;
		attachShader: fragmentShader;
		link.
	vertexShader delete.
	fragmentShader delete!

setupVertexData
	vertices := #(0.5 0.5 0.0 1.0 0.0 0.0 1.0 1.0 0.5 -0.5 0.0 0.0 1.0 0.0 1.0 0.0 -0.5 -0.5 0.0 0.0 0.0 1.0 0.0 0.0 -0.5 0.5 0.0 1.0 1.0 0.0 0.0 1.0).
	indices := #(0 1 3 1 2 3).
	vertexArray := context generateVertexArray.
	vertexBuffer := context generateArrayBuffer.
	indexBuffer := context generateElementArrayBuffer.
	vertexArray bind.
	vertexBuffer bind.
	vertexBuffer bufferStaticData: vertices.
	indexBuffer bind.
	indexBuffer bufferStaticData: indices.
	" position attribute "
	gl
		glVertexAttribPointer_index: 0
			size: 3
			type: GL_FLOAT
			normalized: false
			stride: 8 * FLOAT byteSize
			pointer: 0 asParameter;
		glEnableVertexAttribArray_index: 0.
	" color attribute "
	gl
		glVertexAttribPointer_index: 1
			size: 3
			type: GL_FLOAT
			normalized: false
			stride: 8 * FLOAT byteSize
			pointer: (3 * FLOAT byteSize) asParameter;
		glEnableVertexAttribArray_index: 1.
	"texture attribute"
	gl
		glVertexAttribPointer_index: 2
			size: 2
			type: GL_FLOAT
			normalized: false
			stride: 8 * FLOAT byteSize
			pointer: (6 * FLOAT byteSize) asParameter;
		glEnableVertexAttribArray_index: 2! !

!TextureDemo categoriesForMethods!
render!public! !
setup!public! !
setupContainerTexture!private! !
setupShaderProgram!private! !
setupVertexData!private! !
!

