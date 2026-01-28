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

loadIO_src: src closeIo: closeIo
	<cdecl: SDL_Surface* IMG_Load_IO SDL_IOStream* bool>
	^self invalidCall: _failureCode!

loadPNGIO_src: src
	<cdecl: SDL_Surface* IMG_LoadPNG_IO SDL_IOStream*>
	^self invalidCall: _failureCode!

loadTexture_renderer: renderer file: file
	<cdecl: SDL_Texture* IMG_LoadTexture SDL_Renderer* lpstr>
	^self invalidCall: _failureCode!

loadTextureIO_renderer: renderer src: src closeIo: closeIo
	<cdecl: SDL_Texture* IMG_LoadTexture_IO SDL_Renderer* SDL_IOStream* bool>
	^self invalidCall: _failureCode!

loadTextureTypedIO_renderer: renderer src: src closeIo: closeIo type: type
	<cdecl: SDL_Texture* IMG_LoadTexture_IO SDL_Renderer* SDL_IOStream* bool char*>
	^self invalidCall: _failureCode!

loadTypedIO_src: src closeIo: closeIo type: type
	<cdecl: SDL_Surface* IMG_LoadTyped_IO SDL_IOStream* bool char*>
	^self invalidCall: _failureCode!

saveJPG_surface: surface file: file quality: quality
	<cdecl: bool IMG_SaveJPG SDL_Surface* lpstr sdword>
	^self invalidCall: _failureCode!

savePNG_surface: surface file: file
	<cdecl: bool IMG_SavePNG SDL_Surface* lpstr>
	^self invalidCall: _failureCode! !

!SDL3ImageLibrary categoriesForMethods!
load_file:!public! !
loadIO_src:closeIo:!public! !
loadPNGIO_src:!public! !
loadTexture_renderer:file:!public! !
loadTextureIO_renderer:src:closeIo:!public! !
loadTextureTypedIO_renderer:src:closeIo:type:!public! !
loadTypedIO_src:closeIo:type:!public! !
saveJPG_surface:file:quality:!public! !
savePNG_surface:file:!public! !
!

!SDL3ImageLibrary class methodsFor!

fileName
	^FileLocator imageRelative: 'SDL3_image'! !

!SDL3ImageLibrary class categoriesForMethods!
fileName!public! !
!

