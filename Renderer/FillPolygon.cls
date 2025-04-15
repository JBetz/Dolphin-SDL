"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #FillPolygon
	instanceVariableNames: 'vertices indices'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

FillPolygon guid: (GUID fromString: '{c0e7715d-668a-4253-a0aa-c1448f0af2eb}')!

FillPolygon comment: ''!

!FillPolygon categoriesForClass!Kernel-Objects! !

!FillPolygon methodsFor!

applyOffset: aPoint
	vertices do: 
			[:each |
			each
				x: each x + aPoint x;
				y: each y + aPoint y]!

indices
	^indices!

indices: anArrayOfIntegers
	indices := anArrayOfIntegers!

vertices
	^vertices!

vertices: anArrayOfVertices
	vertices := anArrayOfVertices! !

!FillPolygon categoriesForMethods!
applyOffset:!public! !
indices!public! !
indices:!public! !
vertices!public! !
vertices:!public! !
!

