"Filed out from Dolphin Smalltalk"!

Object subclass: #Vector
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Vector guid: (GUID fromString: '{9f5af641-40c9-11d5-be18-00010240d5e2}')!

Vector comment: 'A vector is an ordered group of numbers which behaves in mathematically interesting ways.  '!

!Vector categoriesForClass!Unclassified! !

!Vector methodsFor!

- aVector
	| result |

	self order ~= aVector order ifTrue: [ IncompatibleVectorError signal ].

	result := self class new: self order.
	1 to: self order do: [ :i | result at: i put: (self at: i) - (aVector at: i) ].
	^result!

* aNumberOrVector
	^aNumberOrVector multiplyVector: self!

/ aNumberOrVector
	^aNumberOrVector divideVector: self!

\\ aNumber
	^self collect: [ :each | each \\ aNumber ]!

+ aVector
	| result |

	self order ~= aVector order ifTrue: [ IncompatibleVectorError signal ].

	result := Vector new: self order.
	1 to: self order do: [ :i | result at: i put: (self at: i) + (aVector at: i) ].
	^result!

= aVector
	self order = aVector order ifFalse: [ ^false ].
	1 to: self order do: [ :i | (self at: i) = (aVector at: i) ifFalse: [ ^false ] ].
	^true!

addToPoint: aPoint 
	
	^((self at: 1) + aPoint x) @ ((self at: 2) + aPoint y)!

angleFrom: aVector
	"Answer the angle between this vector and aVector."

	^((self dotProduct: aVector) / (self length * aVector length)) arcCos!

asColumn
	"Answer a column matrix (an Nx1 matrix, N=self order) containing the same values as this Vector."

	^Matrix new: self order@1 from: self values!

asRow
	"Answer a row matrix (a 1xN matrix, N=self order) containing the same values as this Vector."

	^Matrix new: 1@self order from: self values!

asVector
	^self!

at: anInteger
	^values at: anInteger!

at: anInteger put: anArithmeticValue
	self values at: anInteger put: anArithmeticValue!

collect: aMonadicValuable
	^self class from: (self values collect: aMonadicValuable)!

cross: aVector
	"Answer the cross product of this vector with aVector"
	|newVector|
	self order ~= aVector order
		ifTrue: [ IncompatibleVectorError signal: 'Vectors must be the same size to be multiplied' ].
	newVector := Vector new: 3.
	newVector at: 1 put: ((self at: 2 ) * (aVector at: 3)) - ((self at: 3) * (aVector at: 2)).
	newVector at: 2 put: ((self at: 3 ) * (aVector at: 1)) - ((self at: 1) * (aVector at: 3)).
	newVector at: 3 put: ((self at: 1 ) * (aVector at: 2)) - ((self at: 2) * (aVector at: 1)).
	^newVector!

displayOn: aStream
	aStream nextPut: $(.
	1 to: self values size do: [ :i |
			(self values at: i) printOn: aStream.
			i < self values size ifTrue: [ aStream nextPut: $  ] ].
	aStream nextPut: $)!

distanceFrom: aVector
	^(self - aVector) length!

divideVector: aVector
	^self reciprocal dotProduct: aVector!

dotProduct: aVector
	"Answer the dot product of this vector with aVector"

	self order ~= aVector order
		ifTrue: [ IncompatibleVectorError signal: 'Vectors must be the same size to be multiplied' ].

	^((1 to: self order) collect: [ :i | (self at: i) * (aVector at: i) ]) inject: 0 into: [ :tot :val | tot + val ]!

equals: aVector
	self order = aVector order ifFalse: [ ^false ].
	1 to: self order do: [ :i | ((self at: i) equals: (aVector at: i)) ifFalse: [ ^false ] ].
	^true!

initialize: anInteger
	values := Array new: anInteger!

isColumnCompatibleWith: aMatrix
	^self order = aMatrix rowCount!

isRowCompatibleWith: aMatrix
	^self order = aMatrix columnCount!

length
	^(self dotProduct: self) sqrt!

multipliedByScalar: aNumber
	| result |

	result := Vector new: self order.
	1 to: self order do: [ :i | result at: i put: (self at: i) * aNumber ].
	^result!

multiplyByFloat: aFloat
	^self multipliedByScalar: aFloat!

multiplyByFraction: aFraction
	^self multipliedByScalar: aFraction!

multiplyByInteger: aInteger
	^self multipliedByScalar: aInteger!

multiplyByScaledDecimal: aScaledDecimal
	^self multipliedByScalar: aScaledDecimal!

multiplyVector: aVector
	^self dotProduct: aVector!

negated
	^self * -1!

normalize
	|length|
	length := self length.
	1 to: values size do: [:count|
		self at: count put: (self at: count) / length.
	].!

order
	^self values size!

orthogonalWith: aVector
	^(self dotProduct: aVector) = 0!

perpendicularTo: aVector
	^self orthogonalWith: aVector!

printOn: aStream
	super printOn: aStream.
	self displayOn: aStream!

reciprocal
	^self collect: [ :each | 1 / each ]!

values
	^values!

values: anArray
	values := anArray!

x
	^values at: 1!

y
	^values at: 2!

z
	^self at: 3! !

!Vector categoriesForMethods!
-!arithmetic!public! !
*!arithmetic!public! !
/!arithmetic!public! !
\\!arithmetic!public! !
+!arithmetic!public! !
=!comparing!public! !
addToPoint:!public! !
angleFrom:!operations!public! !
asColumn!converting!public! !
asRow!converting!public! !
asVector!converting!public! !
at:!accessing!public! !
at:put:!accessing!public! !
collect:!enumerating!public! !
cross:!public! !
displayOn:!printing!public! !
distanceFrom:!operations!public! !
divideVector:!double dispatch!private! !
dotProduct:!operations!public! !
equals:!comparing!public! !
initialize:!initializing!public! !
isColumnCompatibleWith:!public! !
isRowCompatibleWith:!public! !
length!operations!public! !
multipliedByScalar:!double dispatch!private! !
multiplyByFloat:!double dispatch!private! !
multiplyByFraction:!double dispatch!private! !
multiplyByInteger:!double dispatch!private! !
multiplyByScaledDecimal:!double dispatch!private! !
multiplyVector:!double dispatch!private! !
negated!arithmetic!public! !
normalize!public! !
order!accessing!public! !
orthogonalWith:!operations!public! !
perpendicularTo:!operations!public! !
printOn:!printing!public! !
reciprocal!arithmetic!public! !
values!accessing!public! !
values:!accessing!private! !
x!public! !
y!public! !
z!public! !
!

!Vector class methodsFor!

from: aCollection
	^self new values: aCollection deepCopy!

new: anInteger
	^self new initialize: anInteger! !

!Vector class categoriesForMethods!
from:!instance creation!public! !
new:!instance creation!public! !
!

