"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #PositionVertex
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_x _OffsetOf_y _OffsetOf_z'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

PositionVertex guid: (GUID fromString: '{d3cbab12-977d-48ac-ae16-9f6862b94410}')!

PositionVertex addClassConstant: '_OffsetOf_x' value: 16r0!
PositionVertex addClassConstant: '_OffsetOf_y' value: 16r4!
PositionVertex addClassConstant: '_OffsetOf_z' value: 16r8!

PositionVertex comment: ''!

!PositionVertex categoriesForClass!External-Data-Structured! !

!PositionVertex methodsFor!

x
	"Answer the <Float> value of the receiver's 'x' field."

	^bytes floatAtOffset: _OffsetOf_x!

x: aFloat
	"Set the receiver's 'x' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_x put: aFloat!

y
	"Answer the <Float> value of the receiver's 'y' field."

	^bytes floatAtOffset: _OffsetOf_y!

y: aFloat
	"Set the receiver's 'y' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_y put: aFloat!

z
	"Answer the <Float> value of the receiver's 'z' field."

	^bytes floatAtOffset: _OffsetOf_z!

z: aFloat
	"Set the receiver's 'z' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_z put: aFloat! !

!PositionVertex categoriesForMethods!
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
z!**compiled accessors**!public! !
z:!**compiled accessors**!public! !
!

!PositionVertex class methodsFor!

defineFields
	"self compileDefinition"

	self 
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new;
		defineField: #z type: FLOATField new!

getFieldNames
	^#(#x #y #z)! !

!PositionVertex class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

