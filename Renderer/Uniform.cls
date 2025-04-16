"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #Uniform
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_view'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Uniform guid: (GUID fromString: '{5ef3dc68-d2c0-49c0-a93e-9895efa2931f}')!

Uniform addClassConstant: '_OffsetOf_view' value: 16r0!

Uniform comment: ''!

!Uniform categoriesForClass!External-Data-Structured! !

!Uniform methodsFor!

view
	"Answer the <FLOATArray> value of the receiver's 'view' field."

	^FLOATArray fromAddress: bytes yourAddress length: 16!

view: aFLOATArray
	"Set the receiver's 'view' field to the value of the argument, aFLOATArray"

	| size |
	size := aFLOATArray byteSize min: ##(16 * FLOATArray elementSize).
	aFLOATArray
		replaceBytesOf: bytes
		from: ##(_OffsetOf_view + 1)
		to: size
		startingAt: 1! !

!Uniform categoriesForMethods!
view!**compiled accessors**!public! !
view:!**compiled accessors**!public! !
!

!Uniform class methodsFor!

defineFields
	"self compileDefinition"

	self defineField: #view type: (ArrayField type: FLOATArray length: 16)!

getFieldNames
	^#(#view)! !

!Uniform class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

