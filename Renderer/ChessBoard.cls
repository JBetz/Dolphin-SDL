"Filed out from Dolphin Smalltalk"!

Application subclass: #ChessBoard
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

ChessBoard guid: (GUID fromString: '{ac1611be-2cfe-4a87-a1f7-dc682c51565d}')!

ChessBoard comment: ''!

!ChessBoard categoriesForClass!Kernel-Objects! !

!ChessBoard methodsFor!

drawOn: aCanvas
	0 to: 7
		do: 
			[:row |
			| y rowColor |
			y := row * 135.
			rowColor := row even.
			0 to: 7
				do: 
					[:col |
					| x |
					x := col * 135.
					aCanvas
						fillRectangle: (Rectangle origin: x @ y extent: 135 @ 135)
						color: (rowColor ifTrue: [Color white] ifFalse: [Color black])
						zIndex: 1.
					rowColor := rowColor not]]!

onCreated
	super onCreated.
	isReady := true! !

!ChessBoard categoriesForMethods!
drawOn:!private! !
onCreated!public! !
!

