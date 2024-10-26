"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_CommonEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_reserved _OffsetOf_timestamp _OffsetOf_type'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_CommonEvent guid: (GUID fromString: '{838a5193-7669-48eb-8b87-db7f56ee08ea}')!

SDL_CommonEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_CommonEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_CommonEvent addClassConstant: '_OffsetOf_type' value: 16r0!

SDL_CommonEvent comment: ''!

!SDL_CommonEvent categoriesForClass!External-Data-Structured! !

!SDL_CommonEvent methodsFor!

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

	bytes dwordAtOffset: _OffsetOf_type put: anInteger! !

!SDL_CommonEvent categoriesForMethods!
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
!

!SDL_CommonEvent class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		byteSize: 128!

getFieldNames
	^#(#type #timestamp)! !

!SDL_CommonEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

