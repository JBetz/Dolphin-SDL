"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_GPUViewport
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_h _OffsetOf_max_depth _OffsetOf_min_depth _OffsetOf_w _OffsetOf_x _OffsetOf_y'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_GPUViewport guid: (GUID fromString: '{a7905a33-e425-4dfe-8e0e-addb97620f52}')!

SDL_GPUViewport addClassConstant: '_OffsetOf_h' value: 16rC!
SDL_GPUViewport addClassConstant: '_OffsetOf_max_depth' value: 16r14!
SDL_GPUViewport addClassConstant: '_OffsetOf_min_depth' value: 16r10!
SDL_GPUViewport addClassConstant: '_OffsetOf_w' value: 16r8!
SDL_GPUViewport addClassConstant: '_OffsetOf_x' value: 16r0!
SDL_GPUViewport addClassConstant: '_OffsetOf_y' value: 16r4!

SDL_GPUViewport comment: ''!

!SDL_GPUViewport categoriesForClass!External-Data-Structured! !

!SDL_GPUViewport methodsFor!

h
	"Answer the <Float> value of the receiver's 'h' field."

	^bytes floatAtOffset: _OffsetOf_h!

h: aFloat
	"Set the receiver's 'h' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_h put: aFloat!

max_depth
	"Answer the <Float> value of the receiver's 'max_depth' field."

	^bytes floatAtOffset: _OffsetOf_max_depth!

max_depth: aFloat
	"Set the receiver's 'max_depth' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_max_depth put: aFloat!

min_depth
	"Answer the <Float> value of the receiver's 'min_depth' field."

	^bytes floatAtOffset: _OffsetOf_min_depth!

min_depth: aFloat
	"Set the receiver's 'min_depth' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_min_depth put: aFloat!

w
	"Answer the <Float> value of the receiver's 'w' field."

	^bytes floatAtOffset: _OffsetOf_w!

w: aFloat
	"Set the receiver's 'w' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_w put: aFloat!

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

	bytes floatAtOffset: _OffsetOf_y put: aFloat! !

!SDL_GPUViewport categoriesForMethods!
h!**compiled accessors**!public! !
h:!**compiled accessors**!public! !
max_depth!**compiled accessors**!public! !
max_depth:!**compiled accessors**!public! !
min_depth!**compiled accessors**!public! !
min_depth:!**compiled accessors**!public! !
w!**compiled accessors**!public! !
w:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
!

!SDL_GPUViewport class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new;
		defineField: #w type: FLOATField new;
		defineField: #h type: FLOATField new;
		defineField: #min_depth type: FLOATField new;
		defineField: #max_depth type: FLOATField new!

getFieldNames
	^#(#x #y #w #h #min_depth #max_depth)! !

!SDL_GPUViewport class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

