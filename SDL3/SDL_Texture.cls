"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Texture
	instanceVariableNames: 'isPainted'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Texture guid: (GUID fromString: '{e253ed78-06ba-402e-8f07-b2da561b1b2c}')!

SDL_Texture comment: ''!

!SDL_Texture categoriesForClass!External-Data-Structured! !

!SDL_Texture methodsFor!

destroy
	self library destroyTexture_texture: self!

extent
	| width height |
	width := FLOAT new.
	height := FLOAT new.
	self library
		getTextureSize_texture: self
		w: width
		h: height.
	^width value @ height value!

format
	^self properties getProperty: SDL_PROP_TEXTURE_FORMAT_NUMBER!

getPropertiesId
	^self library getTextureProperties_texture: self!

height
	^self properties getProperty: SDL_PROP_TEXTURE_HEIGHT_NUMBER!

isPainted
	^isPainted ifNil: [false]!

isPainted: aBoolean
	isPainted := aBoolean!

isSurface
	^false!

isTexture
	^true!

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

unlock
	self checkBooleanResult: (self library unlockTexture_texture: self)!

updatePixels: pixels pitch: pitch
	| destinationPixels destinationPitch result |
	result := self library
				updateTexture_texture: self
				rect: nil
				pixels: pixels
				pitch: pitch.
	self checkBooleanResult: result!

width
	^self properties getProperty: SDL_PROP_TEXTURE_WIDTH_NUMBER! !

!SDL_Texture categoriesForMethods!
destroy!public! !
extent!public! !
format!public! !
getPropertiesId!public! !
height!public! !
isPainted!public! !
isPainted:!public! !
isSurface!public! !
isTexture!public! !
lock!public! !
lockRectangle:!public! !
unlock!public! !
updatePixels:pitch:!public! !
width!public! !
!

