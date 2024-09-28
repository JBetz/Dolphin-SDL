"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_TextInputEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_reserved _OffsetOf_text _OffsetOf_timestamp _OffsetOf_type _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_TextInputEvent guid: (GUID fromString: '{05d8e7dc-6dfc-44c8-a7dc-6d2ce18a3854}')!

SDL_TextInputEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_TextInputEvent addClassConstant: '_OffsetOf_text' value: 16r14!
SDL_TextInputEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_TextInputEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_TextInputEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!

SDL_TextInputEvent comment: ''!

!SDL_TextInputEvent categoriesForClass!External-Data-Structured! !

!SDL_TextInputEvent methodsFor!

text
	"Answer the <Utf8String> value of the receiver's 'text' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_text)!

text: anUtf8String
	"Set the receiver's 'text' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_text put: anUtf8String yourAddress!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes qwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes qwordAtOffset: _OffsetOf_timestamp put: anInteger!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes dwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_type put: anInteger!

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
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_TextInputEvent class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #text type: (PointerField type: Utf8String)!

getFieldNames
	^#(#type #timestamp #windowID #text)! !

!SDL_TextInputEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

