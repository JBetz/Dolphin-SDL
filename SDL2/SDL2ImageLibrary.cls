"Filed out from Dolphin Smalltalk"!

ExternalLibrary subclass: #SDL2ImageLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL2ImageLibrary guid: (GUID fromString: '{7d9b9d29-b596-4c61-82bb-1c282f129e54}')!
SDL2ImageLibrary comment: ''!
!SDL2ImageLibrary categoriesForClass!Unclassified! !
!SDL2ImageLibrary methodsFor!

init_flags: flags
	<cdecl: sdword IMG_Init sdword>
	^self invalidCall: _failureCode!

load_file: file
	<cdecl: SDL_Surface* IMG_Load lpstr>
	^self invalidCall: _failureCode!

quit
	<cdecl: void IMG_Quit>
	^self invalidCall: _failureCode!

saveJPG_surface: surface file: file quality: quality
	<cdecl: sdword IMG_SaveJPG SDL_Surface* lpstr sdword>
	^self invalidCall: _failureCode!

savePNG_surface: surface file: file
	<cdecl: sdword IMG_SavePNG SDL_Surface* lpstr>
	^self invalidCall: _failureCode! !
!SDL2ImageLibrary categoriesForMethods!
init_flags:!public! !
load_file:!public! !
quit!public! !
saveJPG_surface:file:quality:!public! !
savePNG_surface:file:!public! !
!

!SDL2ImageLibrary class methodsFor!

fileName
	^'SDL2_image'! !
!SDL2ImageLibrary class categoriesForMethods!
fileName!public! !
!

