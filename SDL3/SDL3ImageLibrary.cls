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

init_flags: flags
	<stdcall: sdword IMG_Init sdword>
	^self invalidCall: _failureCode!

load_file: file
	<stdcall: SDL_Surface* IMG_Load lpstr>
	^self invalidCall: _failureCode!

quit
	<stdcall: void IMG_Quit>
	^self invalidCall: _failureCode!

saveJPG_surface: surface file: file quality: quality
	<stdcall: sdword IMG_SaveJPG SDL_Surface* lpstr sdword>
	^self invalidCall: _failureCode!

savePNG_surface: surface file: file
	<stdcall: sdword IMG_SavePNG SDL_Surface* lpstr>
	^self invalidCall: _failureCode! !
!SDL3ImageLibrary categoriesForMethods!
init_flags:!public! !
load_file:!public! !
quit!public! !
saveJPG_surface:file:quality:!public! !
savePNG_surface:file:!public! !
!

!SDL3ImageLibrary class methodsFor!

fileName
	^'SDL3_image'! !
!SDL3ImageLibrary class categoriesForMethods!
fileName!public! !
!

