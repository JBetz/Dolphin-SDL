"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_PixelFormatDetails
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_Abits _OffsetOf_Amask _OffsetOf_Ashift _OffsetOf_Bbits _OffsetOf_bits_per_pixel _OffsetOf_Bmask _OffsetOf_Bshift _OffsetOf_bytes_per_pixel _OffsetOf_format _OffsetOf_Gbits _OffsetOf_Gmask _OffsetOf_Gshift _OffsetOf_padding _OffsetOf_Rbits _OffsetOf_Rmask _OffsetOf_Rshift'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_PixelFormatDetails guid: (GUID fromString: '{1a77facb-3c48-483e-ab78-56e05698125d}')!

SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Abits' value: 16r1B!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Amask' value: 16r14!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Ashift' value: 16r1F!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Bbits' value: 16r1A!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_bits_per_pixel' value: 16r4!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Bmask' value: 16r10!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Bshift' value: 16r1E!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_bytes_per_pixel' value: 16r5!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_format' value: 16r0!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Gbits' value: 16r19!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Gmask' value: 16rC!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Gshift' value: 16r1D!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_padding' value: 16r6!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Rbits' value: 16r18!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Rmask' value: 16r8!
SDL_PixelFormatDetails addClassConstant: '_OffsetOf_Rshift' value: 16r1C!

SDL_PixelFormatDetails comment: ''!

!SDL_PixelFormatDetails categoriesForClass!External-Data-Structured! !

!SDL_PixelFormatDetails methodsFor!

Abits
	"Answer the <Integer> value of the receiver's 'Abits' field."

	^bytes byteAtOffset: _OffsetOf_Abits!

Abits: anInteger
	"Set the receiver's 'Abits' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Abits put: anInteger!

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

Bbits
	"Answer the <Integer> value of the receiver's 'Bbits' field."

	^bytes byteAtOffset: _OffsetOf_Bbits!

Bbits: anInteger
	"Set the receiver's 'Bbits' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Bbits put: anInteger!

bits_per_pixel
	"Answer the <Integer> value of the receiver's 'bits_per_pixel' field."

	^bytes byteAtOffset: _OffsetOf_bits_per_pixel!

bits_per_pixel: anInteger
	"Set the receiver's 'bits_per_pixel' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_bits_per_pixel put: anInteger!

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

bytes_per_pixel
	"Answer the <Integer> value of the receiver's 'bytes_per_pixel' field."

	^bytes byteAtOffset: _OffsetOf_bytes_per_pixel!

bytes_per_pixel: anInteger
	"Set the receiver's 'bytes_per_pixel' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_bytes_per_pixel put: anInteger!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger!

Gbits
	"Answer the <Integer> value of the receiver's 'Gbits' field."

	^bytes byteAtOffset: _OffsetOf_Gbits!

Gbits: anInteger
	"Set the receiver's 'Gbits' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Gbits put: anInteger!

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

Rbits
	"Answer the <Integer> value of the receiver's 'Rbits' field."

	^bytes byteAtOffset: _OffsetOf_Rbits!

Rbits: anInteger
	"Set the receiver's 'Rbits' field to the value of the argument, anInteger"

	bytes byteAtOffset: _OffsetOf_Rbits put: anInteger!

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

!SDL_PixelFormatDetails categoriesForMethods!
Abits!**compiled accessors**!public! !
Abits:!**compiled accessors**!public! !
Amask!**compiled accessors**!public! !
Amask:!**compiled accessors**!public! !
Ashift!**compiled accessors**!public! !
Ashift:!**compiled accessors**!public! !
Bbits!**compiled accessors**!public! !
Bbits:!**compiled accessors**!public! !
bits_per_pixel!**compiled accessors**!public! !
bits_per_pixel:!**compiled accessors**!public! !
Bmask!**compiled accessors**!public! !
Bmask:!**compiled accessors**!public! !
Bshift!**compiled accessors**!public! !
Bshift:!**compiled accessors**!public! !
bytes_per_pixel!**compiled accessors**!public! !
bytes_per_pixel:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
Gbits!**compiled accessors**!public! !
Gbits:!**compiled accessors**!public! !
Gmask!**compiled accessors**!public! !
Gmask:!**compiled accessors**!public! !
Gshift!**compiled accessors**!public! !
Gshift:!**compiled accessors**!public! !
padding!**compiled accessors**!public! !
padding:!**compiled accessors**!public! !
Rbits!**compiled accessors**!public! !
Rbits:!**compiled accessors**!public! !
Rmask!**compiled accessors**!public! !
Rmask:!**compiled accessors**!public! !
Rshift!**compiled accessors**!public! !
Rshift:!**compiled accessors**!public! !
!

!SDL_PixelFormatDetails class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #format type: DWORDField new;
		defineField: #bits_per_pixel type: BYTEField new;
		defineField: #bytes_per_pixel type: BYTEField new;
		defineField: #padding type: (ArrayField type: ByteArray length: 2);
		defineField: #Rmask type: DWORDField new;
		defineField: #Gmask type: DWORDField new;
		defineField: #Bmask type: DWORDField new;
		defineField: #Amask type: DWORDField new;
		defineField: #Rbits type: BYTEField new;
		defineField: #Gbits type: BYTEField new;
		defineField: #Bbits type: BYTEField new;
		defineField: #Abits type: BYTEField new;
		defineField: #Rshift type: BYTEField new;
		defineField: #Gshift type: BYTEField new;
		defineField: #Bshift type: BYTEField new;
		defineField: #Ashift type: BYTEField new!

getFieldNames
	^#(#format #bits_per_pixel #bytes_per_pixel #padding #Rmask #Gmask #Bmask #Amask #Rbits #Gbits #Bbits #Abits #Rshift #Gshift #Bshift #Ashift)! !

!SDL_PixelFormatDetails class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

