"Filed out from Dolphin Smalltalk"!

Matrix subclass: #LuMatrix
	instanceVariableNames: 'sourceMatrix rowInterchangeSign rowPermutations'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

LuMatrix guid: (GUID fromString: '{ee9007b2-381a-40b2-848e-cf848b757bad}')!

LuMatrix comment: 'A matrix produced by the lower-upper decomposition of another matrix.'!

!LuMatrix categoriesForClass!Unclassified! !

!LuMatrix methodsFor!

backSubstitute: aColumnVector
	"Perform forward and backward substitution to solve a series of linear equations of the form

		A * X = B

	This routine assumes that this matrix is in LU decomposed form and that 'aColumnVector'
	contains the right-hand side vector of the above equation.  Answers the resulting column
	vector.  NOTE:  this algorithm is from 'Numerical Recipes' by Press, Flannery, Teukolsky,
	and Vetterling ((c) 1986 Cambridge University Press).  Note that in this version the input
	column vector (aColumnVector) is not altered."

	| b n ip ii sum |

	self isSquare ifFalse: [ MatrixError signal: 'Matrix must be square' ].
	self sourceMatrix isSingular ifTrue: [ SingularMatrixError signal: 'Matrix is singular' ].
	aColumnVector order = self rowCount ifFalse: [ IncompatibleVectorError signal: 'Vector size must match matrix' ].

	b := aColumnVector deepCopy.
	n := self rowCount.

	ii := 0.
	1 to: n do: [ :i |
		ip := (rowPermutations at: i).
		sum := b at: ip.
		b at: ip put: (b at: i).
		ii ~= 0
			ifTrue: [
				ii to: i-1 do: [ :j |
					sum := sum - ((self basicAt: i at: j) * (b at: j)) ] ]
			ifFalse: [
				sum ~= 0 ifTrue: [
					ii := i ] ].
		b at: i put: sum ].

	n to: 1 by: -1 do: [ :i |
		sum := b at: i.
		i < n ifTrue: [
			i+1 to: n do: [ :j |
				sum := sum - ((self basicAt: i at: j) * (b at: j)) ] ].
		b at: i put: sum / (self basicAt: i at: i) ].

	^b!

basicLuDecomposition
	"Replace this matrix with its LU decomposition.  NOTE:  this algorithm is from 'Numerical Recipes'
	by Press, Flannery, Teukolsky, and Vetterling ((c) 1986 Cambridge University Press).  In this version
	singular matrices are dealt with by returning what we've computed so far, with a zero placed
	strategically upon the major diagonal to ensure that the product of the major diagonal (and thus the
	determinant of the source matrix) is zero."

	[ | maxElement "currElement" scalingFactors sum nRows dum maxIndex |

	self isSquare
		ifFalse: [ NonSquareMatrixError signal: 'Matrix must be square' ].

	nRows := self rowCount.
	scalingFactors := Array new: nRows.									"Stores the implicit scaling of each row"
	rowPermutations := Array new: nRows.

	rowInterchangeSign := 1.												"No row interchanges yet"

	1 to: nRows do:															"Loop over rows to get the implicit scaling information"
		[ :row |
		maxElement := (self row: row) inject: 0 into:
			[ :max :n |
			(n abs > max)
				ifTrue: [ n abs ]
				ifFalse: [ max ] ].
		
		maxElement abs <= self comparisonTolerance						"No non-zero largest element"
			ifTrue:
				[ SingularMatrixError signal: 'Largest element = 0' ].
		scalingFactors at: row put: 1 / maxElement ].							"Save the scaling"

	1 to: nRows do:														"This is the loop over columns of Crout's method"
		[ :j |
		1 to: j-1 do:
			[ :i |
			sum := self basicAt: i at: j.
			1 to: i-1 do:
				[ :k |
				sum := sum - ((self basicAt: i at: k) * (self basicAt: k at: j)) ].
			self basicAt: i at: j put: sum ].
		maxElement := 0.													"Initialize for the search for largest pivot element"
		j to: nRows do:
			[ :i |
			sum := self basicAt: i at: j.
			1 to: j-1 do:
				[ :k |
				sum := sum - ((self basicAt: i at: k) * (self basicAt: k at: j)) ].
			self basicAt: i at: j put: sum.
			dum := (scalingFactors at: i) * sum abs.							"Figure of merit for the pivot"
			dum > maxElement												"Is it better than the best so far?"
				ifTrue:
					[ maxElement := dum.
					maxIndex := i ] ].
		j ~= maxIndex														"Do we need to interchange rows?"
			ifTrue:
				[ self swapRow: j withRow: maxIndex.							"Yes, do so..."
				rowInterchangeSign := rowInterchangeSign * -1.				"...and change the sign of rowInterchangeSign."
				scalingFactors at: maxIndex put: (scalingFactors at: j) ].		"...and interchange the scale factor."
		rowPermutations at: j put: maxIndex.
		(self basicAt: j at: j) abs <= self comparisonTolerance					"If the pivot element is zero the"
			ifTrue:															"matrix is singular."
				[ SingularMatrixError signal: 'Pivot element is zero' ].
		j ~= nRows															"Now, finally divide by the pivot element"
			ifTrue:
				[ dum := 1 / (self basicAt: j at: j).
				j+1 to: nRows do:
					[ :i |
					self basicAt: i at: j put: (self basicAt: i at: j) * dum ] ] ] ]
		on: SingularMatrixError do: [ :e | self basicAt: 1 at: 1 put: 0.
									^self ]!

rowInterchangeSign
	^rowInterchangeSign!

sourceMatrix
	^sourceMatrix!

sourceMatrix: aMatrix
	sourceMatrix := aMatrix! !

!LuMatrix categoriesForMethods!
backSubstitute:!operations!public! !
basicLuDecomposition!operations!private! !
rowInterchangeSign!accessing!public! !
sourceMatrix!accessing!public! !
sourceMatrix:!accessing!public! !
!

!LuMatrix class methodsFor!

from: aMatrix
	"Create and answer the LU-decomposed form of the source matrix."

	| mat |
	mat := self new: aMatrix order from: aMatrix values.
	mat sourceMatrix: aMatrix.
	mat comparisonTolerance: aMatrix comparisonTolerance.
	^mat basicLuDecomposition! !

!LuMatrix class categoriesForMethods!
from:!instance creation!public! !
!

