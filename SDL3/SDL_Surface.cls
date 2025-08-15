"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Surface
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_flags _OffsetOf_format _OffsetOf_h _OffsetOf_pitch _OffsetOf_pixels _OffsetOf_refcount _OffsetOf_reserved _OffsetOf_w'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Surface guid: (GUID fromString: '{3aabd7c9-80d5-4b61-8b6d-7b078df05699}')!

SDL_Surface addClassConstant: '_OffsetOf_flags' value: 16r0!
SDL_Surface addClassConstant: '_OffsetOf_format' value: 16r4!
SDL_Surface addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_Surface addClassConstant: '_OffsetOf_pitch' value: 16r10!
SDL_Surface addClassConstant: '_OffsetOf_pixels' value: 16r14!
SDL_Surface addClassConstant: '_OffsetOf_refcount' value: 16r18!
SDL_Surface addClassConstant: '_OffsetOf_reserved' value: 16r1C!
SDL_Surface addClassConstant: '_OffsetOf_w' value: 16r8!

SDL_Surface comment: ''!

!SDL_Surface categoriesForClass!External-Data-Structured! !

!SDL_Surface methodsFor!

convertPixelFormat: anInteger
	| newSurface |
	newSurface := self library convertSurface_surface: self format: anInteger.
	self checkObjectResult: newSurface.
	^newSurface initialize!

destroy
	self library destroySurface_surface: self!

extent
	^self w @ self h!

flags
	"Answer the <Integer> value of the receiver's 'flags' field."

	^bytes dwordAtOffset: _OffsetOf_flags!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes sdwordAtOffset: _OffsetOf_format!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

height
	^self h!

isSurface
	^true!

isTexture
	^false!

pitch
	"Answer the <Integer> value of the receiver's 'pitch' field."

	^bytes sdwordAtOffset: _OffsetOf_pitch!

pixels
	"Answer the <ExternalAddress> value of the receiver's 'pixels' field."

	^(bytes uintPtrAtOffset: _OffsetOf_pixels) asExternalAddress!

refcount
	"Answer the <Integer> value of the receiver's 'refcount' field."

	^bytes sdwordAtOffset: _OffsetOf_refcount!

refcount: anInteger
	"Set the receiver's 'refcount' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refcount put: anInteger!

reserved
	"Answer the <ExternalAddress> value of the receiver's 'reserved' field."

	^(bytes uintPtrAtOffset: _OffsetOf_reserved) asExternalAddress!

reserved: anExternalAddress
	"Set the receiver's 'reserved' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_reserved put: anExternalAddress!

saveAsPNG: aString
	| result |
	result := self imageLibrary savePNG_surface: self file: aString.
	self checkBooleanResult: result!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w!

width
	^self w! !

!SDL_Surface categoriesForMethods!
convertPixelFormat:!public! !
destroy!public! !
extent!public! !
flags!public! !
format!public! !
h!public! !
height!public! !
isSurface!public! !
isTexture!public! !
pitch!public! !
pixels!public! !
refcount!public! !
refcount:!public! !
reserved!public! !
reserved:!public! !
saveAsPNG:!public! !
w!public! !
width!public! !
!

!SDL_Surface class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #flags type: DWORDField new beReadOnly;
		defineField: #format type: SDWORDField new beReadOnly;
		defineField: #w type: SDWORDField new beReadOnly;
		defineField: #h type: SDWORDField new beReadOnly;
		defineField: #pitch type: SDWORDField new beReadOnly;
		defineField: #pixels type: LPVOIDField new beReadOnly;
		defineField: #refcount type: SDWORDField new;
		defineField: #reserved type: LPVOIDField new!

extent: aPoint
	^self extent: aPoint format: SDL_PIXELFORMAT_ABGR8888!

extent: extent format: format
	| surface |
	surface := self library
				createSurface_width: extent x
				height: extent y
				format: format.
	self checkObjectResult: surface.
	^surface initialize!

fromBMPFile: aString
	| surface |
	surface := SDL3Library default loadBMP_file: aString.
	surface isNull ifTrue: [self error: SDL3Library default getError].
	^surface initialize!

fromFile: aString
	| surface |
	surface := SDL3ImageLibrary default load_file: aString.
	surface isNull ifTrue: [self error: SDL3Library default getError].
	^surface initialize!

getFieldNames
	^#(#flags #format #w #h #pitch #pixels #refcount #reserved)! !

!SDL_Surface class categoriesForMethods!
defineFields!public! !
extent:!public! !
extent:format:!public! !
fromBMPFile:!public! !
fromFile:!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

