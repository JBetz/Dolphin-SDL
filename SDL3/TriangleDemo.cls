"Filed out from Dolphin Smalltalk"!

Application subclass: #TriangleDemo
	instanceVariableNames: 'vertices'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TriangleDemo guid: (GUID fromString: '{e816e12f-5eee-4b81-bcd7-8924fad3b7f7}')!

TriangleDemo comment: ''!

!TriangleDemo categoriesForClass!Kernel-Objects! !

!TriangleDemo methodsFor!

initialize
	super initialize.
	self initializeVertices!

initializeVertices
	| vertex1 vertex2 vertex3 |
	vertex1 := SDL_Vertex new
				position: (400 @ 150) asSDLFPoint;
				color: Color red asSDLFColor.
	vertex2 := SDL_Vertex new
				position: (200 @ 450) asSDLFPoint;
				color: Color blue asSDLFColor.
	vertex3 := SDL_Vertex new
				position: (600 @ 450) asSDLFPoint;
				color: Color green asSDLFColor.
	vertices := Array
				with: vertex1
				with: vertex2
				with: vertex3!

update
	renderer
		setDrawColor: Color black;
		clear;
		fillTriangle: vertices zIndex: 1;
		flush;
		present! !

!TriangleDemo categoriesForMethods!
initialize!public! !
initializeVertices!private! !
update!public! !
!

!TriangleDemo class methodsFor!

preferredExtent
	^800 @ 600! !

!TriangleDemo class categoriesForMethods!
preferredExtent!public! !
!

