"Filed out from Dolphin Smalltalk"!

Application subclass: #SimpleExample
	instanceVariableNames: 'triangleVertices'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SimpleExample guid: (GUID fromString: '{e816e12f-5eee-4b81-bcd7-8924fad3b7f7}')!

SimpleExample comment: ''!

!SimpleExample categoriesForClass!Kernel-Objects! !

!SimpleExample methodsFor!

initialize
	super initialize.
	self initializeVertices!

initializeVertices
	triangleVertices := OrderedCollection new.
	triangleVertices
		add: (SDL_Vertex new
					position: (400 @ 150) asSDLFPoint;
					color: Color red asSDLFColor);
		add: (SDL_Vertex new
					position: (200 @ 450) asSDLFPoint;
					color: Color blue asSDLFColor);
		add: (SDL_Vertex new
					position: (600 @ 450) asSDLFPoint;
					color: Color green asSDLFColor)!

onKeyDown: aSDLKeyboardEvent
	aSDLKeyboardEvent isEscape ifTrue: [self close]!

update
	renderer
		setDrawColor: Color white;
		clear;
		fillRectangle: (Rectangle origin: 0 @ 0 extent: window extent)
			color: Color lightGray
			zIndex: 1;
		fillRectangle: ((Rectangle origin: 0 @ 0 extent: window extent) insetBy: 10)
			color: Color white
			zIndex: 1;
		drawString: mousePosition truncated displayString
			rectangle: (Rectangle origin: 20 @ 20 extent: 0 @ 0)
			zIndex: 2;
		fillTriangle: triangleVertices zIndex: 2;
		flush;
		present! !

!SimpleExample categoriesForMethods!
initialize!public! !
initializeVertices!private! !
onKeyDown:!public! !
update!public! !
!

!SimpleExample class methodsFor!

preferredExtent
	^800 @ 600! !

!SimpleExample class categoriesForMethods!
preferredExtent!public! !
!

