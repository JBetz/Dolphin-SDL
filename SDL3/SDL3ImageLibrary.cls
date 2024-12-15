"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #SDL3ImageLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL3ImageLibrary guid: (GUID fromString: '{dc8fcffc-be51-41c4-8c01-ec1a3d58d507}')!

SDL3ImageLibrary comment: ''!

!SDL3ImageLibrary categoriesForClass!Unclassified! !

!SDL3ImageLibrary methodsFor!

load_file: file
	<cdecl: SDL_Surface* IMG_Load lpstr>
	^self invalidCall: _failureCode!

loadTexture_renderer: renderer file: file
	<cdecl: SDL_Texture* IMG_LoadTexture SDL_Renderer* lpstr>
	^self invalidCall: _failureCode!

saveJPG_surface: surface file: file quality: quality
	<cdecl: bool IMG_SaveJPG SDL_Surface* lpstr sdword>
	^self invalidCall: _failureCode!

savePNG_surface: surface file: file
	<cdecl: bool IMG_SavePNG SDL_Surface* lpstr>
	^self invalidCall: _failureCode! !

!SDL3ImageLibrary categoriesForMethods!
load_file:!public! !
loadTexture_renderer:file:!public! !
saveJPG_surface:file:quality:!public! !
savePNG_surface:file:!public! !
!

!SDL3ImageLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'SDL3_image'! !

!SDL3ImageLibrary class categoriesForMethods!
fileName!public! !
!

