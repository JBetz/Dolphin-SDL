"Filed out from Dolphin Smalltalk"!

Object subclass: #DrawData
	instanceVariableNames: 'vertices indices vertexOffset indexOffset texture'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawData guid: (GUID fromString: '{cb22c15a-d907-4b03-8084-8e8334868b7f}')!

DrawData comment: ''!

!DrawData categoriesForClass!Kernel-Objects! !

!DrawData methodsFor!

indexOffset
	^indexOffset!

indexOffset: anObject
	indexOffset := anObject!

indices
	^indices!

indices: anObject
	indices := anObject!

initialize
	super initialize.
	vertices := OrderedCollection new.
	indices := OrderedCollection new!

merge: aDrawData
	vertices addAll: aDrawData vertices.
	indices addAll: aDrawData indices.
	texture := aDrawData texture!

texture
	^texture!

texture: anObject
	texture := anObject!

vertexOffset
	^vertexOffset!

vertexOffset: anObject
	vertexOffset := anObject!

vertices
	^vertices!

vertices: anObject
	vertices := anObject! !

!DrawData categoriesForMethods!
indexOffset!accessing!public! !
indexOffset:!accessing!public! !
indices!accessing!public! !
indices:!accessing!public! !
initialize!public! !
merge:!public! !
texture!accessing!private! !
texture:!accessing!public! !
vertexOffset!accessing!private! !
vertexOffset:!accessing!private! !
vertices!accessing!private! !
vertices:!accessing!public! !
!

!DrawData class methodsFor!

new
	^super new initialize!

vertices: vertices indices: indices
	^super new
		vertices: vertices;
		indices: indices!

vertices: vertices indices: indices texture: texture
	^super new
		vertices: vertices;
		indices: indices;
		texture: texture! !

!DrawData class categoriesForMethods!
new!public! !
vertices:indices:!public! !
vertices:indices:texture:!public! !
!

