"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_AudioSpec
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_channels _OffsetOf_format _OffsetOf_freq'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_AudioSpec guid: (GUID fromString: '{b97296d3-4719-46a2-b7a9-253daf1c13c6}')!
SDL_AudioSpec addClassConstant: '_OffsetOf_channels' value: 16r4!
SDL_AudioSpec addClassConstant: '_OffsetOf_format' value: 16r0!
SDL_AudioSpec addClassConstant: '_OffsetOf_freq' value: 16r8!
SDL_AudioSpec comment: ''!
!SDL_AudioSpec categoriesForClass!External-Data-Structured! !
!SDL_AudioSpec methodsFor!

channels
	"Answer the <Integer> value of the receiver's 'channels' field."

	^bytes sdwordAtOffset: _OffsetOf_channels!

channels: anInteger
	"Set the receiver's 'channels' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_channels put: anInteger!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes wordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes wordAtOffset: _OffsetOf_format put: anInteger!

freq
	"Answer the <Integer> value of the receiver's 'freq' field."

	^bytes sdwordAtOffset: _OffsetOf_freq!

freq: anInteger
	"Set the receiver's 'freq' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_freq put: anInteger! !
!SDL_AudioSpec categoriesForMethods!
channels!**compiled accessors**!public! !
channels:!**compiled accessors**!public! !
format!**compiled accessors**!public! !
format:!**compiled accessors**!public! !
freq!**compiled accessors**!public! !
freq:!**compiled accessors**!public! !
!

!SDL_AudioSpec class methodsFor!

defineFields
	"SDL_AudioSpec compileDefinition"

	"typedef struct SDL_AudioSpec
	{
	    SDL_AudioFormat format;     /**< Audio data format */
	    int channels;               /**< Number of channels: 1 mono, 2 stereo, etc */
	    int freq;                   /**< sample rate: sample frames per second */
	} SDL_AudioSpec;"

	self
		defineField: #format type: WORDField new;
		defineField: #channels type: SDWORDField new;
		defineField: #freq type: SDWORDField new!

getFieldNames
	^#(#format #channels #freq)! !
!SDL_AudioSpec class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

