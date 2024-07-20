"Filed out from Dolphin Smalltalk"!

GLObject subclass: #GLProgram
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLProgram guid: (GUID fromString: '{24da815b-572d-4db8-a8f9-12317643b9e7}')!

GLProgram comment: ''!

!GLProgram categoriesForClass!Unclassified! !

!GLProgram methodsFor!

attachShader: aGLShader
	gl glAttachShader_program: handle shader: aGLShader handle!

delete
	gl glDeleteProgram_program: handle!

link
	| resultCode |
	gl glLinkProgram_program: handle.
	resultCode := DWORD new.
	gl
		glGetProgramiv_program: handle
		pname: GL_LINK_STATUS
		params: resultCode.
	resultCode = 0
		ifTrue: 
			[| infoLog |
			infoLog := String new: 512.
			gl
				glGetProgramInfoLog_program: handle
				maxLength: 512
				length: nil
				infoLog: infoLog.
			self error: infoLog]!

setBoolean: aString value: aBoolean
	| location |
	location := gl glGetUniformLocation_program: handle name: aString.
	gl glUniform1i_location: location v0: aBoolean!

setFloat: aString value: aFloat
	| location |
	location := gl glGetUniformLocation_program: handle name: aString.
	gl glUniform1f_location: location v0: aFloat!

setFloatMatrix4: aString matrix: aMatrix
	| location |
	location := gl glGetUniformLocation_program: handle name: aString.
	gl
		glUniformMatrix4fv_location: location
		count: 1
		transpose: false
		value: aMatrix asFloatArray!

setFloatVector4: aString v1: v1 v2: v2 v3: v3 v4: v4
	| location |
	location := gl glGetUniformLocation_program: handle name: aString.
	gl
		glUniform4f_location: location
		v0: v1
		v1: v2
		v2: v3
		v3: v4!

setInt: aString value: anInteger
	| location |
	location := gl glGetUniformLocation_program: handle name: aString.
	gl glUniform1i_location: location v0: anInteger!

use
	gl glUseProgram_program: handle! !

!GLProgram categoriesForMethods!
attachShader:!public! !
delete!public! !
link!public! !
setBoolean:value:!public! !
setFloat:value:!public! !
setFloatMatrix4:matrix:!public! !
setFloatVector4:v1:v2:v3:v4:!public! !
setInt:value:!public! !
use!public! !
!

