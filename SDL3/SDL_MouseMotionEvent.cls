"Filed out from Dolphin Smalltalk"!

SDL_Event subclass: #SDL_MouseMotionEvent
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_reserved _OffsetOf_state _OffsetOf_timestamp _OffsetOf_type _OffsetOf_which _OffsetOf_windowID _OffsetOf_x _OffsetOf_xrel _OffsetOf_y _OffsetOf_yrel'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SDL_MouseMotionEvent guid: (GUID fromString: '{532fc246-c023-4499-b64e-7d8e38583c3d}')!

SDL_MouseMotionEvent addClassConstant: '_OffsetOf_reserved' value: 16r4!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_state' value: 16r18!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_timestamp' value: 16r8!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_type' value: 16r0!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_which' value: 16r14!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_windowID' value: 16r10!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_x' value: 16r1C!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_xrel' value: 16r24!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_y' value: 16r20!
SDL_MouseMotionEvent addClassConstant: '_OffsetOf_yrel' value: 16r28!

SDL_MouseMotionEvent comment: ''!

!SDL_MouseMotionEvent categoriesForClass!External-Data-Structured! !

!SDL_MouseMotionEvent methodsFor!

position
	^self x @ self y!

state
	"Answer the <Integer> value of the receiver's 'state' field."

	^bytes dwordAtOffset: _OffsetOf_state!

state: anInteger
	"Set the receiver's 'state' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_state put: anInteger!

timestamp
	"Answer the <Integer> value of the receiver's 'timestamp' field."

	^bytes qwordAtOffset: _OffsetOf_timestamp!

timestamp: anInteger
	"Set the receiver's 'timestamp' field to the value of the argument, anInteger"

	bytes qwordAtOffset: _OffsetOf_timestamp put: anInteger!

type
	"Answer the <Integer> value of the receiver's 'type' field."

	^bytes dwordAtOffset: _OffsetOf_type!

type: anInteger
	"Set the receiver's 'type' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_type put: anInteger!

which
	"Answer the <Integer> value of the receiver's 'which' field."

	^bytes dwordAtOffset: _OffsetOf_which!

which: anInteger
	"Set the receiver's 'which' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_which put: anInteger!

windowID
	"Answer the <Integer> value of the receiver's 'windowID' field."

	^bytes dwordAtOffset: _OffsetOf_windowID!

windowID: anInteger
	"Set the receiver's 'windowID' field to the value of the argument, anInteger"

	bytes dwordAtOffset: _OffsetOf_windowID put: anInteger!

x
	"Answer the <Float> value of the receiver's 'x' field."

	^bytes floatAtOffset: _OffsetOf_x!

x: aFloat
	"Set the receiver's 'x' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_x put: aFloat!

xrel
	"Answer the <Float> value of the receiver's 'xrel' field."

	^bytes floatAtOffset: _OffsetOf_xrel!

xrel: aFloat
	"Set the receiver's 'xrel' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_xrel put: aFloat!

y
	"Answer the <Float> value of the receiver's 'y' field."

	^bytes floatAtOffset: _OffsetOf_y!

y: aFloat
	"Set the receiver's 'y' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_y put: aFloat!

yrel
	"Answer the <Float> value of the receiver's 'yrel' field."

	^bytes floatAtOffset: _OffsetOf_yrel!

yrel: aFloat
	"Set the receiver's 'yrel' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_yrel put: aFloat! !

!SDL_MouseMotionEvent categoriesForMethods!
position!public! !
state!**compiled accessors**!public! !
state:!**compiled accessors**!public! !
timestamp!**compiled accessors**!public! !
timestamp:!**compiled accessors**!public! !
type!**compiled accessors**!public! !
type:!**compiled accessors**!public! !
which!**compiled accessors**!public! !
which:!**compiled accessors**!public! !
windowID!**compiled accessors**!public! !
windowID:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
xrel!**compiled accessors**!public! !
xrel:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
yrel!**compiled accessors**!public! !
yrel:!**compiled accessors**!public! !
!

!SDL_MouseMotionEvent class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #type type: DWORDField new;
		defineField: #reserved type: DWORDField new beFiller;
		defineField: #timestamp type: QWORDField new;
		defineField: #windowID type: DWORDField new;
		defineField: #which type: DWORDField new;
		defineField: #state type: DWORDField new;
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new;
		defineField: #xrel type: FLOATField new;
		defineField: #yrel type: FLOATField new!

getFieldNames
	^#(#type #timestamp #windowID #which #state #x #y #xrel #yrel)! !

!SDL_MouseMotionEvent class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

