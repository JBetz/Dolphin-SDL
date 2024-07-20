"Filed out from Dolphin Smalltalk"!

GLObject subclass: #GLShader
	instanceVariableNames: 'sourceCode'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GLShader guid: (GUID fromString: '{df9b9c87-b05f-4512-8f55-553977c573ab}')!

GLShader comment: ''!

!GLShader categoriesForClass!Kernel-Objects! !

!GLShader methodsFor!

compile
	| resultCode |
	gl glCompileShader_shader: handle.
	resultCode := DWORD new.
	gl
		glGetShaderiv_shader: handle
		pname: GL_COMPILE_STATUS
		params: resultCode.
	resultCode = 0
		ifTrue: 
			[| infoLog |
			infoLog := String new: 512.
			gl
				glGetShaderInfoLog_shader: handle
				maxLength: 512
				length: nil
				infoLog: infoLog.
			self error: infoLog]!

delete
	gl glDeleteShader_shader: handle!

sourceCode
	^sourceCode!

sourceCode: aString
	sourceCode := aString.
	gl
		glShaderSource_shader: handle
		count: 1
		string: (ExternalMemory fromString: aString asParameter)
		length: nil! !

!GLShader categoriesForMethods!
compile!public! !
delete!public! !
sourceCode!public! !
sourceCode:!public! !
!

