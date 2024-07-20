"Filed out from Dolphin Smalltalk"!

Application subclass: #QuadrilateralDemo
	instanceVariableNames: 'vertices'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

QuadrilateralDemo guid: (GUID fromString: '{5aec3990-13e7-4c92-a4e4-4644a1193649}')!

QuadrilateralDemo comment: ''!

!QuadrilateralDemo categoriesForClass!Kernel-Objects! !

!QuadrilateralDemo methodsFor!

initialize
	super initialize.
	self initializeVertices!

initializeVertices
	vertices := OrderedCollection new.
	vertices
		add: (SDL_Vertex new
					position: (100 @ 400) asSDLFPoint;
					color: Color white asSDLFColor);
		add: (SDL_Vertex new
					position: (200 @ 200) asSDLFPoint;
					color: Color blue asSDLFColor);
		add: (SDL_Vertex new
					position: (600 @ 200) asSDLFPoint;
					color: Color blue asSDLFColor);
		add: (SDL_Vertex new
					position: (700 @ 400) asSDLFPoint;
					color: Color white asSDLFColor)!

update
	renderer
		setDrawColor: Color black;
		clear;
		fillQuadrilateral: vertices zIndex: 1;
		flush;
		present! !

!QuadrilateralDemo categoriesForMethods!
initialize!public! !
initializeVertices!private! !
update!public! !
!

!QuadrilateralDemo class methodsFor!

preferredExtent
	^800 @ 600! !

!QuadrilateralDemo class categoriesForMethods!
preferredExtent!public! !
!

