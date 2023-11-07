"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_QuitEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_timestamp'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_QuitEvent guid: (GUID fromString: '{75ade90c-54ff-49b4-b62c-d908bf60e9a9}')!
SDL_QuitEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_QuitEvent comment: ''!
!SDL_QuitEvent categoriesForClass!External-Data-Structured! !
!SDL_QuitEvent methodsFor!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes dwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_timestamp put: anInteger! !
!SDL_QuitEvent categoriesForMethods!
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
!

!SDL_QuitEvent class methodsFor!

defineFields
	"SDL_QuitEvent compileDefinition
	
	typedef struct SDL_QuitEvent
	{
		Uint32 type;        /**< ::SDL_QUIT */
		Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	} SDL_QuitEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new!

getFieldNames
	^#(#type #timestamp)! !
!SDL_QuitEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

