"Filed out from Dolphin Smalltalk"!

Object subclass: #SDL_Display
	instanceVariableNames: 'name bounds usableBounds naturalOrientation currentOrientation contentScale fullscreenDisplayModes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Display guid: (GUID fromString: '{194644c3-4cff-494a-a21b-be4d1630b893}')!

SDL_Display comment: ''!

!SDL_Display categoriesForClass!Kernel-Objects! !

!SDL_Display methodsFor!

bounds
	^bounds!

bounds: anObject
	bounds := anObject!

contentScale
	^contentScale!

contentScale: anObject
	contentScale := anObject!

currentOrientation
	^currentOrientation!

currentOrientation: anObject
	currentOrientation := anObject!

extent
	^bounds extent!

fullscreenDisplayModes
	^fullscreenDisplayModes!

fullscreenDisplayModes: anObject
	fullscreenDisplayModes := anObject!

name
	^name!

name: anObject
	name := anObject!

naturalOrientation
	^naturalOrientation!

naturalOrientation: anObject
	naturalOrientation := anObject!

usableBounds
	^usableBounds!

usableBounds: anObject
	usableBounds := anObject! !

!SDL_Display categoriesForMethods!
bounds!accessing!public! !
bounds:!accessing!private! !
contentScale!accessing!public! !
contentScale:!accessing!private! !
currentOrientation!accessing!public! !
currentOrientation:!accessing!private! !
extent!public! !
fullscreenDisplayModes!accessing!public! !
fullscreenDisplayModes:!accessing!private! !
name!accessing!public! !
name:!accessing!private! !
naturalOrientation!accessing!public! !
naturalOrientation:!accessing!private! !
usableBounds!accessing!public! !
usableBounds:!accessing!private! !
!

!SDL_Display class methodsFor!

fromInteger: anInteger
	| sdl bounds usableBounds |
	sdl := SDL3Library default.
	bounds := SDL_Rect new.
	usableBounds := SDL_Rect new.
	sdl
		getDisplayBounds_displayIndex: anInteger rect: bounds;
		getDisplayUsableBounds_displayIndex: anInteger rect: usableBounds.
	^self new
		name: (sdl getDisplayName_displayIndex: anInteger);
		bounds: bounds;
		usableBounds: usableBounds! !

!SDL_Display class categoriesForMethods!
fromInteger:!public! !
!

