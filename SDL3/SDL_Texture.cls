"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Texture
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_format _OffsetOf_h _OffsetOf_refcount _OffsetOf_w'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Texture guid: (GUID fromString: '{e253ed78-06ba-402e-8f07-b2da561b1b2c}')!

SDL_Texture addClassConstant: '_OffsetOf_format' value: 16r0!
SDL_Texture addClassConstant: '_OffsetOf_h' value: 16r8!
SDL_Texture addClassConstant: '_OffsetOf_refcount' value: 16rC!
SDL_Texture addClassConstant: '_OffsetOf_w' value: 16r4!

SDL_Texture comment: ''!

!SDL_Texture categoriesForClass!External-Data-Structured! !

!SDL_Texture methodsFor!

access
	^self properties getProperty: SDL_PROP_TEXTURE_ACCESS_NUMBER!

destroy
	self library destroyTexture_texture: self!

extent
	| width height result |
	width := FLOAT new.
	height := FLOAT new.
	result := self library
				getTextureSize_texture: self
				w: width
				h: height.
	self checkBooleanResult: result.
	^width value @ height value!

format
	^self properties getProperty: SDL_PROP_TEXTURE_FORMAT_NUMBER!

getPropertiesId
	^self library getTextureProperties_texture: self!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

height
	^self properties getProperty: SDL_PROP_TEXTURE_HEIGHT_NUMBER!

isSurface
	^false!

isTexture
	^true!

isValid
	^self library
		getTextureSize_texture: self
		w: FLOAT new
		h: FLOAT new!

lock
	^self lockRectangle: nil!

lockRectangle: aRectangle
	| pitch pixels |
	pitch := SDWORD new.
	pixels := ExternalAddress new.
	self checkBooleanResult: (self library
				lockTexture_texture: self
				rect: (aRectangle ifNotNil: [aRectangle asSDLRect])
				pixels: pixels
				pitch: pitch).
	^pixels!

refcount
	"Answer the <Integer> value of the receiver's 'refcount' field."

	^bytes sdwordAtOffset: _OffsetOf_refcount!

unlock
	self checkBooleanResult: (self library unlockTexture_texture: self)!

updatePixels: pixels pitch: pitch
	| result |
	result := self library
				updateTexture_texture: self
				rect: nil
				pixels: pixels
				pitch: pitch.
	self checkBooleanResult: result!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w!

width
	^self properties getProperty: SDL_PROP_TEXTURE_WIDTH_NUMBER! !

!SDL_Texture categoriesForMethods!
access!public! !
destroy!public! !
extent!public! !
format!public! !
getPropertiesId!public! !
h!public! !
height!public! !
isSurface!public! !
isTexture!public! !
isValid!public! !
lock!public! !
lockRectangle:!public! !
refcount!public! !
unlock!public! !
updatePixels:pitch:!public! !
w!public! !
width!public! !
!

!SDL_Texture class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #format type: SDWORDField new beReadOnly;
		defineField: #w type: SDWORDField new beReadOnly;
		defineField: #h type: SDWORDField new beReadOnly;
		defineField: #refcount type: SDWORDField new beReadOnly!

getFieldNames
	^#(#format #w #h #refcount)! !

!SDL_Texture class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

