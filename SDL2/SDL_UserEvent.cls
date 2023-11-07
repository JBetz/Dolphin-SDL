"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_UserEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_code _OffsetOf_data1 _OffsetOf_data2 _OffsetOf_timestamp _OffsetOf_windowID'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SDL_UserEvent guid: (GUID fromString: '{19bd1749-c253-4e51-977b-d19fc5dbd14f}')!
SDL_UserEvent addClassConstant: '_OffsetOf_code' value: 16rC!
SDL_UserEvent addClassConstant: '_OffsetOf_data1' value: 16r10!
SDL_UserEvent addClassConstant: '_OffsetOf_data2' value: 16r14!
SDL_UserEvent addClassConstant: '_OffsetOf_timestamp' value: 16r4!
SDL_UserEvent addClassConstant: '_OffsetOf_windowID' value: 16r8!
SDL_UserEvent comment: ''!
!SDL_UserEvent categoriesForClass!External-Data-Structured! !
!SDL_UserEvent methodsFor!

code
	"Answer the <Integer> value of the receiver's 'code' field."

	^bytes sdwordAtOffset: _OffsetOf_code!

code: anInteger
	"Set the receiver's 'code' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_code put: anInteger!

data1
	"Answer the <ExternalAddress> value of the receiver's 'data1' field."

	^(bytes uintPtrAtOffset: _OffsetOf_data1) asExternalAddress!

data1: anExternalAddress
	"Set the receiver's 'data1' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_data1 put: anExternalAddress!

data2
	"Answer the <ExternalAddress> value of the receiver's 'data2' field."

	^(bytes uintPtrAtOffset: _OffsetOf_data2) asExternalAddress!

data2: anExternalAddress
	"Set the receiver's 'data2' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_data2 put: anExternalAddress!

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
!SDL_UserEvent categoriesForMethods!
code!**compiled accessors**!public! !
code:!**compiled accessors**!public! !
data1!**compiled accessors**!public! !
data1:!**compiled accessors**!public! !
data2!**compiled accessors**!public! !
data2:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
!

!SDL_UserEvent class methodsFor!

defineFields
	"SDL_UserEvent compileDefinition
	
	typedef struct SDL_UserEvent
	{
	    Uint32 type;        /**< ::SDL_USEREVENT through ::SDL_LASTEVENT-1 */
	    Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
	    Uint32 windowID;    /**< The associated window if any */
	    Sint32 code;        /**< User defined event code */
	    void *data1;        /**< User defined data pointer */
	    void *data2;        /**< User defined data pointer */
	} SDL_UserEvent;"

	self
		defineField: #type type: DWORDField new;
		defineField: #timestamp type: DWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #code type: SDWORDField new;
		defineField: #data1 type: LPVOIDField new;
		defineField: #data2 type: LPVOIDField new!

getFieldNames
	^#(#type #timestamp #windowID #code #data1 #data2)! !
!SDL_UserEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

