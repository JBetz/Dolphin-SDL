"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_RenderEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_reserved _OffsetOf_timestamp _OffsetOf_type _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_RenderEvent guid: (GUID fromString: '{f6b765e8-326e-4d7b-9443-cf9a1a4c7c82}')!

SDL_RenderEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_RenderEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_RenderEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_RenderEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!

SDL_RenderEvent comment: ''!

!SDL_RenderEvent categoriesForClass!External-Data-Structured! !

!SDL_RenderEvent methodsFor!

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

!SDL_RenderEvent categoriesForMethods!
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_RenderEvent class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		byteSize: 128!

getFieldNames
	^#(#type #timestamp #windowID)! !

!SDL_RenderEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

