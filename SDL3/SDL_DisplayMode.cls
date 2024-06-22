"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_DisplayMode
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_driverdata _OffsetOf_format _OffsetOf_h _OffsetOf_refresh_rate _OffsetOf_w'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_DisplayMode guid: (GUID fromString: '{568a4a3b-46ed-444c-a329-f08d8efd3191}')!

SDL_DisplayMode addClassConstant: '_OffsetOf_driverdata' value: 16r10!
SDL_DisplayMode addClassConstant: '_OffsetOf_format' value: 16r0!
SDL_DisplayMode addClassConstant: '_OffsetOf_h' value: 16r8!
SDL_DisplayMode addClassConstant: '_OffsetOf_refresh_rate' value: 16rC!
SDL_DisplayMode addClassConstant: '_OffsetOf_w' value: 16r4!

SDL_DisplayMode comment: ''!

!SDL_DisplayMode categoriesForClass!External-Data-Structured! !

!SDL_DisplayMode methodsFor!

driverdata
	"Answer the <ExternalAddress> value of the receiver's 'driverdata' field."

	^(bytes uintPtrAtOffset: _OffsetOf_driverdata) asExternalAddress!

driverdata: anExternalAddress
	"Set the receiver's 'driverdata' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_driverdata put: anExternalAddress!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes dwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_format put: anInteger!

h
	"Answer the <Integer> value of the receiver's 'h' field."

	^bytes sdwordAtOffset: _OffsetOf_h!

h: anInteger
	"Set the receiver's 'h' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_h put: anInteger!

refresh_rate
	"Answer the <Integer> value of the receiver's 'refresh_rate' field."

	^bytes sdwordAtOffset: _OffsetOf_refresh_rate!

refresh_rate: anInteger
	"Set the receiver's 'refresh_rate' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refresh_rate put: anInteger!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w!

w: anInteger
	"Set the receiver's 'w' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_w put: anInteger! !

!SDL_DisplayMode categoriesForMethods!
driverdata!**compiled accessors**!public! !
driverdata:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
refresh_rate!**compiled accessors**!public! !
refresh_rate:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
!

!SDL_DisplayMode class methodsFor!

defineFields
	"SDL_DisplayMode compileDefinition 

	typedef struct SDL_DisplayMode {
	    Uint32 format;         // Pixel format of the display mode
	    int    w;              // Width of the display mode in pixels
	    int    h;              // Height of the display mode in pixels
	    int    refresh_rate;   // Refresh rate of the display mode in Hz
	    void*  driverdata;     // Driver-specific data, ignore this
	} SDL_DisplayMode;"

	self
		defineField: #format type: DWORDField new;
		defineField: #w type: SDWORDField new;
		defineField: #h type: SDWORDField new;
		defineField: #refresh_rate type: SDWORDField new;
		defineField: #driverdata type: LPVOIDField new!

getFieldNames
	^#(#format #w #h #refresh_rate #driverdata)! !

!SDL_DisplayMode class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

