"Filed out from Dolphin Smalltalk"!

Object subclass: #Matrix
	instanceVariableNames: 'order values luForm comparisonTolerance'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Matrix guid: (GUID fromString: '{9f5af640-40c9-11d5-be18-00010240d5e2}')!

Matrix comment: 'Defines a matrix.  Some notes:
	1.  The order of the matrix is defined by a Point.  The x coordinate of the Point defines the number of
	     rows in the matrix, while the y coordinate defines the number of columns.
	2.  Similarly, a number of methods use Points to specify an element within the matrix.  Here again the
	     x coordinate of the Point defines the row while the y coordinate defines column.

	luForm is this matrix in LU-decomposed form.  Because this is relatively expensive to compute we determine this
		once and then use it when computing inverses, calculating determinants, and doing back/forward
		substitution.'!

!Matrix categoriesForClass!Unclassified! !

!Matrix methodsFor!

- aMatrix
	"Answer the result of subtracting 'aMatrix' from this matrix."

	| resultData |

	self order = aMatrix order ifFalse: [ IncompatibleMatrixError signal ].

	resultData := Array new: (self values size).

	1 to: self values size do: [ :i | resultData at: i put: (self values at: i) - (aMatrix values at: i) ].
	^self class new: self order from: resultData
	!

* aMatrixOrScalar
	^aMatrixOrScalar multiplyMatrix: self!

+ aMatrix
	"Answer the result of adding this matrix to 'aMatrix'."

	| resultData |

	self order = aMatrix order ifFalse: [ IncompatibleMatrixError signal ].

	resultData := Array new: (self values size).

	1 to: self values size do: [ :i | resultData at: i put: (self values at: i) + (aMatrix values at: i) ].
	^self class new: self order from: resultData
	!

= aMatrix
	self order = aMatrix order ifFalse: [ ^ false ].
	1 to: self rowCount do: [ :r |
		1 to: self columnCount do: [ :c |
			(((self at: r at: c)  - (aMatrix at: r at: c)) abs <= self comparisonTolerance) ifFalse: [ ^false ] ] ].
	^true!

adjoint
	| mat |

	mat := self class new: self order.

	"Note that we perform the transpose operation below rather than
	 sending #transpose.  This is done to improve performance"

	1 to: self rowCount do: [ :r |
		1 to: self columnCount do: [ :c |
			mat basicAt: c at: r put: (self cofactor: r@c) ] ].

	^mat!

asFloatArray
	| floatArray |
	floatArray := FLOATArray new: 16.
	floatArray at: 1 put: (self at: 1 @ 1).
	floatArray at: 2 put: (self at: 2 @ 1).
	floatArray at: 3 put: (self at: 3 @ 1).
	floatArray at: 4 put: (self at: 4 @ 1).
	floatArray at: 5 put: (self at: 1 @ 2).
	floatArray at: 6 put: (self at: 2 @ 2).
	floatArray at: 7 put: (self at: 3 @ 2).
	floatArray at: 8 put: (self at: 4 @ 2).
	floatArray at: 9 put: (self at: 1 @ 3).
	floatArray at: 10 put: (self at: 2 @ 3).
	floatArray at: 11 put: (self at: 3 @ 3).
	floatArray at: 12 put: (self at: 4 @ 3).
	floatArray at: 13 put: (self at: 1 @ 4).
	floatArray at: 14 put: (self at: 2 @ 4).
	floatArray at: 15 put: (self at: 3 @ 4).
	floatArray at: 16 put: (self at: 4 @ 4).
	^floatArray!

asVector
	"Answer the receiver as a vector.  One of the dimensions of this matrix must be 1 for this to be valid."

	(self rowCount = 1) | (self columnCount = 1) ifFalse: [
		IncompatibleMatrixError signal: 'Only matrices with a single row or column can be converted to vectors' ].

	^Vector from: self values!

at: aPoint
	^self at: aPoint x at: aPoint y!

at: anIntegerRow at: anIntegerColumn
	self validate: anIntegerRow@anIntegerColumn.
	^self basicAt: anIntegerRow at: anIntegerColumn
!

at: anIntegerRow at: anIntegerColumn put: aValue
	self validate: anIntegerRow@anIntegerColumn.
	self basicAt: anIntegerRow at: anIntegerColumn put: aValue
!

at: aPoint put: aValue
	^self at: aPoint x at: aPoint y put: aValue!

basicAt: anIntegerRow at: anIntegerColumn
	^self values at: (anIntegerRow-1 * self columnCount) + anIntegerColumn!

basicAt: anIntegerRow at: anIntegerColumn put: aValue
	self values at: (anIntegerRow-1 * self columnCount) + anIntegerColumn put: aValue.
	self clearLuForm!

clearLuForm
	"Private"
	self luForm: nil!

cofactor: aPoint
	(aPoint x + aPoint y) odd
		ifTrue: [ ^-1 * (self minor: aPoint) ]
		ifFalse: [ ^self minor: aPoint ]!

column: anInteger
	"Answer a single-column Matrix containing only the data from the 'anInteger'th column of this Matrix"

	| data |

	(anInteger < 0) | (anInteger > self columnCount) ifTrue: [ MatrixError signal: 'Index out of range' ].

	data := Array new: self rowCount.
	1 to: self rowCount do: [ :i | data at: i put: (self basicAt: i at: anInteger) ].
	^self class new: self rowCount @ 1 from: data
!

column: anInteger put: aVector
	"Replace the data in column 'anInteger' with values from aVector."

	aVector order ~= self rowCount ifTrue: [ MatrixError signal: 'Vector not compatible with this matrix' ].

	1 to: aVector order do: [ :i | self basicAt: i at: anInteger put: (aVector at: i) ]!

columnCount
	^self order y!

columnsDo: aMonadicValuable
	self columnVectors do:
		[ :aColumn |
		aMonadicValuable value: aColumn ]!

columnVector: anInteger
	^(self column: anInteger) asVector!

columnVectors
	^((1 to: self columnCount) collect: [:i | self columnVector: i]) asArray!

comparisonTolerance
	comparisonTolerance isNil ifTrue: [ comparisonTolerance := self class defaultComparisonTolerance ].
	^comparisonTolerance!

comparisonTolerance: aNumber
	comparisonTolerance := aNumber!

determinant
	"Answer the determinant of this matrix.

	Note that if your only interest in the determinant is to decide whether or not the matrix is singular you're
	better off using #isSingular which is not subject to numeric overflow."

	^self determinantByLuDecomposition!

determinantByCofactors
	"Answer the determinant of this matrix."

	| retval |

	self isSquare ifFalse: [ MatrixError signal: 'Matrix must be square' ].

	self order = (3@3) ifTrue: [
		^((self basicAt: 1 at: 1) * (((self basicAt: 2 at: 2)*(self basicAt: 3 at: 3)) - ((self basicAt: 3 at: 2)*(self basicAt: 2 at: 3)))) -
		  ((self basicAt: 1 at: 2) * (((self basicAt: 2 at: 1)*(self basicAt: 3 at: 3)) - ((self basicAt: 3 at: 1)*(self basicAt: 2 at: 3)))) +
		  ((self basicAt: 1 at: 3) * (((self basicAt: 2 at: 1)*(self basicAt: 3 at: 2)) - ((self basicAt: 3 at: 1)*(self basicAt: 2 at: 2)))) ].

	self order = (2@2) ifTrue: [
		^((self basicAt: 1 at: 1)*(self basicAt: 2 at: 2)) - ((self basicAt: 1 at: 2)*(self basicAt: 2 at: 1)) ].

	self order = (1@1) ifTrue: [ ^self basicAt: 1 at: 1 ].

	"General case"

	^(1 to: self columnCount) inject: 0 into: [ :tot :c | tot + ((self basicAt: 1 at: c) * (self cofactor: 1@c)) ]!

determinantByLuDecomposition
	"Answer the determinant of a matrix.  In this case the LU decomposition is computed and then the elements
	on the main diagonal are multiplied together, starting with the row interchange parity (either 1 or -1), which
	yields the determinant."

	| lu prod |

	lu := self luForm.
	prod := self luForm rowInterchangeSign.

	1 to: lu rowCount do: [ :i |
		(lu at: i at: i) <= lu comparisonTolerance ifTrue: [ ^0 ].
		prod := prod * (lu at: i at: i) asFraction ].

	^prod!

displayString
	| s |

	s := String lineDelimiter.

	self rowsDo:
		[ :aRowMatrix |
		s := s, aRowMatrix values displayString, String lineDelimiter ].
	^s!

hash
	^self rowCount * self columnCount!

initialize: aPoint
	self order: aPoint!

initializeWith: aDiadicBlock
	1 to: self rowCount do: [ :r |
		1 to: self columnCount do: [ :c |
			self basicAt: r at: c put: (aDiadicBlock value: r value: c) ] ]!

inject: initialValue into: dyadicValuableOperation
	"Evaluate the <dyadicValuable> argument, operation, once for each element in the receiver, with
	that element as the second argument; and with the first argument as the value of the previous 
	evaluation, starting with the <Object> argument, initialValue. The operation must answer the value
	it wishes to have passed as its first argument the next time it is evaluated. The traversal is in the #do: 
	order. Answer the final value of the operation.
	This enumeration is particularly useful for performing summations and other statistical operations."

	| nextValue |
	nextValue := initialValue.
	self values do: [:each | nextValue := dyadicValuableOperation value: nextValue value: each].
	^nextValue!

inverse
	self isSquare
		ifTrue: [ ^self invertByDecompositionAndBackSubstitution ]
		ifFalse: [ NonSquareMatrixError signal: 'Cannot find the inverse of a non-square matrix ' ]!

invertByCofactors
	| determinant |
	(determinant := self determinantByCofactors) = 0 ifTrue: [ SingularMatrixError signal ].
	^self adjoint * (1 / determinant)!

invertByDecompositionAndBackSubstitution
	| lu inverse col |

	self isSingular ifTrue: [ SingularMatrixError signal ].
	lu := self luForm.
	inverse := self class identity: self rowCount.
	1 to: lu columnCount do: [ :c |
		inverse column: c put: (lu backSubstitute: (inverse columnVector: c)) ].
	^inverse!

isSingular
	"Determine if this matrix is singular.  Commonly this would be done by testing to see if the determinant is
	zero, but this presents problems if the determinant calculation overflows the numeric type used (floating-
	point numbers are prone to this for large matrices).  To get around this we note that the determinant of a
	matrix can be computed by multiplying the values on the major diagonal of the LU decomposition of the
	original matrix, and that the results of this multiplication can only be zero (and thus the original matrix
	can only be singular) if one of the elements on the diagonal of the LU decomposed matrix is zero.  Although
	we can (and in fact do) work around the floating-point overflow problem, this method of determining if a
	matrix is singular replaces multiplications with comparisons, which should be less time-consuming."

	| lu |

	[ lu := self luForm ] on: SingularMatrixError do: [ :e | ^true ].
	1 to: lu rowCount do: [ :i |
		(lu basicAt: i at: i) abs <= self comparisonTolerance
			ifTrue: [ ^true ] ].
	^false!

isSquare
	^self rowCount = self columnCount!

isSymmetric
	self isSquare
		ifTrue:
			[ 1 to: self rowCount do:
				[ :i |
				1 to: self columnCount do:
					[ :j |
					(self at: i at: j) ~= (self at: j at: i)
						ifTrue: [ ^false ] ] ].
			^true ]
		ifFalse: [ NonSquareMatrixError signal: 'Unable to determine symmetricity of a non-square matrix' ]!

luForm
	luForm isNil ifTrue: [ luForm := LuMatrix from: self ].
	^luForm!

luForm: aMatrix
	luForm := aMatrix!

minor: aPoint
	^(self subMatrix: aPoint) determinantByCofactors!

multipliedByScalar: aNumber
	| result |

	result := self class new: self order.
	1 to: self values size do: [ :i | result values at: i put: (self values at: i) * aNumber ].
	^result
!

multiplyByFloat: aFloat
	^self multipliedByScalar: aFloat!

multiplyByFraction: aFraction
	^self multipliedByScalar: aFraction!

multiplyByInteger: aInteger
	^self multipliedByScalar: aInteger!

multiplyByScaledDecimal: aScaledDecimal
	^self multipliedByScalar: aScaledDecimal!

multiplyMatrix: aMatrix
	"Private - Answer the result of multiplying aMatrix by self."

	| result |

	aMatrix columnCount = self rowCount ifFalse: [ IncompatibleMatrixError signal ].

	result := self class new: aMatrix rowCount @ self columnCount.

	1 to: aMatrix rowCount do: [ :r |
		1 to: self columnCount do: [ :c |
			result basicAt: r at: c put: ((aMatrix rowVector: r) dotProduct: (self columnVector: c)) ] ].
	^result!

multiplyRow: anInteger by: aScalar
	"Type 2 elementary row op- multiply a row by a scalar."

	aScalar = 0 ifTrue: [ MatrixError signal: 'Scalar must not be zero' ].
	1 to: self columnCount do: [ :c | self basicAt: anInteger at: c put: (self basicAt: anInteger at: c) * aScalar ]!

multiplyRow: firstRowIndex by: aScalar andAddTo: secondRowIndex
	"Type3 elementary row operation."

	| vec |

	vec := (((self row: firstRowIndex) * aScalar) + (self row: secondRowIndex)) asVector.
	self row: secondRowIndex put: vec!

multiplyVector: aVector 
	"only works for 4x4 matrix * aVector"
	|transformedVertex|
	transformedVertex := Vector new: 4.
	transformedVertex at: 1 put: ((self at: (1@1)) * aVector x ) + ((self at: (1@2)) * aVector y) + ((self at: (1@3)) * aVector z) + ((self at: (1@4)) * (aVector at: 4)).
	transformedVertex at: 2 put: ((self at: (2@1)) * aVector x ) + ((self at: (2@2)) * aVector y) + ((self at: (2@3)) * aVector z) + ((self at: (2@4)) * (aVector at: 4)).
	transformedVertex at: 3 put: ((self at: (3@1)) * aVector x ) + ((self at: (3@2)) * aVector y) + ((self at: (3@3)) * aVector z) + ((self at: (3@4)) * (aVector at: 4)).
	transformedVertex at: 4 put: ((self at: (4@1)) * aVector x ) + ((self at: (4@2)) * aVector y) + ((self at: (4@3)) * aVector z) + ((self at: (4@4)) * (aVector at: 4)).
	^transformedVertex!

negated
	^self * -1!

order
	^order!

order: aPoint
	order := aPoint.
	self values: (Array new: aPoint x * aPoint y)!

printString
	^super printString, self displayString!

rotate: degrees x: x y: y z: z
	| unitVector |
	unitVector := (x squared + y squared + z squared) sqrt.
	^self * (Matrix
				rotationFor: degrees
				x: x / unitVector
				y: y / unitVector
				z: z / unitVector)!

rotateOverXAxisBy: angle
	^self * (Matrix rotationOverXAxisFor: angle)!

rotateOverYAxisBy: angle
	^self * (Matrix rotationOverYAxisFor: angle)!

rotateOverZAxisBy: angle
	^self * (Matrix rotationOverZAxisFor: angle)!

row: anInteger
	"Answer a single-row Matrix containing only the data from the 'anInteger'th row of this Matrix"

	| data |

	(anInteger < 1) | (anInteger > self rowCount) ifTrue: [ MatrixError signal: 'Index out of range' ].

	data := Array new: self columnCount.
	1 to: self columnCount do: [ :i | data at: i put: (self basicAt: anInteger at: i) ].
	^self class new: 1 @ self columnCount from: data!

row: anInteger put: aVector
	"Replace the data in row 'anInteger' with values from aVector."

	aVector order ~= self columnCount ifTrue: [ MatrixError signal: 'Vector not compatible with this matrix' ].

	1 to: aVector order do: [ :i | self basicAt: anInteger at: i put: (aVector at: i) ]!

rowCount
	^self order x!

rowsDo: aMonadicValuable
"	1 to: self rows do:
		[ :i |
		aMonadicValuable value: (self row: i) ]"

	self rowVectors do:
		[ :aRow |
		aMonadicValuable value: aRow ]!

rowVector: anInteger
	^(self row: anInteger) asVector!

rowVectors
	^((1 to: self rowCount) collect: [ :i | self rowVector: i ]) asArray!

scaleByVector: aVector
	^self * (Matrix scalingFor: aVector)!

solveFor: aVector
	"Assuming that this matrix is a matrix of coefficients (A) for a system of linear equations of the form

			A * X = B

	and aVector is the solution vector B, solve for X.  Answers the vector X which satisfies the
	satisfies the given system of linear equations."

	^self luForm backSubstitute: aVector!

subMatrix: aPoint
	| retval retRow retCol |

	retval := self class new: (self rowCount-1)@(self columnCount-1).
	retRow := 1.
	retCol := 1.

	1 to: self rowCount do: [ :r |
		r ~= aPoint x ifTrue: [
			1 to: self columnCount do: [ :c |
				c ~= aPoint y ifTrue: [
					retval basicAt: retRow at: retCol put: (self basicAt: r at: c).
					retCol := retCol + 1 ] ].
			retRow := retRow + 1 ].
		retCol := 1 ].
	^retval!

swapRow: firstRowIndex withRow: secondRowIndex
	"Type 1 elementary row op - swap rows."

	| firstRow |

	(firstRowIndex > 0) & (firstRowIndex <= self rowCount) & (secondRowIndex <= self rowCount) & (secondRowIndex > 0)
		ifFalse: [ BoundsError signal ].

	firstRow := self rowVector: firstRowIndex.
	1 to: self columnCount do: [ :c |
		self basicAt: firstRowIndex at: c put: (self basicAt: secondRowIndex at: c).
		self basicAt: secondRowIndex at: c put: (firstRow at: c) ]!

translate: aVec4
	self at: 1@4 put: (self at: 1@4) + aVec4 x.
	self at: 2@4 put: (self at: 2@4) + aVec4 y.
	self at: 3@4 put: (self at: 3@4) + aVec4 z.
	self at: 4@4 put: (self at: 4@4) + (aVec4 at: 4).
	^self!

transpose
	| mat |

	mat := self class new: self columnCount@self rowCount.

	1 to: self rowCount do: [ :r |
		1 to: self columnCount do: [ :c |
			mat basicAt: c at: r put: (self basicAt: r at: c) ] ].
	^mat!

validate: aPoint
	(aPoint x <= 0) | (aPoint x > self rowCount) | (aPoint y <= 0) | (aPoint y > self columnCount) ifTrue: [
		MatrixError signal: 'Index out of range' ]!

values
	^values!

values: anArray
	values := anArray.
	self clearLuForm! !

!Matrix categoriesForMethods!
-!arithmetic!public! !
*!arithmetic!public! !
+!arithmetic!public! !
=!comparing!public! !
adjoint!cofactors!operations!public! !
asFloatArray!converting!public! !
asVector!converting!public! !
at:!accessing!public! !
at:at:!accessing!public! !
at:at:put:!accessing!public! !
at:put:!accessing!public! !
basicAt:at:!helpers!private! !
basicAt:at:put:!helpers!private! !
clearLuForm!private! !
cofactor:!cofactors!operations!public! !
column:!accessing!public! !
column:put:!accessing!public! !
columnCount!accessing!public! !
columnsDo:!public! !
columnVector:!accessing!public! !
columnVectors!public! !
comparisonTolerance!accessing!public! !
comparisonTolerance:!accessing!public! !
determinant!operations!public! !
determinantByCofactors!helpers!private! !
determinantByLuDecomposition!helpers!private! !
displayString!public! !
hash!comparing!public! !
initialize:!initializing!private! !
initializeWith:!initializing!private! !
inject:into:!public! !
inverse!operations!public! !
invertByCofactors!helpers!private! !
invertByDecompositionAndBackSubstitution!helpers!private! !
isSingular!public!testing! !
isSquare!public!testing! !
isSymmetric!public! !
luForm!accessing!public! !
luForm:!accessing!private! !
minor:!cofactors!public! !
multipliedByScalar:!double dispatch!private! !
multiplyByFloat:!double dispatch!private! !
multiplyByFraction:!double dispatch!private! !
multiplyByInteger:!double dispatch!private! !
multiplyByScaledDecimal:!double dispatch!private! !
multiplyMatrix:!double dispatch!private! !
multiplyRow:by:!elementary row operations!public! !
multiplyRow:by:andAddTo:!elementary row operations!public! !
multiplyVector:!public! !
negated!arithmetic!operations!public! !
order!accessing!public! !
order:!accessing!private! !
printString!public! !
rotate:x:y:z:!operations!public! !
rotateOverXAxisBy:!operations!public! !
rotateOverYAxisBy:!operations!public! !
rotateOverZAxisBy:!operations!public! !
row:!accessing!public! !
row:put:!accessing!public! !
rowCount!accessing!public! !
rowsDo:!public! !
rowVector:!accessing!public! !
rowVectors!public! !
scaleByVector:!operations!public! !
solveFor:!operations!public! !
subMatrix:!cofactors!public! !
swapRow:withRow:!elementary row operations!public! !
translate:!public! !
transpose!operations!public! !
validate:!helpers!private! !
values!accessing!private! !
values:!accessing!private! !
!

!Matrix class methodsFor!

defaultComparisonTolerance
	^0!

hilbert: anInteger
	"Answer a Hilbert matrix of order 'anInteger@anInteger'."

	^self new: anInteger@anInteger initializeWith: [ :r :c | 1 / (r + c - 1) ]!

identity: anInteger
	"Answer an identity matrix of order 'anInteger@anInteger'."

	| mat |

	mat := self zero: anInteger@anInteger.
	1 to: anInteger do: [ :i | mat at: i at: i put: 1 ].
	^mat!

new: aPoint
	^self new initialize: aPoint!

new: aPoint from: anArray
	| result |

	"Verify that enough data is supplied to initialize the matrix."

	anArray size = (aPoint x * aPoint y) ifFalse: [ MatrixError signal: 'Initialization array wrong size' ].

	result := self new: aPoint.
	result values: anArray deepCopy.
	^result!

new: aPoint initializeWith: aDiadicBlock
	| result |

	result := self new: aPoint.
	result initializeWith: aDiadicBlock.
	^result!

newSquare: anInteger
	"Answer a square matrix of order 'anInteger@anInteger'."

	^self new: anInteger@anInteger!

ones: aPoint
	"Answer a matrix of order 'aPoint' filled with ones."

	^self new: aPoint from: ((Array new: aPoint x * aPoint y) atAllPut: 1)!

perspectiveFor: degrees aspectRatio: aspectRatio nearPlane: nearPlane farPlane: farPlane
	| tanHalfAngle |
	tanHalfAngle := (degrees degreesToRadians / 2) tan.
	^(Matrix identity: 4)
		at: 1 @ 1 put: 1 / (aspectRatio * tanHalfAngle);
		at: 2 @ 2 put: 1 / tanHalfAngle;
		at: 3 @ 3 put: (farPlane + nearPlane) negated / (farPlane - nearPlane);
		at: 4 @ 3 put: -1;
		at: 3 @ 4 put: (2 * farPlane * nearPlane) negated / (farPlane - nearPlane)!

rotationOver: aVector by: anInteger 
	| unitVector x y z sin cos tan |
	unitVector := (aVector x squared + aVector y squared + aVector z squared) sqrt.
	x := aVector x / unitVector.
	y := aVector y / unitVector.
	z := aVector z / unitVector.
	sin := anInteger degreesToRadians sin.
	cos := anInteger degreesToRadians cos.
	tan := 1.0 - cos.
	^(Matrix identity: 4)
		at: 1 @ 1 put: cos + (x squared * tan);
		at: 1 @ 2 put: x * y * tan - (z * sin);
		at: 1 @ 3 put: x * z * tan + (y * sin);
		at: 2 @ 1 put: y * x * tan + (z * sin);
		at: 2 @ 2 put: cos + (y squared * tan);
		at: 2 @ 3 put: y * z * tan - (x * sin);
		at: 3 @ 1 put: z * x * tan - (y * sin);
		at: 3 @ 2 put: z * y * tan + (x * sin);
		at: 3 @ 3 put: cos + (z squared * tan)!

rotationOverX: x y: y z: z by: anInteger
	^self
		rotationOver: (Vector from: (Array
						with: x
						with: y
						with: z
						with: 0.00))
		by: anInteger!

rotationOverXAxisFor: degrees
	| angle |
	angle := degrees degreesToRadians.
	^(Matrix identity: 4)
		at: 2 @ 2 put: angle cos;
		at: 2 @ 3 put: angle sin negated;
		at: 3 @ 2 put: angle sin;
		at: 3 @ 3 put: angle cos!

rotationOverYAxisFor: degrees
	| angle |
	angle := degrees degreesToRadians.
	^(Matrix identity: 4)
		at: 1 @ 1 put: angle cos;
		at: 1 @ 3 put: angle sin;
		at: 3 @ 1 put: angle sin negated;
		at: 3 @ 3 put: angle cos!

rotationOverZAxisFor: degrees
	| angle |
	angle := degrees degreesToRadians.
	^(Matrix identity: 4)
		at: 1 @ 1 put: angle cos;
		at: 1 @ 2 put: angle sin negated;
		at: 2 @ 1 put: angle sin;
		at: 2 @ 2 put: angle cos!

scalingFor: aVector
	^(Matrix identity: 4)
		at: 1 @ 1 put: aVector x;
		at: 2 @ 2 put: aVector y;
		at: 3 @ 3 put: aVector z!

translationFor: aVector
	^(Matrix identity: 4) translate: aVector!

zero: aPoint
	"Answer a zero matrix of order 'aPoint'."

	^self new: aPoint from: ((Array new: aPoint x * aPoint y) atAllPut: 0)!

zeroSquare: anInteger
	"Answer a square matrix of order 'anInteger@anInteger' filled with zeros."

	^self zero: anInteger@anInteger! !

!Matrix class categoriesForMethods!
defaultComparisonTolerance!accessing!private! !
hilbert:!instance creation!public! !
identity:!instance creation!public! !
new:!instance creation!public! !
new:from:!instance creation!public! !
new:initializeWith:!instance creation!public! !
newSquare:!instance creation!public! !
ones:!instance creation!public! !
perspectiveFor:aspectRatio:nearPlane:farPlane:!public! !
rotationOver:by:!instance creation!public! !
rotationOverX:y:z:by:!instance creation!public! !
rotationOverXAxisFor:!instance creation!public! !
rotationOverYAxisFor:!instance creation!public! !
rotationOverZAxisFor:!instance creation!public! !
scalingFor:!public! !
translationFor:!public! !
zero:!instance creation!public! !
zeroSquare:!instance creation!public! !
!

