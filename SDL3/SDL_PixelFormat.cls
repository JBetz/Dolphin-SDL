"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_PixelFormat
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_Aloss _OffsetOf_Amask _OffsetOf_Ashift _OffsetOf_BitsPerPixel _OffsetOf_Bloss _OffsetOf_Bmask _OffsetOf_Bshift _OffsetOf_BytesPerPixel _OffsetOf_format _OffsetOf_Gloss _OffsetOf_Gmask _OffsetOf_Gshift _OffsetOf_next _OffsetOf_padding _OffsetOf_palette _OffsetOf_refcount _OffsetOf_Rloss _OffsetOf_Rmask _OffsetOf_Rshift'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_PixelFormat guid: (GUID fromString: '{1a77facb-3c48-483e-ab78-56e05698125d}')!

SDL_PixelFormat addClassConstant: '_OffsetOf_Aloss' value: 16r1F!
SDL_PixelFormat addClassConstant: '_OffsetOf_Amask' value: 16r18!
SDL_PixelFormat addClassConstant: '_OffsetOf_Ashift' value: 16r23!
SDL_PixelFormat addClassConstant: '_OffsetOf_BitsPerPixel' value: 16r8!
SDL_PixelFormat addClassConstant: '_OffsetOf_Bloss' value: 16r1E!
SDL_PixelFormat addClassConstant: '_OffsetOf_Bmask' value: 16r14!
SDL_PixelFormat addClassConstant: '_OffsetOf_Bshift' value: 16r22!
SDL_PixelFormat addClassConstant: '_OffsetOf_BytesPerPixel' value: 16r9!
SDL_PixelFormat addClassConstant: '_OffsetOf_format' value: 16r0!
SDL_PixelFormat addClassConstant: '_OffsetOf_Gloss' value: 16r1D!
SDL_PixelFormat addClassConstant: '_OffsetOf_Gmask' value: 16r10!
SDL_PixelFormat addClassConstant: '_OffsetOf_Gshift' value: 16r21!
SDL_PixelFormat addClassConstant: '_OffsetOf_next' value: 16r28!
SDL_PixelFormat addClassConstant: '_OffsetOf_padding' value: 16rA!
SDL_PixelFormat addClassConstant: '_OffsetOf_palette' value: 16r4!
SDL_PixelFormat addClassConstant: '_OffsetOf_refcount' value: 16r24!
SDL_PixelFormat addClassConstant: '_OffsetOf_Rloss' value: 16r1C!
SDL_PixelFormat addClassConstant: '_OffsetOf_Rmask' value: 16rC!
SDL_PixelFormat addClassConstant: '_OffsetOf_Rshift' value: 16r20!

SDL_PixelFormat comment: ''!

!SDL_PixelFormat categoriesForClass!External-Data-Structured! !

!SDL_PixelFormat methodsFor!

Aloss
	"Answer the <Integer> value of the receiver's 'Aloss' field."

	^bytes byteAtOffset: _OffsetOf_Aloss!

Aloss: anInteger
	"Set the receiver's 'Aloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Aloss put: anInteger!

Amask
	"Answer the <Integer> value of the receiver's 'Amask' field."

	^bytes dwordAtOffset: _OffsetOf_Amask!

Amask: anInteger
	"Set the receiver's 'Amask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Amask put: anInteger!

Ashift
	"Answer the <Integer> value of the receiver's 'Ashift' field."

	^bytes byteAtOffset: _OffsetOf_Ashift!

Ashift: anInteger
	"Set the receiver's 'Ashift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Ashift put: anInteger!

BitsPerPixel
	"Answer the <Integer> value of the receiver's 'BitsPerPixel' field."

	^bytes byteAtOffset: _OffsetOf_BitsPerPixel!

BitsPerPixel: anInteger
	"Set the receiver's 'BitsPerPixel' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_BitsPerPixel put: anInteger!

Bloss
	"Answer the <Integer> value of the receiver's 'Bloss' field."

	^bytes byteAtOffset: _OffsetOf_Bloss!

Bloss: anInteger
	"Set the receiver's 'Bloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Bloss put: anInteger!

Bmask
	"Answer the <Integer> value of the receiver's 'Bmask' field."

	^bytes dwordAtOffset: _OffsetOf_Bmask!

Bmask: anInteger
	"Set the receiver's 'Bmask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Bmask put: anInteger!

Bshift
	"Answer the <Integer> value of the receiver's 'Bshift' field."

	^bytes byteAtOffset: _OffsetOf_Bshift!

Bshift: anInteger
	"Set the receiver's 'Bshift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Bshift put: anInteger!

BytesPerPixel
	"Answer the <Integer> value of the receiver's 'BytesPerPixel' field."

	^bytes byteAtOffset: _OffsetOf_BytesPerPixel!

BytesPerPixel: anInteger
	"Set the receiver's 'BytesPerPixel' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_BytesPerPixel put: anInteger!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger!

Gloss
	"Answer the <Integer> value of the receiver's 'Gloss' field."

	^bytes byteAtOffset: _OffsetOf_Gloss!

Gloss: anInteger
	"Set the receiver's 'Gloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Gloss put: anInteger!

Gmask
	"Answer the <Integer> value of the receiver's 'Gmask' field."

	^bytes dwordAtOffset: _OffsetOf_Gmask!

Gmask: anInteger
	"Set the receiver's 'Gmask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Gmask put: anInteger!

Gshift
	"Answer the <Integer> value of the receiver's 'Gshift' field."

	^bytes byteAtOffset: _OffsetOf_Gshift!

Gshift: anInteger
	"Set the receiver's 'Gshift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Gshift put: anInteger!

next
	"Answer the <SDL_PixelFormat> value of the receiver's 'next' field."

	^SDL_PixelFormat fromAddress: (bytes intPtrAtOffset: _OffsetOf_next)!

next: aSDL_PixelFormat
	"Set the receiver's 'next' field to the value of the argument, aSDL_PixelFormat"

	bytes uintPtrAtOffset: _OffsetOf_next put: aSDL_PixelFormat yourAddress!

padding
	"Answer the <ByteArray> value of the receiver's 'padding' field."

	^ByteArray fromAddress: bytes yourAddress + _OffsetOf_padding length: 2!

padding: aByteArray
	"Set the receiver's 'padding' field to the value of the argument, aByteArray"

	| size |
	size := aByteArray byteSize min: ##(2 * ByteArray elementSize).
	aByteArray
		replaceBytesOf: bytes
		from: ##(_OffsetOf_padding + 1)
		to: _OffsetOf_padding + size
		startingAt: 1!

palette
	"Answer the <SDL_Palette> value of the receiver's 'palette' field."

	^SDL_Palette fromAddress: (bytes intPtrAtOffset: _OffsetOf_palette)!

palette: aSDL_Palette
	"Set the receiver's 'palette' field to the value of the argument, aSDL_Palette"

	bytes uintPtrAtOffset: _OffsetOf_palette put: aSDL_Palette yourAddress!

refcount
	"Answer the <Integer> value of the receiver's 'refcount' field."

	^bytes sdwordAtOffset: _OffsetOf_refcount!

refcount: anInteger
	"Set the receiver's 'refcount' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refcount put: anInteger!

Rloss
	"Answer the <Integer> value of the receiver's 'Rloss' field."

	^bytes byteAtOffset: _OffsetOf_Rloss!

Rloss: anInteger
	"Set the receiver's 'Rloss' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Rloss put: anInteger!

Rmask
	"Answer the <Integer> value of the receiver's 'Rmask' field."

	^bytes dwordAtOffset: _OffsetOf_Rmask!

Rmask: anInteger
	"Set the receiver's 'Rmask' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_Rmask put: anInteger!

Rshift
	"Answer the <Integer> value of the receiver's 'Rshift' field."

	^bytes byteAtOffset: _OffsetOf_Rshift!

Rshift: anInteger
	"Set the receiver's 'Rshift' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Rshift put: anInteger! !

!SDL_PixelFormat categoriesForMethods!
Aloss!**compiled accessors**!public! !
Aloss:!**compiled accessors**!public! !
Amask!**compiled accessors**!public! !
Amask:!**compiled accessors**!public! !
Ashift!**compiled accessors**!public! !
Ashift:!**compiled accessors**!public! !
BitsPerPixel!**compiled accessors**!public! !
BitsPerPixel:!**compiled accessors**!public! !
Bloss!**compiled accessors**!public! !
Bloss:!**compiled accessors**!public! !
Bmask!**compiled accessors**!public! !
Bmask:!**compiled accessors**!public! !
Bshift!**compiled accessors**!public! !
Bshift:!**compiled accessors**!public! !
BytesPerPixel!**compiled accessors**!public! !
BytesPerPixel:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
Gloss!**compiled accessors**!public! !
Gloss:!**compiled accessors**!public! !
Gmask!**compiled accessors**!public! !
Gmask:!**compiled accessors**!public! !
Gshift!**compiled accessors**!public! !
Gshift:!**compiled accessors**!public! !
next!**compiled accessors**!public! !
next:!**compiled accessors**!public! !
padding!**compiled accessors**!public! !
padding:!**compiled accessors**!public! !
palette!**compiled accessors**!public! !
palette:!**compiled accessors**!public! !
refcount!**compiled accessors**!public! !
refcount:!**compiled accessors**!public! !
Rloss!**compiled accessors**!public! !
Rloss:!**compiled accessors**!public! !
Rmask!**compiled accessors**!public! !
Rmask:!**compiled accessors**!public! !
Rshift!**compiled accessors**!public! !
Rshift:!**compiled accessors**!public! !
!

!SDL_PixelFormat class methodsFor!

defineFields
	"SDL_PixelFormat compileDefinition

	typedef struct SDL_PixelFormat
	{
	    Uint32 format;
	    SDL_Palette *palette;
	    Uint8 BitsPerPixel;
	    Uint8 BytesPerPixel;
	    Uint8 padding[2];
	    Uint32 Rmask;
	    Uint32 Gmask;
	    Uint32 Bmask;
	    Uint32 Amask;
	    Uint8 Rloss;
	    Uint8 Gloss;
	    Uint8 Bloss;
	    Uint8 Aloss;
	    Uint8 Rshift;
	    Uint8 Gshift;
	    Uint8 Bshift;
	    Uint8 Ashift;
	    int refcount;
	    struct SDL_PixelFormat *next;
	} SDL_PixelFormat;"

	self 
		defineField: #format type: DWORDField new;
		defineField: #palette type: (PointerField type: SDL_Palette);
		defineField: #BitsPerPixel type: BYTEField new;
		defineField: #BytesPerPixel type: BYTEField new;
		defineField: #padding type: (ArrayField type: ByteArray length: 2);
		defineField: #Rmask type: DWORDField new;
		defineField: #Gmask type: DWORDField new;
		defineField: #Bmask type: DWORDField new;
		defineField: #Amask type: DWORDField new;
		defineField: #Rloss type: BYTEField new;
		defineField: #Gloss type: BYTEField new;
		defineField: #Bloss type: BYTEField new;
		defineField: #Aloss type: BYTEField new;
		defineField: #Rshift type: BYTEField new;
		defineField: #Gshift type: BYTEField new;
		defineField: #Bshift type: BYTEField new;
		defineField: #Ashift type: BYTEField new;
		defineField: #refcount type: SDWORDField new;
		defineField: #next type: (PointerField type: SDL_PixelFormat)!

getFieldNames
	^#(#format #palette #BitsPerPixel #BytesPerPixel #padding #Rmask #Gmask #Bmask #Amask #Rloss #Gloss #Bloss #Aloss #Rshift #Gshift #Bshift #Ashift #refcount #next)! !

!SDL_PixelFormat class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

