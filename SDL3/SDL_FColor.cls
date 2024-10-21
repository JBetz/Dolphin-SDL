"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_FColor
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_a _OffsetOf_b _OffsetOf_g _OffsetOf_r'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_FColor guid: (GUID fromString: '{9fedb342-c5e4-4a8e-805e-331d11831c08}')!

SDL_FColor addClassConstant: '_OffsetOf_a' value: 16rC!
SDL_FColor addClassConstant: '_OffsetOf_b' value: 16r8!
SDL_FColor addClassConstant: '_OffsetOf_g' value: 16r4!
SDL_FColor addClassConstant: '_OffsetOf_r' value: 16r0!

SDL_FColor comment: ''!

!SDL_FColor categoriesForClass!External-Data-Structured! !

!SDL_FColor methodsFor!

a
	"Answer the <Float> value of the receiver's 'a' field."

	^bytes floatAtOffset: _OffsetOf_a!

a: aFloat
	"Set the receiver's 'a' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_a put: aFloat!

b
	"Answer the <Float> value of the receiver's 'b' field."

	^bytes floatAtOffset: _OffsetOf_b!

b: aFloat
	"Set the receiver's 'b' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_b put: aFloat!

g
	"Answer the <Float> value of the receiver's 'g' field."

	^bytes floatAtOffset: _OffsetOf_g!

g: aFloat
	"Set the receiver's 'g' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_g put: aFloat!

r
	"Answer the <Float> value of the receiver's 'r' field."

	^bytes floatAtOffset: _OffsetOf_r!

r: aFloat
	"Set the receiver's 'r' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_r put: aFloat! !

!SDL_FColor categoriesForMethods!
a!**compiled accessors**!public! !
a:!**compiled accessors**!public! !
b!**compiled accessors**!public! !
b:!**compiled accessors**!public! !
g!**compiled accessors**!public! !
g:!**compiled accessors**!public! !
r!**compiled accessors**!public! !
r:!**compiled accessors**!public! !
!

!SDL_FColor class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #r type: FLOATField new;
		defineField: #g type: FLOATField new;
		defineField: #b type: FLOATField new;
		defineField: #a type: FLOATField new!

getFieldNames
	^#(#r #g #b #a)!

r: r g: g b: b a: a
	^self new
		r: r;
		g: g;
		b: b;
		a: a! !

!SDL_FColor class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
r:g:b:a:!public! !
!

