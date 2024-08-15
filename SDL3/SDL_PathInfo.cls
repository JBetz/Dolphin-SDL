"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_PathInfo
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_access_time _OffsetOf_create_time _OffsetOf_modify_time _OffsetOf_size _OffsetOf_type'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_PathInfo guid: (GUID fromString: '{98ff4b44-5ec4-44b0-86bc-bda57c1a15c0}')!

SDL_PathInfo addClassConstant: '_OffsetOf_access_time' value: 16r20!
SDL_PathInfo addClassConstant: '_OffsetOf_create_time' value: 16r10!
SDL_PathInfo addClassConstant: '_OffsetOf_modify_time' value: 16r18!
SDL_PathInfo addClassConstant: '_OffsetOf_size' value: 16r8!
SDL_PathInfo addClassConstant: '_OffsetOf_type' value: 16r0!

SDL_PathInfo comment: ''!

!SDL_PathInfo categoriesForClass!External-Data-Structured! !

!SDL_PathInfo methodsFor!

access_time
	"Answer the <Integer> value of the receiver's 'access_time' field."

	^bytes sqwordAtOffset: _OffsetOf_access_time!

access_time: anInteger
	"Set the receiver's 'access_time' field to the value of the argument, anInteger"

	bytes sqwordAtOffset: _OffsetOf_access_time put: anInteger!

create_time
	"Answer the <Integer> value of the receiver's 'create_time' field."

	^bytes sqwordAtOffset: _OffsetOf_create_time!

create_time: anInteger
	"Set the receiver's 'create_time' field to the value of the argument, anInteger"

	bytes sqwordAtOffset: _OffsetOf_create_time put: anInteger!

modify_time
	"Answer the <Integer> value of the receiver's 'modify_time' field."

	^bytes sqwordAtOffset: _OffsetOf_modify_time!

modify_time: anInteger
	"Set the receiver's 'modify_time' field to the value of the argument, anInteger"

	bytes sqwordAtOffset: _OffsetOf_modify_time put: anInteger!

size
	"Answer the <Integer> value of the receiver's 'size' field."

	^bytes qwordAtOffset: _OffsetOf_size!

size: anInteger
	"Set the receiver's 'size' field to the value of the argument, anInteger"

	bytes qwordAtOffset: _OffsetOf_size put: anInteger!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes sdwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_type put: anInteger! !

!SDL_PathInfo categoriesForMethods!
access_time!**compiled accessors**!public! !
access_time:!**compiled accessors**!public! !
create_time!**compiled accessors**!public! !
create_time:!**compiled accessors**!public! !
modify_time!**compiled accessors**!public! !
modify_time:!**compiled accessors**!public! !
size!**compiled accessors**!public! !
size:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
!

!SDL_PathInfo class methodsFor!

defineFields
	"SDL_PathInfo compileDefinition"

	"typedef struct SDL_PathInfo
	{
	    SDL_PathType type;          /* the path type */
	    Uint64 size;                /* the file size in bytes */
	    SDL_Time create_time;   /* the time when the path was created */
	    SDL_Time modify_time;   /* the last time the path was modified */
	    SDL_Time access_time;   /* the last time the path was read */
	} SDL_PathInfo;"

	self 
		defineField: #type type: SDWORDField new;
		defineField: #size type: QWORDField new;
		defineField: #create_time type: SQWORDField new;
		defineField: #modify_time type: SQWORDField new;
		defineField: #access_time type: SQWORDField new!

getFieldNames
	^#(#type #size #create_time #modify_time #access_time)! !

!SDL_PathInfo class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

