"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUVertexAttribute
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_buffer_slot _OffsetOf_format _OffsetOf_location _OffsetOf_offset'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUVertexAttribute guid: (GUID fromString: '{39d1354a-d98d-4d8e-9fed-b3025ca6602e}')!

SDL_GPUVertexAttribute addClassConstant: '_OffsetOf_format' value: 16r8!
SDL_GPUVertexAttribute addClassConstant: '_OffsetOf_location' value: 16r0!
SDL_GPUVertexAttribute addClassConstant: '_OffsetOf_offset' value: 16rC!

SDL_GPUVertexAttribute comment: ''!

!SDL_GPUVertexAttribute categoriesForClass!External-Data-Structured! !

!SDL_GPUVertexAttribute methodsFor!

buffer_slot
	"Answer the <Integer> value of the receiver's 'buffer_slot' field."

	^bytes dwordAtOffset: _OffsetOf_buffer_slot!

buffer_slot: anInteger
	"Set the receiver's 'buffer_slot' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_buffer_slot put: anInteger!

format
	"Answer the <Integer> value of the receiver's 'format' field."

	^bytes sdwordAtOffset: _OffsetOf_format!

format: anInteger
	"Set the receiver's 'format' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_format put: anInteger!

location
	"Answer the <Integer> value of the receiver's 'location' field."

	^bytes dwordAtOffset: _OffsetOf_location!

location: anInteger
	"Set the receiver's 'location' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_location put: anInteger!

offset
	"Answer the <Integer> value of the receiver's 'offset' field."

	^bytes dwordAtOffset: _OffsetOf_offset!

offset: anInteger
	"Set the receiver's 'offset' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_offset put: anInteger! !

!SDL_GPUVertexAttribute categoriesForMethods!
buffer_slot!public! !
buffer_slot:!public! !
format!public! !
format:!public! !
location!public! !
location:!public! !
offset!public! !
offset:!public! !
!

!SDL_GPUVertexAttribute class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #location type: DWORDField new;
		defineField: #buffer_slot type: DWORDField new;
		defineField: #format type: SDWORDField new;
		defineField: #offset type: DWORDField new!

getFieldNames
	^#(#location #binding_index #format #offset)! !

!SDL_GPUVertexAttribute class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

