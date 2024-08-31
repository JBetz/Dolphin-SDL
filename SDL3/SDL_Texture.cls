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
	^self getExtent!

getExtent
	| width height |
	width := FLOAT new.
	height := FLOAT new.
	self library
		getTextureSize_texture: self
		w: width
		h: height.
	^width value @ height value!

getFormat
	^self library
		getNumberProperty_props: self getPropertiesId
		name: 'SDL.texture.create.format'
		defaultValue: 0!

getHeight
	^self library
		getNumberProperty_props: self getPropertiesId
		name: 'SDL.texture.create.height'
		defaultValue: 0!

getPropertiesId
	^self library getTextureProperties_texture: self!

getWidth
	^self library
		getNumberProperty_props: self getPropertiesId
		name: 'SDL.texture.create.width'
		defaultValue: 0!

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
	self checkBooleanResult: (self library
				updateTexture_texture: self
				rect: nil
				pixels: pixels
				pitch: pitch)!

updateRectangle: aRectangle pixels: pixels pitch: pitch
	self checkBooleanResult: (self library
				updateTexture_texture: self
				rect: aRectangle asSDLRect
				pixels: pixels
				pitch: pitch)! !

!SDL_Texture categoriesForMethods!
destroy!public! !
extent!public! !
getExtent!public! !
getFormat!public! !
getHeight!public! !
getPropertiesId!public! !
getWidth!public! !
isPainted!public! !
isPainted:!public! !
isSurface!public! !
isTexture!public! !
lock!public! !
lockRectangle:!public! !
unlock!public! !
updatePixels:pitch:!public! !
updateRectangle:pixels:pitch:!public! !
!

