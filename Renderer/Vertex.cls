"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #Vertex
	instanceVariableNames: 'x y z r g b a'
	classVariableNames: '_OffsetOf_a _OffsetOf_b _OffsetOf_g _OffsetOf_r _OffsetOf_u _OffsetOf_v _OffsetOf_x _OffsetOf_y _OffsetOf_z'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Vertex guid: (GUID fromString: '{c103a28d-0b97-46e5-b352-62f1d43cf2bc}')!

Vertex addClassConstant: '_OffsetOf_a' value: 16r18!
Vertex addClassConstant: '_OffsetOf_b' value: 16r14!
Vertex addClassConstant: '_OffsetOf_g' value: 16r10!
Vertex addClassConstant: '_OffsetOf_r' value: 16rC!
Vertex addClassConstant: '_OffsetOf_u' value: 16r1C!
Vertex addClassConstant: '_OffsetOf_v' value: 16r20!
Vertex addClassConstant: '_OffsetOf_x' value: 16r0!
Vertex addClassConstant: '_OffsetOf_y' value: 16r4!
Vertex addClassConstant: '_OffsetOf_z' value: 16r8!

Vertex comment: ''!

!Vertex categoriesForClass!External-Data-Structured! !

!Vertex methodsFor!

a
	"Answer the <Float> value of the receiver's 'a' field."

	^bytes floatAtOffset: _OffsetOf_a!

a: aFloat
	"Set the receiver's 'a' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_a put: aFloat!

asSDLVertex
	^SDL_Vertex new
		color: (SDL_FColor new
					r: self r;
					g: self g;
					b: self b;
					a: self a);
		position: (SDL_FPoint new
					x: self x;
					y: self y);
		yourself!

b
	"Answer the <Float> value of the receiver's 'b' field."

	^bytes floatAtOffset: _OffsetOf_b!

b: aFloat
	"Set the receiver's 'b' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_b put: aFloat!

color: aColor
	self
		r: aColor red;
		g: aColor green;
		b: aColor blue;
		a: aColor alpha!

g
	"Answer the <Float> value of the receiver's 'g' field."

	^bytes floatAtOffset: _OffsetOf_g!

g: aFloat
	"Set the receiver's 'g' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_g put: aFloat!

normalizeTo: aPoint
	self
		x: 2 * self x / aPoint x - 1;
		y: 1 - (2 * self y / aPoint y)!

position
	^self x @ self y!

r
	"Answer the <Float> value of the receiver's 'r' field."

	^bytes floatAtOffset: _OffsetOf_r!

r: aFloat
	"Set the receiver's 'r' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_r put: aFloat!

rotate: aFloat around: aPoint
	| rotationMatrix newPosition |
	rotationMatrix := Matrix rotationBy: aFloat.
	newPosition := (rotationMatrix
				* (Vector from: (Array with: self x - aPoint x with: self y - aPoint y))) asVector
				+ (Vector from: (Array with: aPoint x with: aPoint y)).
	self
		x: newPosition x;
		y: newPosition y!

u
	"Answer the <Float> value of the receiver's 'u' field."

	^bytes floatAtOffset: _OffsetOf_u!

u: aFloat
	"Set the receiver's 'u' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_u put: aFloat!

v
	"Answer the <Float> value of the receiver's 'v' field."

	^bytes floatAtOffset: _OffsetOf_v!

v: aFloat
	"Set the receiver's 'v' field to the value of the argument, aFloat"

	bytes floatAtOffset: _OffsetOf_v put: aFloat!

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

!Vertex categoriesForMethods!
a!**compiled accessors**!public! !
a:!**compiled accessors**!public! !
asSDLVertex!public! !
b!**compiled accessors**!public! !
b:!**compiled accessors**!public! !
color:!public! !
g!**compiled accessors**!public! !
g:!**compiled accessors**!public! !
normalizeTo:!public! !
position!public! !
r!**compiled accessors**!public! !
r:!**compiled accessors**!public! !
rotate:around:!public! !
u!**compiled accessors**!public! !
u:!**compiled accessors**!public! !
v!**compiled accessors**!public! !
v:!**compiled accessors**!public! !
x!**compiled accessors**!public! !
x:!**compiled accessors**!public! !
y!**compiled accessors**!public! !
y:!**compiled accessors**!public! !
z!**compiled accessors**!public! !
z:!**compiled accessors**!public! !
!

!Vertex class methodsFor!

byteSize
	^36!

defineFields
	"self compileDefinition"

	self
		defineField: #x type: FLOATField new;
		defineField: #y type: FLOATField new;
		defineField: #z type: FLOATField new;
		defineField: #r type: FLOATField new;
		defineField: #g type: FLOATField new;
		defineField: #b type: FLOATField new;
		defineField: #a type: FLOATField new;
		defineField: #u type: FLOATField new;
		defineField: #v type: FLOATField new!

getFieldNames
	^#(#x #y #z #r #g #b #a #u #v)!

position: aPoint color: aColor
	^self new
		x: aPoint x;
		y: aPoint y;
		z: 0;
		color: aColor asSDLFColor!

position: aPoint color: aColor uv: anotherPoint
	^self new
		x: aPoint x;
		y: aPoint y;
		z: 0;
		color: aColor;
		u: anotherPoint x;
		v: anotherPoint y!

position: aPoint uv: anotherPoint
	^self new
		x: aPoint x;
		y: aPoint y;
		z: 0;
		r: 1;
		g: 1;
		b: 1;
		a: 1;
		u: anotherPoint x;
		v: anotherPoint y! !

!Vertex class categoriesForMethods!
byteSize!public! !
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
position:color:!public! !
position:color:uv:!public! !
position:uv:!public! !
!

