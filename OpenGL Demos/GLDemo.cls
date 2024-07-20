"Filed out from Dolphin Smalltalk"!

Application subclass: #GLDemo
	instanceVariableNames: 'context isReady sdl sdlImage sdlTtf debugCallback gl shaderProgram vertices indices vertexArray vertexBuffer indexBuffer'
	classVariableNames: ''
	poolDictionaries: 'OpenGLConstants'
	classInstanceVariableNames: ''!

GLDemo guid: (GUID fromString: '{d4ef1a81-017a-4e8f-a962-ccdac236182b}')!

GLDemo comment: ''!

!GLDemo categoriesForClass!Kernel-Objects! !

!GLDemo methodsFor!

clearWindow
	gl
		glClearColor_red: 0.2
			green: 0.3
			blue: 0.3
			alpha: 1.0;
		glClear_mask: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT)!

close
	
	[vertexArray delete.
	vertexBuffer delete.
	shaderProgram delete.
	context delete] on: Error
			do: 
				[:error |
				Transcript
					display: error;
					cr].
	super close!

initialize
	super initialize.
	sdl := SDL3Library default.
	sdlImage := SDL3ImageLibrary default.
	sdlTtf := SDL3TTFLibrary default.
	gl := OpenGLLibrary default.
	sdl
		glSetAttribute_attr: SDL_GL_CONTEXT_MAJOR_VERSION value: 4;
		glSetAttribute_attr: SDL_GL_CONTEXT_MINOR_VERSION value: 6;
		glSetAttribute_attr: SDL_GL_CONTEXT_PROFILE_MASK value: SDL_GL_CONTEXT_PROFILE_CORE;
		glSetAttribute_attr: SDL_GL_CONTEXT_FLAGS value: SDL_GL_CONTEXT_DEBUG_FLAG;
		glSetAttribute_attr: SDL_GL_DOUBLEBUFFER value: 1;
		glLoadLibrary_path: OpenGLLibrary default fileName.
	isReady := false!

onCreated
	| contextHandle |
	window := inputState
				createWindow: 'LearnOpenGL'
				extent: self calculateInitialExtent
				flags: self windowFlags
				for: self.
	contextHandle := sdl glCreateContext_window: window.
	contextHandle ifNil: [self error: sdl getError].
	context := GLContext fromHandle: contextHandle.
	(sdl glMakeCurrent_window: window context: contextHandle) ~= 0 ifTrue: [self error: sdl getError].
	gl loadMethods.
	sdl glSetSwapInterval_interval: 1.
	context viewport: 0 @ 0 extent: window width @ window height.
	self setup.
	isReady := true!

onWindowResized: aWindowEvent
	super onWindowResized: aWindowEvent.
	context viewport: 0 @0 extent: aWindowEvent data1 @ aWindowEvent data2!

render
	self subclassResponsibility!

setup
	gl glEnable_cap: GL_DEPTH_TEST.
	self setupDebuggingCallback!

setupDebuggingCallback
	| contextFlags |
	contextFlags := DWORD new.
	gl glGetIntegerv_pname: GL_CONTEXT_FLAGS data: contextFlags.
	debugCallback := ExternalCallback block: 
					[:source :type :id :severity :length :message :userParam |
					Transcript
						display: type -> id -> severity -> length -> message;
						cr]
				descriptor: (ExternalDescriptor returnType: 'void'
						argumentTypes: ' dword dword dword dword dword char* lpvoid').
	gl
		glEnable_cap: GL_DEBUG_OUTPUT;
		glEnable_cap: GL_DEBUG_OUTPUT_SYNCHRONOUS;
		glDebugMessageCallback_callback: debugCallback asParameter userParam: nil;
		glDebugMessageControl_source: GL_DONT_CARE
			type: GL_DONT_CARE
			severity: GL_DONT_CARE
			count: 0
			ids: nil
			enabled: true!

swapWindow
	(sdl glSwapWindow_window: window) ~= 0
		ifTrue: 
			[isReady := false.
			self error: sdl getError]!

update
	isReady ifFalse: [^self].
	self
		clearWindow;
		render;
		swapWindow!

windowFlags
	^SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE! !

!GLDemo categoriesForMethods!
clearWindow!private! !
close!public! !
initialize!public! !
onCreated!public! !
onWindowResized:!public! !
render!public! !
setup!public! !
setupDebuggingCallback!private! !
swapWindow!private! !
update!public! !
windowFlags!public! !
!

!GLDemo class methodsFor!

preferredExtent
	^800 @ 600! !

!GLDemo class categoriesForMethods!
preferredExtent!public! !
!

