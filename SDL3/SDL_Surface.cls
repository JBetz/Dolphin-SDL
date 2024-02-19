"Filed out from Dolphin Smalltalk"!

SDL_Object subclass: #SDL_Surface
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_clip_rect _OffsetOf_flags _OffsetOf_format _OffsetOf_h _OffsetOf_list_blitmap _OffsetOf_locked _OffsetOf_map _OffsetOf_pitch _OffsetOf_pixels _OffsetOf_refcount _OffsetOf_userdata _OffsetOf_w'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_Surface guid: (GUID fromString: '{3aabd7c9-80d5-4b61-8b6d-7b078df05699}')!
SDL_Surface addClassConstant: '_OffsetOf_clip_rect' value: 16r24!
SDL_Surface addClassConstant: '_OffsetOf_flags' value: 16r0!
SDL_Surface addClassConstant: '_OffsetOf_format' value: 16r4!
SDL_Surface addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_Surface addClassConstant: '_OffsetOf_list_blitmap' value: 16r20!
SDL_Surface addClassConstant: '_OffsetOf_locked' value: 16r1C!
SDL_Surface addClassConstant: '_OffsetOf_map' value: 16r34!
SDL_Surface addClassConstant: '_OffsetOf_pitch' value: 16r10!
SDL_Surface addClassConstant: '_OffsetOf_pixels' value: 16r14!
SDL_Surface addClassConstant: '_OffsetOf_refcount' value: 16r38!
SDL_Surface addClassConstant: '_OffsetOf_userdata' value: 16r18!
SDL_Surface addClassConstant: '_OffsetOf_w' value: 16r8!
SDL_Surface comment: ''!
!SDL_Surface categoriesForClass!External-Data-Structured! !
!SDL_Surface methodsFor!

clip_rect
	"Answer the <SDL_Rect> value of the receiver's 'clip_rect' field."

	^SDL_Rect fromAddress: bytes yourAddress + _OffsetOf_clip_rect!

destroy
	self library destroySurface_surface: self!

extent
	^self w @ self h!

flags
	"Answer the <Integer> value of the receiver's 'flags' field."

	^bytes dwordAtOffset: _OffsetOf_flags!

format
	"Answer the <SDL_PixelFormat> value of the receiver's 'format' field."

	^SDL_PixelFormat fromAddress: (bytes intPtrAtOffset: _OffsetOf_format)!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

list_blitmap
	"Answer the <ExternalAddress> value of the receiver's 'list_blitmap' field."

	^(bytes uintPtrAtOffset: _OffsetOf_list_blitmap) asExternalAddress!

list_blitmap: anExternalAddress
	"Set the receiver's 'list_blitmap' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_list_blitmap put: anExternalAddress!

locked
	"Answer the <Integer> value of the receiver's 'locked' field."

	^bytes sdwordAtOffset: _OffsetOf_locked!

map
	"Answer the <SDL_BlitMap> value of the receiver's 'map' field."

	^SDL_BlitMap fromAddress: (bytes intPtrAtOffset: _OffsetOf_map)!

map: aSDL_BlitMap
	"Set the receiver's 'map' field to the value of the argument, aSDL_BlitMap"

	bytes uintPtrAtOffset: _OffsetOf_map put: aSDL_BlitMap yourAddress!

pitch
	"Answer the <Integer> value of the receiver's 'pitch' field."

	^bytes sdwordAtOffset: _OffsetOf_pitch!

pixels
	"Answer the <ExternalAddress> value of the receiver's 'pixels' field."

	^(bytes uintPtrAtOffset: _OffsetOf_pixels) asExternalAddress!

pixels: anExternalAddress
	"Set the receiver's 'pixels' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_pixels put: anExternalAddress!

refcount
	"Answer the <Integer> value of the receiver's 'refcount' field."

	^bytes sdwordAtOffset: _OffsetOf_refcount!

refcount: anInteger
	"Set the receiver's 'refcount' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refcount put: anInteger!

saveAsPNG: aString
	self checkResult: (SDL3ImageLibrary default savePNG_surface: self file: aString)!

userdata
	"Answer the <ExternalAddress> value of the receiver's 'userdata' field."

	^(bytes uintPtrAtOffset: _OffsetOf_userdata) asExternalAddress!

userdata: anExternalAddress
	"Set the receiver's 'userdata' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_userdata put: anExternalAddress!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w! !
!SDL_Surface categoriesForMethods!
clip_rect!public! !
destroy!public! !
extent!public! !
flags!public! !
format!public! !
h!public! !
list_blitmap!public! !
list_blitmap:!public! !
locked!public! !
map!public! !
map:!public! !
pitch!public! !
pixels!public! !
pixels:!public! !
refcount!public! !
refcount:!public! !
saveAsPNG:!public! !
userdata!public! !
userdata:!public! !
w!public! !
!

!SDL_Surface class methodsFor!

defineFields
	"SDL_Surface compileDefinition"
	
	"typedef struct SDL_Surface
	{
	    Uint32 flags;               /**< Read-only */
	    SDL_PixelFormat *format;    /**< Read-only */
	    int w, h;                   /**< Read-only */
	    int pitch;                  /**< Read-only */
	    void *pixels;               /**< Read-write */

	    /** Application data associated with the surface */
	    SDL_PropertiesID props;     /**< Read-write */

	    /** information needed for surfaces requiring locks */
	    int locked;                 /**< Read-only */

	    /** list of BlitMap that hold a reference to this surface */
	    void *list_blitmap;         /**< Private */

	    /** clipping information */
	    SDL_Rect clip_rect;         /**< Read-only */

	    /** info for fast blit mapping to other surfaces */
	    SDL_BlitMap *map;           /**< Private */

	    /** Reference count -- used when freeing surface */
	    int refcount;               /**< Read-mostly */
	} SDL_Surface;"

	self
		defineField: #flags type: DWORDField new beReadOnly;
		defineField: #format type: (PointerField type: SDL_PixelFormat) beReadOnly;
		defineField: #w type: SDWORDField new beReadOnly;
		defineField: #h type: SDWORDField new beReadOnly;
		defineField: #pitch type: SDWORDField new beReadOnly;
		defineField: #pixels type: LPVOIDField new;
		defineField: #userdata type: LPVOIDField new;
		defineField: #locked type: SDWORDField new beReadOnly;
		defineField: #list_blitmap type: LPVOIDField new;
		defineField: #clip_rect type: (StructureField type: SDL_Rect) beReadOnly;
		defineField: #map type: (PointerField type: SDL_BlitMap);
		defineField: #refcount type: SDWORDField new!

fromFile: aString
	| surface |
	surface := SDL3ImageLibrary default load_file: aString.
	surface isNull ifTrue: [Error signal: SDL3Library default getError].
	^surface initialize!

getFieldNames
	^#(#flags #format #w #h #pitch #pixels #userdata #locked #list_blitmap #clip_rect #map #refcount)!

newExtent: aPoint
	| library format |
	library := SDL3Library default.
	format := library
				getPixelFormatEnumForMasks_bpp: 32
				rMask: 0
				gMask: 0
				bMask: 0
				aMask: 0.
	^library
		createSurface_width: aPoint x
		height: aPoint y
		format: format! !
!SDL_Surface class categoriesForMethods!
defineFields!public! !
fromFile:!public! !
getFieldNames!**compiled accessors**!constants!private! !
newExtent:!public! !
!

