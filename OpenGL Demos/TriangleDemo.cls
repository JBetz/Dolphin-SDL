"Filed out from Dolphin Smalltalk"!

GLDemo subclass: #TriangleDemo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TriangleDemo guid: (GUID fromString: '{524eb371-e42b-4782-ba54-e00448baa43b}')!

TriangleDemo comment: ''!

!TriangleDemo categoriesForClass!Kernel-Objects! !

!TriangleDemo methodsFor!

render
	shaderProgram use.
	gl
		glDrawArrays_mode: GL_TRIANGLES
		first: 0
		count: 3!

setup
	super setup.
	self
		setupShaderProgram;
		setupVertexData!

setupShaderProgram
	| vertexShader fragmentShader |
	vertexShader := context createVertexShader.
	vertexShader
		sourceCode: '#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 ourColor;

void main()
{
    gl_Position = vec4(aPos, 1.0);
    ourColor = aColor;
}';
		compile.
	fragmentShader := context createFragmentShader.
	fragmentShader
		sourceCode: '#version 330 core
out vec4 FragColor;
  
in vec3 ourColor;

void main()
{
    FragColor = vec4(ourColor, 1.0);
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
	vertices := #(0.5 -0.5 0.0 1.0 0.0 0.0 -0.5 -0.5 0.0 0.0 1.0 0.0 0.0 0.5 0.0 0.0 0.0 1.0).
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
			stride: 6 * FLOAT byteSize
			pointer: 0 asParameter;
		glEnableVertexAttribArray_index: 0.
	" color attribute "
	gl
		glVertexAttribPointer_index: 1
			size: 3
			type: GL_FLOAT
			normalized: false
			stride: 6 * FLOAT byteSize
			pointer: (3 * FLOAT byteSize) asParameter;
		glEnableVertexAttribArray_index: 1! !

!TriangleDemo categoriesForMethods!
render!public! !
setup!public! !
setupShaderProgram!private! !
setupVertexData!private! !
!

