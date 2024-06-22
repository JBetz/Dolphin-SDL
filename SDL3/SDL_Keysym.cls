"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Keysym
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_mod _OffsetOf_scancode _OffsetOf_sym _OffsetOf_unused'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_Keysym guid: (GUID fromString: '{c263b2c4-d00d-4b31-929f-f0c4b185acc2}')!

SDL_Keysym addClassConstant: '_OffsetOf_mod' value: 16r8!
SDL_Keysym addClassConstant: '_OffsetOf_scancode' value: 16r0!
SDL_Keysym addClassConstant: '_OffsetOf_sym' value: 16r4!
SDL_Keysym addClassConstant: '_OffsetOf_unused' value: 16rC!

SDL_Keysym comment: ''!

!SDL_Keysym categoriesForClass!External-Data-Structured! !

!SDL_Keysym methodsFor!

mod
	"Answer the <Integer> value of the receiver's 'mod' field."

	^bytes wordAtOffset: _OffsetOf_mod!

mod: anInteger
	"Set the receiver's 'mod' field to the value of the argument, anInteger"

	bytes wordAtOffset: _OffsetOf_mod put: anInteger!

scancode
	"Answer the <Integer> value of the receiver's 'scancode' field."

	^bytes dwordAtOffset: _OffsetOf_scancode!

scancode: anInteger
	"Set the receiver's 'scancode' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_scancode put: anInteger!

sym
	"Answer the <Integer> value of the receiver's 'sym' field."

	^bytes dwordAtOffset: _OffsetOf_sym!

sym: anInteger
	"Set the receiver's 'sym' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_sym put: anInteger!

unused
	"Answer the <Integer> value of the receiver's 'unused' field."

	^bytes dwordAtOffset: _OffsetOf_unused!

unused: anInteger
	"Set the receiver's 'unused' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_unused put: anInteger! !

!SDL_Keysym categoriesForMethods!
mod!**compiled accessors**!public! !
mod:!**compiled accessors**!public! !
scancode!**compiled accessors**!public! !
scancode:!**compiled accessors**!public! !
sym!**compiled accessors**!public! !
sym:!**compiled accessors**!public! !
unused!**compiled accessors**!public! !
unused:!**compiled accessors**!public! !
!

!SDL_Keysym class methodsFor!

defineFields
	"SDL_Keysym compileDefinition"
	
	"typedef struct SDL_Keysym
	{
	    SDL_Scancode scancode;      /**< SDL physical key code - see ::SDL_Scancode for details */
	    SDL_Keycode sym;            /**< SDL virtual key code - see ::SDL_Keycode for details */
	    Uint16 mod;                 /**< current key modifiers */
	    Uint32 unused;
	} SDL_Keysym;"

	self
		defineField: #scancode type: DWORDField new;
		defineField: #sym type: DWORDField new;
		defineField: #mod type: WORDField new;
		defineField: #unused type: DWORDField new!

getFieldNames
	^#(#scancode #sym #mod #unused)! !

!SDL_Keysym class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

