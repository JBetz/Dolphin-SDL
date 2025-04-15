"Filed out from Dolphin Smalltalk"!

Object subclass: #Renderer
	instanceVariableNames: 'fontCache textEngine'
	classVariableNames: 'CommandMap'
	poolDictionaries: 'SDLConstants TTFConstants'
	classInstanceVariableNames: ''!

Renderer guid: (GUID fromString: '{9be79942-98a4-44d7-8072-de4700712167}')!

Renderer comment: ''!

!Renderer categoriesForClass!Kernel-Objects! !

!Renderer methodsFor!

clear
	self subclassResponsibility!

createImageTexture: aString
	| surface |
	surface := SDL_Surface fromFile: aString.
	^self createTextureFromSurface: surface!

createStaticTexture: aPoint format: anInteger
	Error subclassResponsibility!

createStreamingTexture: aPoint
	self subclassResponsibility!

createTargetTexture: aPoint
	self subclassResponsibility!

createTextEngine
	self subclassResponsibility!

createTextureFromSurface: aSDL_Surface
	self subclassResponsibility!

defaultFont
	^self lookupFont: self defaultFontFile pointSize: 18!

defaultFontFile
	^FileLocator imageRelative: 'default.ttf'!

downloadTexture: aTexture
	^self downloadTexture: aTexture pixelFormat: SDL_PIXELFORMAT_ARGB8888!

downloadTexture: aTexture pixelFormat: anInteger
	Error subclassResponsibility!

execute: aRenderCommand
	| selector |
	selector := CommandMap at: aRenderCommand class.
	self perform: selector with: aRenderCommand!

initialize
	super initialize.
	fontCache := LookupTable new!

lookupFont: aString pointSize: aFloat
	| index font |
	(File exists: aString)
		ifFalse: [self error: ('Font file does not exist at: <1s>' expandMacrosWith: aString)].
	index := aString -> aFloat.
	font := fontCache at: index ifAbsent: [nil].
	(font isNil or: [font isNull])
		ifTrue: 
			[font := TTF_Font fromFile: aString pointSize: aFloat.
			fontCache at: index put: font].
	^font!

present: aCanvas
	self subclassResponsibility!

setClip: aRectangle
	Error subclassResponsibility!

textEngine
	^textEngine!

updateTexture: aGPUTexture pixels: anExternalAddress pitch: anInteger 
	self subclassResponsibility!

viewport
	self subclassResponsibility!

withOffset: aPoint do: aBlock
	self addOffset: aPoint.
	aBlock value.
	self subtractOffset: aPoint! !

!Renderer categoriesForMethods!
clear!public! !
createImageTexture:!public! !
createStaticTexture:format:!public! !
createStreamingTexture:!public! !
createTargetTexture:!public! !
createTextEngine!accessing!private! !
createTextureFromSurface:!public! !
defaultFont!public! !
defaultFontFile!private! !
downloadTexture:!images!public! !
downloadTexture:pixelFormat:!public! !
execute:!private! !
initialize!public! !
lookupFont:pointSize:!font!private! !
present:!public! !
setClip:!public! !
textEngine!accessing!public! !
updateTexture:pixels:pitch:!public! !
viewport!public! !
withOffset:do:!public! !
!

!Renderer class methodsFor!

initialize
	"self initialize"

	CommandMap := LookupTable new.
	CommandMap
		at: DrawPoint put: #queueDrawPoint:;
		at: DrawLine put: #queueDrawLine:;
		at: DrawRectangle put: #queueDrawRectangle:;
		at: FillPolygon put: #queueFillPolygon:;
		at: FillRectangle put: #queueFillRectangle:;
		at: DrawTexture put: #queueDrawTexture:;
		at: DrawString put: #queueDrawString:;
		at: DrawText put: #queueDrawText:!

new
	^super new initialize! !

!Renderer class categoriesForMethods!
initialize!public! !
new!public! !
!

