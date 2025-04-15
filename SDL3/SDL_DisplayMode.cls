"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_DisplayMode
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_displayID _OffsetOf_format _OffsetOf_h _OffsetOf_internal _OffsetOf_pixel_density _OffsetOf_refresh_rate _OffsetOf_refresh_rate_denominator _OffsetOf_refresh_rate_numerator _OffsetOf_w'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_DisplayMode guid: (GUID fromString: '{568a4a3b-46ed-444c-a329-f08d8efd3191}')!

SDL_DisplayMode addClassConstant: '_OffsetOf_displayID' value: 16r0!
SDL_DisplayMode addClassConstant: '_OffsetOf_format' value: 16r4!
SDL_DisplayMode addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_DisplayMode addClassConstant: '_OffsetOf_internal' value: 16r20!
SDL_DisplayMode addClassConstant: '_OffsetOf_pixel_density' value: 16r10!
SDL_DisplayMode addClassConstant: '_OffsetOf_refresh_rate' value: 16r14!
SDL_DisplayMode addClassConstant: '_OffsetOf_refresh_rate_denominator' value: 16r1C!
SDL_DisplayMode addClassConstant: '_OffsetOf_refresh_rate_numerator' value: 16r18!
SDL_DisplayMode addClassConstant: '_OffsetOf_w' value: 16r8!

SDL_DisplayMode comment: ''!

!SDL_DisplayMode categoriesForClass!External-Data-Structured! !

!SDL_DisplayMode methodsFor!

displayID
	"Answer the <Integer> value of the receiver's 'displayID' field."

	^bytes sdwordAtOffset: _OffsetOf_displayID!

displayID: anInteger
	"Set the receiver's 'displayID' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_displayID put: anInteger!

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

internal
	"Answer the <ExternalAddress> value of the receiver's 'internal' field."

	^(bytes uintPtrAtOffset: _OffsetOf_internal) asExternalAddress!

internal: anExternalAddress
	"Set the receiver's 'internal' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_internal put: anExternalAddress!

pixel_density
	"Answer the <Float> value of the receiver's 'pixel_density' field."

	^bytes floatAtOffset: _OffsetOf_pixel_density!

pixel_density: aFloat
	"Set the receiver's 'pixel_density' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_pixel_density put: aFloat!

refresh_rate
	"Answer the <Float> value of the receiver's 'refresh_rate' field."

	^bytes floatAtOffset: _OffsetOf_refresh_rate!

refresh_rate: aFloat
	"Set the receiver's 'refresh_rate' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_refresh_rate put: aFloat!

refresh_rate_denominator
	"Answer the <Integer> value of the receiver's 'refresh_rate_denominator' field."

	^bytes sdwordAtOffset: _OffsetOf_refresh_rate_denominator!

refresh_rate_denominator: anInteger
	"Set the receiver's 'refresh_rate_denominator' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refresh_rate_denominator put: anInteger!

refresh_rate_numerator
	"Answer the <Integer> value of the receiver's 'refresh_rate_numerator' field."

	^bytes sdwordAtOffset: _OffsetOf_refresh_rate_numerator!

refresh_rate_numerator: anInteger
	"Set the receiver's 'refresh_rate_numerator' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refresh_rate_numerator put: anInteger!

w
	"Answer the <Integer> value of the receiver's 'w' field."

	^bytes sdwordAtOffset: _OffsetOf_w!

w: anInteger
	"Set the receiver's 'w' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_w put: anInteger! !

!SDL_DisplayMode categoriesForMethods!
displayID!**compiled accessors**!public! !
displayID:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
internal!**compiled accessors**!public! !
internal:!**compiled accessors**!public! !
pixel_density!**compiled accessors**!public! !
pixel_density:!**compiled accessors**!public! !
refresh_rate!**compiled accessors**!public! !
refresh_rate:!**compiled accessors**!public! !
refresh_rate_denominator!**compiled accessors**!public! !
refresh_rate_denominator:!**compiled accessors**!public! !
refresh_rate_numerator!**compiled accessors**!public! !
refresh_rate_numerator:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
!

!SDL_DisplayMode class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #displayID type: SDWORDField new;
		defineField: #format type: DWORDField new;
		defineField: #w type: SDWORDField new;
		defineField: #h type: SDWORDField new;
		defineField: #pixel_density type: FLOATField new;
		defineField: #refresh_rate type: FLOATField new;
		defineField: #refresh_rate_numerator type: SDWORDField new;
		defineField: #refresh_rate_denominator type: SDWORDField new;
		defineField: #internal type: LPVOIDField new!

getFieldNames
	^#(#displayID #format #w #h #pixel_density #refresh_rate #refresh_rate_numerator #refresh_rate_denominator #internal)! !

!SDL_DisplayMode class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

