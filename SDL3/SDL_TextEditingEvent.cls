"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_TextEditingEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_length _OffsetOf_reserved _OffsetOf_start _OffsetOf_text _OffsetOf_timestamp _OffsetOf_type _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_TextEditingEvent guid: (GUID fromString: '{0258ccbb-5f47-499c-9c64-eedb44b62e2b}')!

SDL_TextEditingEvent addClassConstant: '_OffsetOf_length' value: 16r58!
SDL_TextEditingEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_TextEditingEvent addClassConstant: '_OffsetOf_start' value: 16r54!
SDL_TextEditingEvent addClassConstant: '_OffsetOf_text' value: 16r14!
SDL_TextEditingEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_TextEditingEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_TextEditingEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!

SDL_TextEditingEvent comment: ''!

!SDL_TextEditingEvent categoriesForClass!External-Data-Structured! !

!SDL_TextEditingEvent methodsFor!

length
	"Answer the <Integer> value of the receiver's 'length' field."

	^bytes sdwordAtOffset: _OffsetOf_length!

length: anInteger
	"Set the receiver's 'length' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_length put: anInteger!

start
	"Answer the <Integer> value of the receiver's 'start' field."

	^bytes sdwordAtOffset: _OffsetOf_start!

start: anInteger
	"Set the receiver's 'start' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_start put: anInteger!

text
	"Answer the <Utf8String> value of the receiver's 'text' field."

	^Utf8String fromAddress: bytes yourAddress + _OffsetOf_text!

text: anUtf8String
	"Set the receiver's 'text' field to the value of the argument, anUtf8String"

	| size |
	size := anUtf8String byteSize - 1 min: 63.
	anUtf8String
		replaceBytesOf: bytes
		from: ##(_OffsetOf_text + 1)
		to: _OffsetOf_text + size
		startingAt: 1.
	bytes byteAtOffset: _OffsetOf_text + size put: 0!

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

!SDL_TextEditingEvent categoriesForMethods!
length!**compiled accessors**!public! !
length:!**compiled accessors**!public! !
start!**compiled accessors**!public! !
start:!**compiled accessors**!public! !
text!**compiled accessors**!public! !
text:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_TextEditingEvent class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #text type: (StringField type: Utf8String length: 64);
		defineField: #start type: SDWORDField new;
		defineField: #length type: SDWORDField new!

getFieldNames
	^#(#type #timestamp #windowID #text #start #length)! !

!SDL_TextEditingEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

