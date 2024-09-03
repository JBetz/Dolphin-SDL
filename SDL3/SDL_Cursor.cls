"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Cursor
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Cursor guid: (GUID fromString: '{5104b28a-0cf4-44bf-bc3c-85f9fdd3235d}')!

SDL_Cursor comment: ''!

!SDL_Cursor categoriesForClass!Kernel-Objects! !

!SDL_Cursor methodsFor!

destroy
	self library destroyCursor_cursor: self!

makeCurrent
	self library setCursor_cursor: self!

name
	^name!

name: aSymbol
	name := aSymbol! !

!SDL_Cursor categoriesForMethods!
destroy!public! !
makeCurrent!public! !
name!public! !
name:!public! !
!

!SDL_Cursor class methodsFor!

arrow
	^self systemCursor: SDL_SYSTEM_CURSOR_ARROW!

hand
	^self systemCursor: SDL_SYSTEM_CURSOR_HAND!

iBeam
	^self systemCursor: SDL_SYSTEM_CURSOR_IBEAM!

no
	^self systemCursor: SDL_SYSTEM_CURSOR_NO!

sizeAll
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZEALL!

sizeCrosshair
	^self systemCursor: SDL_SYSTEM_CURSOR_CROSSHAIR!

sizeNESW
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENESW!

sizeNS
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENS!

sizeNWSE
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENWSE!

sizeWE
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZEWE!

systemCursor: anInteger
	^(SDL3Library default createSystemCursor_id: anInteger) initialize!

wait
	^self systemCursor: SDL_SYSTEM_CURSOR_WAIT!

waitArrow
	^self systemCursor: SDL_SYSTEM_CURSOR_WAITARROW! !

!SDL_Cursor class categoriesForMethods!
arrow!public! !
hand!public! !
iBeam!public! !
no!public! !
sizeAll!public! !
sizeCrosshair!public! !
sizeNESW!public! !
sizeNS!public! !
sizeNWSE!public! !
sizeWE!public! !
systemCursor:!public! !
wait!public! !
waitArrow!public! !
!

