"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Cursor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Cursor guid: (GUID fromString: '{5104b28a-0cf4-44bf-bc3c-85f9fdd3235d}')!

SDL_Cursor comment: ''!

!SDL_Cursor categoriesForClass!Kernel-Objects! !

!SDL_Cursor methodsFor!

destroy
	self library destroyCursor_cursor: self.
	wasDestroyed := true!

hide
	| result |
	result := self library hideCursor.
	self checkBooleanResult: result!

isVisible
	^self library cursorVisible!

makeCurrent
	self library setCursor_cursor: self!

show
	| result |
	result := self library showCursor.
	self checkBooleanResult: result! !

!SDL_Cursor categoriesForMethods!
destroy!public! !
hide!public! !
isVisible!public! !
makeCurrent!public! !
show!public! !
!

!SDL_Cursor class methodsFor!

arrow
	^self systemCursor: SDL_SYSTEM_CURSOR_ARROW!

copy
	^self arrow!

crosshair
	^self systemCursor: SDL_SYSTEM_CURSOR_CROSSHAIR!

hand
	^self systemCursor: SDL_SYSTEM_CURSOR_HAND!

iBeam
	^self systemCursor: SDL_SYSTEM_CURSOR_IBEAM!

notAllowed
	^self systemCursor: SDL_SYSTEM_CURSOR_NOT_ALLOWED!

sizeAll
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZEALL!

sizeNESW
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENESW!

sizeNS
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENS!

sizeNWSE
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZENWSE!

sizeWE
	^self systemCursor: SDL_SYSTEM_CURSOR_SIZEWE!

systemCursor: anInteger
	^(self library createSystemCursor_id: anInteger) initialize!

unknown
	^self arrow!

wait
	^self systemCursor: SDL_SYSTEM_CURSOR_WAIT!

waitArrow
	^self systemCursor: SDL_SYSTEM_CURSOR_WAITARROW! !

!SDL_Cursor class categoriesForMethods!
arrow!public! !
copy!public! !
crosshair!public! !
hand!public! !
iBeam!public! !
notAllowed!public! !
sizeAll!public! !
sizeNESW!public! !
sizeNS!public! !
sizeNWSE!public! !
sizeWE!public! !
systemCursor:!public! !
unknown!public! !
wait!public! !
waitArrow!public! !
!

