"Filed out from Dolphin Smalltalk"!

TTF_Object subclass: #TTF_SubString
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_cluster_index _OffsetOf_flags _OffsetOf_length _OffsetOf_line_index _OffsetOf_offset _OffsetOf_rect'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TTF_SubString guid: (GUID fromString: '{2a951df0-843c-4361-a7f0-67ef1b348e53}')!

TTF_SubString addClassConstant: '_OffsetOf_cluster_index' value: 16r10!
TTF_SubString addClassConstant: '_OffsetOf_flags' value: 16r0!
TTF_SubString addClassConstant: '_OffsetOf_length' value: 16r8!
TTF_SubString addClassConstant: '_OffsetOf_line_index' value: 16rC!
TTF_SubString addClassConstant: '_OffsetOf_offset' value: 16r4!
TTF_SubString addClassConstant: '_OffsetOf_rect' value: 16r14!

TTF_SubString comment: ''!

!TTF_SubString categoriesForClass!External-Data-Structured! !

!TTF_SubString methodsFor!

cluster_index
	"Answer the <Integer> value of the receiver's 'cluster_index' field."

	^bytes sdwordAtOffset: _OffsetOf_cluster_index!

cluster_index: anInteger
	"Set the receiver's 'cluster_index' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_cluster_index put: anInteger!

destroy!

flags
	"Answer the <Integer> value of the receiver's 'flags' field."

	^bytes dwordAtOffset: _OffsetOf_flags!

flags: anInteger
	"Set the receiver's 'flags' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_flags put: anInteger!

index
	^self offset + 1!

length
	"Answer the <Integer> value of the receiver's 'length' field."

	^bytes sdwordAtOffset: _OffsetOf_length!

length: anInteger
	"Set the receiver's 'length' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_length put: anInteger!

line_index
	"Answer the <Integer> value of the receiver's 'line_index' field."

	^bytes sdwordAtOffset: _OffsetOf_line_index!

line_index: anInteger
	"Set the receiver's 'line_index' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_line_index put: anInteger!

offset
	"Answer the <Integer> value of the receiver's 'offset' field."

	^bytes sdwordAtOffset: _OffsetOf_offset!

offset: anInteger
	"Set the receiver's 'offset' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_offset put: anInteger!

rect
	"Answer the <SDL_Rect> value of the receiver's 'rect' field."

	^SDL_Rect fromAddress: bytes yourAddress + _OffsetOf_rect!

rect: aSDL_Rect
	"Set the receiver's 'rect' field to the value of the argument, aSDL_Rect"

	aSDL_Rect
		replaceBytesOf: bytes
		from: ##(_OffsetOf_rect + 1)
		to: ##(_OffsetOf_rect + SDL_Rect basicByteSize)
		startingAt: 1! !

!TTF_SubString categoriesForMethods!
cluster_index!**compiled accessors**!public! !
cluster_index:!**compiled accessors**!public! !
destroy!public! !
flags!**compiled accessors**!public! !
flags:!**compiled accessors**!public! !
index!**compiled accessors**!public! !
length!**compiled accessors**!public! !
length:!**compiled accessors**!public! !
line_index!**compiled accessors**!public! !
line_index:!**compiled accessors**!public! !
offset!**compiled accessors**!public! !
offset:!**compiled accessors**!public! !
rect!**compiled accessors**!public! !
rect:!**compiled accessors**!public! !
!

!TTF_SubString class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #flags type: DWORDField new;
		defineField: #offset type: SDWORDField new;
		defineField: #length type: SDWORDField new;
		defineField: #line_index type: SDWORDField new;
		defineField: #cluster_index type: SDWORDField new;
		defineField: #rect type: (StructureField type: SDL_Rect)!

getFieldNames
	^#(#flags #offset #length #line_index #cluster_index #rect)! !

!TTF_SubString class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

