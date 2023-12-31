﻿"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Texture
	instanceVariableNames: ''
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
	width := SDWORD new.
	height := SDWORD new.
	self library
		queryTexture_texture: self
		format: nil
		access: nil
		w: width
		h: height.
	^width value @ height value!

getWidth
	| width |
	width := SDWORD new.
	self library
		queryTexture_renderer: self
		format: nil
		access: nil
		w: width
		h: nil.
	^width value!

lock
	^self lockRectangle: nil!

lockRectangle: aRectangle
	| pitch pixels |
	pitch := SDWORD new.
	pixels := ExternalAddress new.
	self checkResult: (self library
				lockTexture_texture: self
				rect: (aRectangle ifNotNil: [aRectangle asSDLRect])
				pixels: pixels
				pitch: pitch).
	^pixels!

unlock
	self checkResult: (self library unlockTexture_texture: self)!

updatePixels: pixels pitch: pitch
	self checkResult: (self library
				updateTexture_texture: self
				rect: nil
				pixels: pixels
				pitch: pitch)!

updateRectangle: aRectangle pixels: pixels pitch: pitch
	self checkResult: (self library
				updateTexture_texture: self
				rect: aRectangle asSDLRect
				pixels: pixels
				pitch: pitch)! !
!SDL_Texture categoriesForMethods!
destroy!public! !
extent!public! !
getExtent!public! !
getWidth!public! !
lock!public! !
lockRectangle:!public! !
unlock!public! !
updatePixels:pitch:!public! !
updateRectangle:pixels:pitch:!public! !
!

