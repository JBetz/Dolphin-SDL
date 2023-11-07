"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_TextInputEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_text _OffsetOf_timestamp _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_TextInputEvent guid: (GUID fromString: '{05d8e7dc-6dfc-44c8-a7dc-6d2ce18a3854}')!
SDL_TextInputEvent addClassConstant: '_OffsetOf_text' value: 16rC!
SDL_TextInputEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_TextInputEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_TextInputEvent comment: ''!
!SDL_TextInputEvent categoriesForClass!External-Data-Structured! !
!SDL_TextInputEvent methodsFor!

text
	"Answer the <Utf8String> value of the receiver's 'text' field."

	^Utf8String fromAddress: bytes yourAddress + _OffsetOf_text!

text: anUtf8String
	"Set the receiver's 'text' field to the value of the argument, anUtf8String"

	| size |
	size := anUtf8String byteSize - 1 min: 31.
	anUtf8String
		replaceBytesOf: bytes
		from: ##(_OffsetOf_text + 1)
		to: _OffsetOf_text + size
		startingAt: 1.
	bytes byteAtOffset: _OffsetOf_text + size put: 0!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger! !
!SDL_TextInputEvent categoriesForMethods!
text!**compiled accessors**!public! !
text:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_TextInputEvent class methodsFor!

defineFields
	"
	SDL_TextInputEvent compileDefinition
	
	typedef struct SDL_TextInputEvent
	{
	    Uint32 type;                              /**< ::SDL_TEXTINPUT */
	    Uint32 timestamp;
	    Uint32 windowID;                          /**< The window with keyboard focus, if any */
	    char text[SDL_TEXTINPUTEVENT_TEXT_SIZE];  /**< The input text */
	} SDL_TextInputEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #text type: (StringField type: Utf8String length: 32)!

getFieldNames
	^#(#type #timestamp #windowID #text)! !
!SDL_TextInputEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

