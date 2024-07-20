"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #OpenGLLibrary
	instanceVariableNames: ''
	classVariableNames: 'GLErrors OpenGLExtension'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

OpenGLLibrary guid: (GUID fromString: '{b62dff38-8a3f-45c0-9a0c-2d385639d3ba}')!

OpenGLLibrary comment: 'This library  needs to be loaded before calling to any function of the library GDI.
Otherwise the function    "  HGLRC wglCreateContext(  HDC hdc)" fail and return a NULL handle.'!

!OpenGLLibrary categoriesForClass!Unclassified! !

!OpenGLLibrary methodsFor!

glActiveTexture_texture: texture
	<cdecl: void glActiveTexture dword>
	^self invalidCall: _failureCode!

glAttachShader_program: program shader: shader
	<cdecl: void glAttachShader dword dword>
	^self invalidCall: _failureCode!

glBindBuffer_target: target buffer: buffer
	<cdecl: void glBindBuffer dword dword>
	^self invalidCall: _failureCode!

glBindTexture_target: target texture: texture
	<cdecl: void glBindTexture dword dword>
	^self invalidCall: _failureCode!

glBindVertexArray_array: array
	<cdecl: void glBindVertexArray dword>
	^self invalidCall: _failureCode!

glBufferData_target: target size: size data: data usage: usage
	<cdecl: void glBindBuffer dword dword lpvoid dword>
	^self invalidCall: _failureCode!

glClear_mask: mask
	<cdecl: void glClear dword>
	^self invalidCall: _failureCode!

glClearColor_red: red green: green blue: blue alpha: alpha
	<cdecl: void glClearColor float float float float>
	^self invalidCall: _failureCode!

glCompileShader_shader: shader
	<cdecl: void glCompileShader dword>
	^self invalidCall: _failureCode!

glCreateProgram
	<cdecl: dword glCreateProgram>
	^self invalidCall: _failureCode!

glCreateShader_shaderType: shaderType
	<cdecl: dword glCreateShader dword>
	^self invalidCall: _failureCode!

glDebugMessageCallback_callback: callback userParam: userParam
	<cdecl: void glDebugMessageCallback lpvoid lpvoid>
	^self invalidCall: _failureCode!

glDebugMessageControl_source: source type: type severity: severity count: count ids: ids enabled: enabled
	<cdecl: void glDebugMessageControl dword dword dword dword dword* bool>
	^self invalidCall: _failureCode!

glDeleteBuffers_n: n buffers: buffers
	<cdecl: void glDeleteBuffers dword sdword*>
	^self invalidCall: _failureCode!

glDeleteProgram_program: program
	<cdecl: void glDeleteProgram dword>
	^self invalidCall: _failureCode!

glDeleteShader_shader: shader
	<cdecl: void glDeleteShader dword>
	^self invalidCall: _failureCode!

glDeleteVertexArrays_n: n arrays: arrays
	<cdecl: void glDeleteVertexArrays dword dword*>
	^self invalidCall: _failureCode!

glDrawArrays_mode: mode first: first count: count
	<cdecl: void glDrawArrays dword sdword dword>
	^self invalidCall: _failureCode!

glDrawElements_mode: mode count: count type: type indices: indices
	<cdecl: void glDrawElements dword dword dword lpvoid>
	^self invalidCall: _failureCode!

glEnable_cap: cap
	<cdecl: void glEnable dword>
	^self invalidCall: _failureCode!

glEnableVertexAttribArray_index: index
	<cdecl: void glEnableVertexAttribArray dword>
	^self invalidCall: _failureCode!

glGenBuffers_n: n buffers: buffers
	<cdecl: void glGenBuffers dword dword*>
	^self invalidCall: _failureCode!

glGenerateMipmap_target: target
	<cdecl: void glGenerateMipmap dword>
	^self invalidCall: _failureCode!

glGenTextures_n: n textures: textures
	<cdecl: void glGenTextures dword dword*>
	^self invalidCall: _failureCode!

glGenVertexArrays_n: n arrays: arrays
	<cdecl: void glGenVertexArrays dword dword*>
	^self invalidCall: _failureCode!

glGetError
	<cdecl: dword glGetError>
	^self invalidCall: _failureCode!

glGetIntegerv_pname: pname data: data
	<cdecl: void glGetIntegerv dword dword*>
	^self invalidCall: _failureCode!

glGetProgramInfoLog_program: program maxLength: maxLength length: length infoLog: infoLog
	<cdecl: void glGetProgramInfoLog dword dword dword* lpstr>
	^self invalidCall: _failureCode!

glGetProgramiv_program: program pname: pname params: params
	<cdecl: void glGetProgramiv dword dword sdword*>
	^self invalidCall: _failureCode!

glGetShaderInfoLog_shader: shader maxLength: maxLength length: length infoLog: infoLog
	<cdecl: void glGetShaderInfoLog dword dword dword* lpstr>
	^self invalidCall: _failureCode!

glGetShaderiv_shader: shader pname: pname params: params
	<cdecl: void glGetShaderiv dword dword sdword*>
	^self invalidCall: _failureCode!

glGetUniformLocation_program: program name: name
	<cdecl: sdword glGetUniformLocation dword lpstr>
	^self invalidCall: _failureCode!

glLinkProgram_program: program
	<cdecl: void glLinkProgram dword>
	^self invalidCall: _failureCode!

glPolygonMode_face: face mode: mode
	<cdecl: void glPolygonMode dword dword>
	^self invalidCall: _failureCode!

glReadPixels_x: x y: y width: width height: height format: format type: type data: data
	<cdecl: void glReadPixels sdword sdword dword dword dword dword lpvoid>
	^self invalidCall: _failureCode!

glShaderSource_shader: shader count: count string: string length: length
	<cdecl: void glShaderSource dword dword lpstr* sdword*>
	^self invalidCall: _failureCode!

glTexImage2D_target: target level: level internalFormat: internalFormat width: width height: height border: border format: format type: type data: data
	<cdecl: void glTexImage2D dword sdword sdword dword dword sdword dword dword lpvoid>
	^self invalidCall: _failureCode!

glTexParameterf_target: target pname: pname param: param
	<cdecl: void glTexParameterf dword dword float>
	^self invalidCall: _failureCode!

glTexParameterfv_target: target pname: pname param: param
	<cdecl: void glTexParameterfv dword dword sdword>
	^self invalidCall: _failureCode!

glTexParameteri_target: target pname: pname param: param
	<cdecl: void glTexParameterf dword dword sdword>
	^self invalidCall: _failureCode!

glUniform1f_location: location v0: v0
	<cdecl: void glUniform3f sdword float>
	^self invalidCall: _failureCode!

glUniform1i_location: location v0: v0
	<cdecl: void glUniform1i sdword sdword>
	^self invalidCall: _failureCode!

glUniform2f_location: location v0: v0 v1: v1
	<cdecl: void glUniform3f sdword float float>
	^self invalidCall: _failureCode!

glUniform3f_location: location v0: v0 v1: v1 v2: v2
	<cdecl: void glUniform3f sdword float float float>
	^self invalidCall: _failureCode!

glUniform4f_location: location v0: v0 v1: v1 v2: v2 v3: v3
	<cdecl: void glUniform4f sdword float float float float>
	^self invalidCall: _failureCode!

glUniformMatrix4fv_location: location count: count transpose: transpose value: value
	<cdecl: void glUniformMatrix4fv sdword dword bool float*>
	^self invalidCall: _failureCode!

glUseProgram_program: program
	<cdecl: void glUseProgram dword>
	^self invalidCall: _failureCode!

glVertexAttribPointer_index: index size: size type: type normalized: normalized stride: stride pointer: pointer
	<cdecl: void glVertexAttribPointer dword sdword dword bool dword lpvoid>
	^self invalidCall: _failureCode!

glViewport_x: x y: y width: width height: height
	<cdecl: void glViewport sdword sdword dword dword>
	^self invalidCall: _failureCode!

loadMethodAt: anExternalMethod
	| selector functionPointer |
	selector := anExternalMethod selector.
	functionPointer := SDL3Library default glGetProcAddress_proc: ('_' split: selector) first.
	anExternalMethod procAddress: functionPointer!

loadMethods
	self class allMethodsDo: [:each | each isExternalCall ifTrue: [self loadMethodAt: each]]! !

!OpenGLLibrary categoriesForMethods!
glActiveTexture_texture:!public! !
glAttachShader_program:shader:!public! !
glBindBuffer_target:buffer:!public! !
glBindTexture_target:texture:!public! !
glBindVertexArray_array:!public! !
glBufferData_target:size:data:usage:!public! !
glClear_mask:!public! !
glClearColor_red:green:blue:alpha:!public! !
glCompileShader_shader:!public! !
glCreateProgram!public! !
glCreateShader_shaderType:!public! !
glDebugMessageCallback_callback:userParam:!public! !
glDebugMessageControl_source:type:severity:count:ids:enabled:!public! !
glDeleteBuffers_n:buffers:!public! !
glDeleteProgram_program:!public! !
glDeleteShader_shader:!public! !
glDeleteVertexArrays_n:arrays:!public! !
glDrawArrays_mode:first:count:!public! !
glDrawElements_mode:count:type:indices:!public! !
glEnable_cap:!public! !
glEnableVertexAttribArray_index:!public! !
glGenBuffers_n:buffers:!public! !
glGenerateMipmap_target:!public! !
glGenTextures_n:textures:!public! !
glGenVertexArrays_n:arrays:!public! !
glGetError!public! !
glGetIntegerv_pname:data:!public! !
glGetProgramInfoLog_program:maxLength:length:infoLog:!public! !
glGetProgramiv_program:pname:params:!public! !
glGetShaderInfoLog_shader:maxLength:length:infoLog:!public! !
glGetShaderiv_shader:pname:params:!public! !
glGetUniformLocation_program:name:!public! !
glLinkProgram_program:!public! !
glPolygonMode_face:mode:!public! !
glReadPixels_x:y:width:height:format:type:data:!public! !
glShaderSource_shader:count:string:length:!public! !
glTexImage2D_target:level:internalFormat:width:height:border:format:type:data:!public! !
glTexParameterf_target:pname:param:!public! !
glTexParameterfv_target:pname:param:!public! !
glTexParameteri_target:pname:param:!public! !
glUniform1f_location:v0:!public! !
glUniform1i_location:v0:!public! !
glUniform2f_location:v0:v1:!public! !
glUniform3f_location:v0:v1:v2:!public! !
glUniform4f_location:v0:v1:v2:v3:!public! !
glUniformMatrix4fv_location:count:transpose:value:!public! !
glUseProgram_program:!public! !
glVertexAttribPointer_index:size:type:normalized:stride:pointer:!public! !
glViewport_x:y:width:height:!public! !
loadMethodAt:!public! !
loadMethods!public! !
!

!OpenGLLibrary class methodsFor!

ambientAndDiffuse
	"#define GL_AMBIENT_AND_DIFFUSE            0x1602"

	^16r1602!

ambientLight
	"#define GL_AMBIENT                        0x1200"

	^16r1200!

backFace
	"#define GL_BACK                           0x0405"

	^16r405!

blend
	"#define GL_BLEND                          0x0BE2"

	^16r0BE2!

clampToEdge
	"#define GL_CLAMP_TO_EDGE 0x812F"

	^16r812F!

clear
	"Private - Clear down cached external function addresses from previous runs. 
	The default instances will be lazily re-opened because their handles will be null
	on image re-start (ExternalHandles are automatically nulled by the VM on image load).
	Similary function addresses will be lazily requeried as required."

	super clear.
	OpenGLExtension := Dictionary new!

colorBufferBit
	"#define GL_COLOR_BUFFER_BIT               0x00004000"

	^16r00004000!

colorSum
	"#define GL_COLOR_SUM 0x8458"

	^16r8458!

compileSource: source 
	"Private - Compile and Log the source code in 'source' "

	| result |
	result := (self compile: source trimBlanks classified: 'gl') isNil 
				ifTrue: [^self error: 'Error during code generation...'].
	^result!

dephtBufferBit
	"#define GL_DEPTH_BUFFER_BIT               0x00000100"

	^16r00000100!

depthBufferBit
	"#define GL_DEPTH_BUFFER_BIT               0x00000100"

	^16r00000100!

depthTest
	"#define GL_DEPTH_TEST                     0x0B71"

	^16r0B71!

diffuseLight
	"#define GL_DIFFUSE                        0x1201"

	^16r1201!

exponential
	"#define GL_EXP                            0x0800"

	^16r0800!

exponential2
	"#define GL_EXP2                            0x0801"

	^16r0801!

fileName
	"Answer the host system file name of the external library which the 
	receiver represents"

	^'openGL32'!

flatShade
	"#define GL_FLAT                           0x1D00"

	^16r1D00!

fog
	"#define GL_FOG                            0x0B60"

	^16r0B60!

fogBit
	"#define GL_FOG_BIT                        0x00000080"

	^16r00000080 

 !

fogColor
	"#define GL_FOG_COLOR                      0x0B66"

	^16r0B66!

fogCoord 
	"#define GL_FOG_COORD        0x8451"

	^16r8451!

fogCoordSrc
	"#define GL_FOG_COORD_SRC    0x8450"

	^16r8450!

fogDensity
	"#define GL_FOG_DENSITY                    0x0B62"

	^16r0B62!

fogEnd
	"#define GL_FOG_END                        0x0B64"

	^16r0B64!

fogMode
	"#define GL_FOG_MODE                       0x0B65"

	^16r0B65!

fogStart
	"#define GL_FOG_START                      0x0B63"

	^16r0B63!

fragmentDepth
	"#define GL_FRAGMENT_DEPTH   0x8452"

	^16r8452!

frontBackFace
	"#define GL_FRONT_AND_BACK                 0x0408"

	^16r408!

frontFace
	"#define GL_FRONT                          0x0404"

	^16r404!

functionAddEquation
	"#define GL_FUNC_ADD                   0x8006"

	^16r8006!

initialize
	self
		initializeGLErrorConstants;
		initializeOpenGLExtension.
	super initialize!

initializeGLErrorConstants
	GLErrors := Dictionary new.
	GLErrors
		at: 'GL_INVALID_ENUM' put: 1280;
		at: 'GL_INVALID_VALUE' put: 1281;
		at: 'GL_INVALID_OPERATION' put: 1282;
		at: 'GL_STACK_OVERFLOW' put: 1283;
		at: 'GL_STACK_UNDERFLOW' put: 1284;
		at: 'GL_OUT_OF_MEMORY' put: 1285!

initializeOpenGLExtension
	OpenGLExtension := Dictionary new!

isValidMethodAt: aSymbol 
	"Return true if the method at aSymbol is valid , false otherwise "

	^(self openGLExtension includesKey: aSymbol) and: [(self openGLExtension at: aSymbol) notNil]!

lequalFunction
	"#define GL_LEQUAL                         0x0203"

	^16r0203!

light0
	"#define GL_LIGHT0                         0x4000"

	^16r4000!

light1
	"#define GL_LIGHT1                         0x4001"

	^16r4001!

light2
	"#define GL_LIGHT2                         0x4002"

	^16r4002!

ligthing
	"#define GL_LIGHTING                       0x0B50"

	^16rB50!

ligthingBit
	"#define GL_LIGHTING_BIT                   0x00000040"

	^16r00000040!

line
	"#define GL_LINES                          0x0001"

	^16r1!

linear
	"#define GL_LINEAR                         0x2601"

	^16r2601!

lineStipple
	"#define GL_LINE_STIPPLE                   0x0B24"

	^16rB24!

listBit
	"#define GL_LIST_BIT                       0x00020000"

	^16r00020000 !

modulate
	"#define GL_MODULATE                       0x2100"

	^16r2100!

nearest
	"#define GL_NEAREST                        0x2600"

	^16r2600!

oneMinusSourceAlpha
	"#define GL_ONE_MINUS_SRC_ALPHA            0x0303"

	^16r0303!

open
	"Answer a new instance of the receiver to represent the receiver's ExternalLibrary. The 
	instance can be used to invoke the functions of the external library specified as instance
	methods"

	| library |
	library := self open: self fileName.
	Smalltalk at: #OpenGLInterface put: library.
	^library!

openGLExtension
	^OpenGLExtension!

pfdDoubleBuffer
	"Since we're using a double buffered DC, anything we draw to the DC actually goes to a non-visible space in memory. This happens when you specify the PFD_DOUBLEBUFFER flag in the pixel format above. It isn't displayed in the window until we tell it to. This is very useful for rendering the scene off-screen and displaying the final image in one shot. This can be done in one simple function call to SwapBuffers, simply supply the DC in question. "

	^16r00000001!

pfdDrawToWindow
	^16r00000004!

pfdMainPlane
	^0!

pfdSupportOpenGL
	^16r00000020!

pfdTypeRGBA
	^0!

pixelFormatFlags
	"Return the  pixel format flags for the receiver"

	^(self pfdDrawToWindow bitOr: self pfdDoubleBuffer) bitOr: self pfdSupportOpenGL!

point
	"#define GL_POINTS                         0x0000"

	^0!

polygon
	"#define GL_POLYGON                        0x0009"

	^16r9!

polygonFill
	"#define GL_FILL                           0x1B02"

	^16r1B02!

polygonLine
	"#define GL_LINE                           0x1B01"

	^16r1B01 !

polygonPoint
	"#define GL_POINT                          0x1B00"

	^16r1B00!

positionLight
	"#define GL_POSITION                       0x1203"

	^16r1203!

projectionMatrix
	"#define GL_PROJECTION                     0x1701"

	^16r1701!

quads
	"#define GL_QUADS                          0x0007"

	^16r0007!

quadsStrip
	"#define GL_QUAD_STRIP                     0x0008"

	^16r0008!

renderer
	"#define GL_RENDERER                       0x1F01"

	^16r1F01!

replace
	"#define GL_REPLACE x01E01"

	^16r1E01!

rgb
	"#define GL_RGB                            0x1907"

	^16r1907!

secondaryColorFunctionName
	^'glSecondaryColor3fEXT'!

shininess
	"#define GL_SHININESS                      0x1601"

	^16r1601!

smoothShade
	"#define GL_SMOOTH                         0x1D01"

	^16r1D01!

sourceAlphaBlending
	"#define GL_SRC_ALPHA                      0x0302"

	^16r0302!

specularLight
	"#define GL_SPECULAR                       0x1202"

	^16r1202!

spotCutOffLight
	"#define GL_SPOT_CUTOFF                    0x1206"

	^16r1206!

spotDirectionLight
	"#define GL_SPOT_DIRECTION                 0x1204"

	^16r1204!

stencilBufferBit
	"#define GL_STENCIL_BUFFER_BIT             0x00000400"

	^16r0000400!

texture2D
	"#define GL_TEXTURE_2D                     0x0DE1"

	^16r0DE1!

textureEnv
	"#define GL_TEXTURE_ENV_MODE               0x2300"

	^16r2300!

textureEnvMode
	"#define GL_TEXTURE_ENV_MODE               0x2200"

	^16r2200!

textureMagFilter
	"#define GL_TEXTURE_MAG_FILTER             0x2800"

	^16r2800!

textureMinFilter
	"#define #define GL_TEXTURE_MIN_FILTER             0x2801              "

	^16r2801!

textureResident
	"#define GL_TEXTURE_RESIDENT               0x8067"

	^16r8067!

textureWraps
	"#define GL_TEXTURE_WRAP_S                 0x2802"

	^16r2802!

textureWrapt
	"#define GL_TEXTURE_WRAP_T                 0x2803"

	^16r2803!

triangle
	"#define GL_TRIANGLES                      0x0004"

	^16r4!

triangleFan
	"#define GL_TRIANGLE_FAN                   0x0006"

	^16r0006!

triangleStrip
	"#define GL_TRIANGLE_STRIP                 0x0005"

	^16r0005!

unpackAlignment
	"#define GL_UNPACK_ALIGNMENT               0x0CF5"

	^16r0CF5!

unsignedByte
	"#define GL_UNSIGNED_BYTE                  0x1401
         Lists is treated as an array of unsigned bytes,    each in the range 0 through 255.    "

	^16r1401!

vendor
	"#define GL_VENDOR                         0x1F00"

	^16r1F00!

version
	"#define GL_VERSION                        0x1F02"

	^16r1F02!

viewMatrix
	"#define GL_MODELVIEW                      0x1700"

	^16r1700
 ! !

!OpenGLLibrary class categoriesForMethods!
ambientAndDiffuse!constants!private! !
ambientLight!constants!private! !
backFace!constants!private! !
blend!constants!private! !
clampToEdge!private! !
clear!initializing!private! !
colorBufferBit!constants!private! !
colorSum!constants!private! !
compileSource:!operations!private! !
dephtBufferBit!constants!private! !
depthBufferBit!private! !
depthTest!constants!private! !
diffuseLight!constants!private! !
exponential!constants!private! !
exponential2!constants!private! !
fileName!constants!private! !
flatShade!constants!private! !
fog!constants!private! !
fogBit!private! !
fogColor!constants!private! !
fogCoord!constants!private! !
fogCoordSrc!constants!private! !
fogDensity!constants!private! !
fogEnd!constants!private! !
fogMode!constants!private! !
fogStart!constants!private! !
fragmentDepth!constants!private! !
frontBackFace!constants!private! !
frontFace!constants!private! !
functionAddEquation!constants!private! !
initialize!private! !
initializeGLErrorConstants!private! !
initializeOpenGLExtension!private! !
isValidMethodAt:!private! !
lequalFunction!constants!private! !
light0!constants!private! !
light1!constants!private! !
light2!constants!private! !
ligthing!constants!private! !
ligthingBit!private! !
line!constants!private! !
linear!constants!private! !
lineStipple!constants!private! !
listBit!constants!private! !
modulate!constants!private! !
nearest!constants!private! !
oneMinusSourceAlpha!constants!private! !
open!instance creation!public! !
openGLExtension!private! !
pfdDoubleBuffer!constants!private! !
pfdDrawToWindow!constants!private! !
pfdMainPlane!constants!private! !
pfdSupportOpenGL!constants!private! !
pfdTypeRGBA!constants!private! !
pixelFormatFlags!private! !
point!constants!private! !
polygon!constants!private! !
polygonFill!constants!private! !
polygonLine!constants!private! !
polygonPoint!constants!private! !
positionLight!constants!private! !
projectionMatrix!constants!private! !
quads!constants!private! !
quadsStrip!constants!private! !
renderer!constants!private! !
replace!private! !
rgb!constants!private! !
secondaryColorFunctionName!constants!private! !
shininess!constants!private! !
smoothShade!constants!private! !
sourceAlphaBlending!constants!private! !
specularLight!constants!private! !
spotCutOffLight!constants!private! !
spotDirectionLight!constants!private! !
stencilBufferBit!constants!private! !
texture2D!constants!private! !
textureEnv!private! !
textureEnvMode!private! !
textureMagFilter!constants!private! !
textureMinFilter!constants!private! !
textureResident!constants!private! !
textureWraps!private! !
textureWrapt!private! !
triangle!constants!private! !
triangleFan!constants!private! !
triangleStrip!constants!private! !
unpackAlignment!constants!private! !
unsignedByte!constants!private! !
vendor!constants!private! !
version!constants!private! !
viewMatrix!constants!private! !
!

