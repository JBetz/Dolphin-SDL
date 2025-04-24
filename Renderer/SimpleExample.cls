"Filed out from Dolphin Smalltalk"!

Application subclass: #SimpleExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

SimpleExample guid: (GUID fromString: '{3492a279-692c-4469-a58b-e9cac3085d21}')!

SimpleExample comment: ''!

!SimpleExample categoriesForClass!Kernel-Objects! !

!SimpleExample methodsFor!

drawOn: aCanvas
	aCanvas
		fillRectangle: ((Rectangle origin: 0 @ 0 extent: window extent) insetBy: 20)
			color: (Color white alpha: 180)
			zIndex: 1;
		fillTriangle: (Array
					with: (Vertex position: (window width / 2) @ 0 color: Color red)
					with: (Vertex position: 0 @ window height color: Color green)
					with: (Vertex position: window width @ window height color: Color blue))
			zIndex: 2;
		drawString: mousePosition truncated displayString
			rectangle: (Rectangle origin: 40 @ 40 extent: 0 @ 0)
			zIndex: 3
	"drawTexture: crystalTexture
		    rectangle: (Rectangle origin: 0 @ 0 extent: window extent)
		    zIndex: 1;"!

onCreated
	super onCreated.
	isReady := true! !

!SimpleExample categoriesForMethods!
drawOn:!public! !
onCreated!public! !
!

