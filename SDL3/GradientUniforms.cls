"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #GradientUniforms
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_time'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

GradientUniforms guid: (GUID fromString: '{684695d9-82c1-44de-8131-2b3db5a47002}')!

GradientUniforms addClassConstant: '_OffsetOf_time' value: 16r0!

GradientUniforms comment: ''!

!GradientUniforms categoriesForClass!External-Data-Structured! !

!GradientUniforms methodsFor!

time
	"Answer the <Float> value of the receiver's 'time' field."

	^bytes floatAtOffset: _OffsetOf_time!

time: aFloat
	"Set the receiver's 'time' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_time put: aFloat! !

!GradientUniforms categoriesForMethods!
time!**compiled accessors**!public! !
time:!**compiled accessors**!public! !
!

!GradientUniforms class methodsFor!

defineFields
	"self compileDefinition"

	self defineField: #time type: FLOATField new!

getFieldNames
	^#(#time)! !

!GradientUniforms class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

