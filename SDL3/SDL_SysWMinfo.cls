"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_SysWMinfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_hdc _OffsetOf_hinstance _OffsetOf_subsystem _OffsetOf_version _OffsetOf_window'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_SysWMinfo guid: (GUID fromString: '{ebdb1ed4-80aa-44fd-aa94-7898606b137e}')!

SDL_SysWMinfo addClassConstant: '_OffsetOf_hdc' value: 16rC!
SDL_SysWMinfo addClassConstant: '_OffsetOf_hinstance' value: 16r10!
SDL_SysWMinfo addClassConstant: '_OffsetOf_subsystem' value: 16r4!
SDL_SysWMinfo addClassConstant: '_OffsetOf_version' value: 16r0!
SDL_SysWMinfo addClassConstant: '_OffsetOf_window' value: 16r8!

SDL_SysWMinfo comment: ''!

!SDL_SysWMinfo categoriesForClass!External-Data-Structured! !

!SDL_SysWMinfo methodsFor!

hdc
	"Answer the <Integer> value of the receiver's 'hdc' field."

	^bytes uintPtrAtOffset: _OffsetOf_hdc!

hinstance
	"Answer the <Integer> value of the receiver's 'hinstance' field."

	^bytes uintPtrAtOffset: _OffsetOf_hinstance!

subsystem
	"Answer the <Integer> value of the receiver's 'subsystem' field."

	^bytes sdwordAtOffset: _OffsetOf_subsystem!

subsystem: anInteger
	"Set the receiver's 'subsystem' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_subsystem put: anInteger!

version
	"Answer the <SDL_Version> value of the receiver's 'version' field."

	^SDL_Version fromAddress: bytes yourAddress!

version: aSDL_Version
	"Set the receiver's 'version' field to the value of the argument, aSDL_Version"

	aSDL_Version
		replaceBytesOf: bytes
		from: ##(_OffsetOf_version + 1)
		to: ##(_OffsetOf_version + SDL_Version basicByteSize)
		startingAt: 1!

window
	"Answer the <Integer> value of the receiver's 'window' field."

	^bytes uintPtrAtOffset: _OffsetOf_window!

window: anExternalHandle
	"Set the receiver's 'window' field to the value of the argument, anExternalHandle"

	bytes uintPtrAtOffset: _OffsetOf_window put: anExternalHandle yourAddress! !

!SDL_SysWMinfo categoriesForMethods!
hdc!**compiled accessors**!public! !
hinstance!**compiled accessors**!public! !
subsystem!**compiled accessors**!public! !
subsystem:!**compiled accessors**!public! !
version!**compiled accessors**!public! !
version:!**compiled accessors**!public! !
window!**compiled accessors**!public! !
window:!**compiled accessors**!public! !
!

!SDL_SysWMinfo class methodsFor!

defineFields
	" SDL_SysWMinfo compileDefinition

	typedef struct SDL_SysWMinfo
	{
	    SDL_version version;
	    SDL_SYSWM_TYPE subsystem;
	    union
	    {
		struct {
		    HWND window;                /**< The window handle */
		    HDC hdc;                    /**< The window device context */
		    HINSTANCE hinstance;        /**< The instance handle */
		} win;
	    }
	} SDL_SysWMinfo;"

	self
		defineField: #version type: (StructureField type: SDL_Version);
		defineField: #subsystem type: DWORDField new;
		defineField: #window type: (PointerField type: ExternalHandle);
		defineField: #hdc type: UINT_PTRField readOnly;
		defineField: #hinstance type: UINT_PTRField readOnly!

getFieldNames
	^#(#version #subsystem #window #hdc #hinstance)! !

!SDL_SysWMinfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

