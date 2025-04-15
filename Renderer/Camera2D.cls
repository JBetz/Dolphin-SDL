"Filed out from Dolphin Smalltalk"!

Camera subclass: #Camera2D
	instanceVariableNames: 'offset target rotation zoom'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Camera2D guid: (GUID fromString: '{e94ddf3d-58ef-4bed-9372-840519e9daaf}')!

Camera2D comment: ''!

!Camera2D categoriesForClass!Kernel-Objects! !

!Camera2D methodsFor!

initialize
	super initialize.
	offset := 0@0.
	target := 0@0.
	rotation := 0.
	zoom := 1.0!

matrix
	| originMatrix rotationMatrix scaleMatrix translationMatrix |
	originMatrix := Matrix translationFor: (Vector from: {target x negated. target y negated. 0. 0}).
	rotationMatrix := Matrix rotationOver: (Vector from: {0. 0. 1}) by: rotation.
	scaleMatrix := Matrix scalingFor: (Vector from: {zoom. zoom. 0}).
	translationMatrix := Matrix translationFor: (Vector from: {offset x. offset y. 0. 0}).
	^translationMatrix * rotationMatrix * scaleMatrix * originMatrix!

offset
	^offset!

offset: aPoint
	offset := aPoint!

rotation
	^rotation!

rotation: anInteger 
	rotation := anInteger!

target
	^target!

target: aPoint 
	target := aPoint!

zoom
	^zoom!

zoom: aFloat 
	zoom := aFloat! !

!Camera2D categoriesForMethods!
initialize!public! !
matrix!public! !
offset!public! !
offset:!public! !
rotation!public! !
rotation:!public! !
target!public! !
target:!public! !
zoom!public! !
zoom:!public! !
!

