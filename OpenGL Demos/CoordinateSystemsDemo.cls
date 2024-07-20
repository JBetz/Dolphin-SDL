"Filed out from Dolphin Smalltalk"!

GLDemo subclass: #CoordinateSystemsDemo
	instanceVariableNames: 'containerTexture smileyTexture rotation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CoordinateSystemsDemo guid: (GUID fromString: '{f2136c23-5c38-4c7b-9193-b5ccf7381b89}')!

CoordinateSystemsDemo comment: ''!

!CoordinateSystemsDemo categoriesForClass!Kernel-Objects! !

!CoordinateSystemsDemo methodsFor!

initialize
	super initialize.
	rotation := 1!

render
	| model view projection |
	gl glActiveTexture_texture: GL_TEXTURE0.
	containerTexture bind.
	gl glActiveTexture_texture: GL_TEXTURE1.
	smileyTexture bind.
	shaderProgram use.
	model := Matrix
				rotationFor: rotation
				x: 0.5
				y: 1.0
				z: 0.2.
	view := Matrix translationFor: (Vector from: #(0.0 0.0 -3.0 0.0)).
	projection := Matrix
				perspectiveFor: 45
				aspectRatio: window aspectRatio
				nearPlane: 0.1
				farPlane: 100.0.
	shaderProgram
		setFloatMatrix4: 'model' matrix: model;
		setFloatMatrix4: 'view' matrix: view;
		setFloatMatrix4: 'projection' matrix: projection.
	vertexArray bind.
	gl
		glDrawArrays_mode: GL_TRIANGLES
		first: 0
		count: 36.
	rotation := rotation + 1!

setup
	super setup.
	self
		setupVertexData;
		setupShaderProgram;
		setupContainerTexture;
		setupSmileyTexture!

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
	imageSurface destroy.
	shaderProgram
		use;
		setInt: 'texture1' value: 0!

setupShaderProgram
	| vertexShader fragmentShader |
	vertexShader := context createVertexShader.
	vertexShader
		sourceCode: '#version 460 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec2 TexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
	gl_Position = projection * view * model * vec4(aPos, 1.0);
	TexCoord = vec2(aTexCoord.x, aTexCoord.y);
}';
		compile.
	fragmentShader := context createFragmentShader.
	fragmentShader
		sourceCode: '#version 460 core
out vec4 FragColor;

in vec2 TexCoord;

// texture samplers
uniform sampler2D texture1;
uniform sampler2D texture2;

void main()
{
	// linearly interpolate between both textures (80% container, 20% awesomeface)
	FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), 0.2);
}';
		compile.
	shaderProgram := context createProgram.
	shaderProgram
		attachShader: vertexShader;
		attachShader: fragmentShader;
		link.
	vertexShader delete.
	fragmentShader delete!

setupSmileyTexture
	| imageSurface |
	smileyTexture := context generateTexture.
	smileyTexture
		bind;
		setIntParameter: GL_TEXTURE_WRAP_S value: GL_REPEAT;
		setIntParameter: GL_TEXTURE_WRAP_T value: GL_REPEAT;
		setIntParameter: GL_TEXTURE_MIN_FILTER value: GL_LINEAR;
		setIntParameter: GL_TEXTURE_MAG_FILTER value: GL_LINEAR.
	imageSurface := SDL_Surface fromFile: 'smiley.png'.
	gl
		glTexImage2D_target: GL_TEXTURE_2D
			level: 0
			internalFormat: GL_RGB
			width: imageSurface width
			height: imageSurface height
			border: 0
			format: GL_RGBA
			type: GL_UNSIGNED_BYTE
			data: imageSurface pixels;
		glGenerateMipmap_target: GL_TEXTURE_2D.
	imageSurface destroy.
	shaderProgram
		use;
		setInt: 'texture2' value: 1!

setupVertexData
	vertices := #(-0.5 -0.5 -0.5 0.0 0.0 0.5 -0.5 -0.5 1.0 0.0 0.5 0.5 -0.5 1.0 1.0 0.5 0.5 -0.5 1.0 1.0 -0.5 0.5 -0.5 0.0 1.0 -0.5 -0.5 -0.5 0.0 0.0 -0.5 -0.5 0.5 0.0 0.0 0.5 -0.5 0.5 1.0 0.0 0.5 0.5 0.5 1.0 1.0 0.5 0.5 0.5 1.0 1.0 -0.5 0.5 0.5 0.0 1.0 -0.5 -0.5 0.5 0.0 0.0 -0.5 0.5 0.5 1.0 0.0 -0.5 0.5 -0.5 1.0 1.0 -0.5 -0.5 -0.5 0.0 1.0 -0.5 -0.5 -0.5 0.0 1.0 -0.5 -0.5 0.5 0.0 0.0 -0.5 0.5 0.5 1.0 0.0 0.5 0.5 0.5 1.0 0.0 0.5 0.5 -0.5 1.0 1.0 0.5 -0.5 -0.5 0.0 1.0 0.5 -0.5 -0.5 0.0 1.0 0.5 -0.5 0.5 0.0 0.0 0.5 0.5 0.5 1.0 0.0 -0.5 -0.5 -0.5 0.0 1.0 0.5 -0.5 -0.5 1.0 1.0 0.5 -0.5 0.5 1.0 0.0 0.5 -0.5 0.5 1.0 0.0 -0.5 -0.5 0.5 0.0 0.0 -0.5 -0.5 -0.5 0.0 1.0 -0.5 0.5 -0.5 0.0 1.0 0.5 0.5 -0.5 1.0 1.0 0.5 0.5 0.5 1.0 0.0 0.5 0.5 0.5 1.0 0.0 -0.5 0.5 0.5 0.0 0.0 -0.5 0.5 -0.5 0.0 1.0).
	vertexArray := context generateVertexArray.
	vertexBuffer := context generateArrayBuffer.
	vertexArray bind.
	vertexBuffer bind.
	vertexBuffer bufferStaticData: vertices.
	" position attribute "
	gl
		glVertexAttribPointer_index: 0
			size: 3
			type: GL_FLOAT
			normalized: false
			stride: 5 * FLOAT byteSize
			pointer: 0 asParameter;
		glEnableVertexAttribArray_index: 0.
	"texture attribute"
	gl
		glVertexAttribPointer_index: 1
			size: 2
			type: GL_FLOAT
			normalized: false
			stride: 5 * FLOAT byteSize
			pointer: (3 * FLOAT byteSize) asParameter;
		glEnableVertexAttribArray_index: 1! !

!CoordinateSystemsDemo categoriesForMethods!
initialize!public! !
render!public! !
setup!public! !
setupContainerTexture!private! !
setupShaderProgram!private! !
setupSmileyTexture!private! !
setupVertexData!private! !
!

