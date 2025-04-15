"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #DrawLine
	instanceVariableNames: 'start end color width'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawLine guid: (GUID fromString: '{fd5096a2-6069-41e3-96a8-ad80448a7a92}')!

DrawLine comment: ''!

!DrawLine categoriesForClass!Kernel-Objects! !

!DrawLine methodsFor!

applyClip: aRectangle
	start := start max: aRectangle origin.
	end := end min: aRectangle corner!

applyOffset: aPoint
	start := start + aPoint.
	end := end + aPoint!

color
	^color!

color: anObject
	color := anObject!

end
	^end!

end: anObject
	end := anObject!

initialize 
	super initialize.
	color := Color black.
	width := 1!

offset
	| length normal perpendicular |
	length := start dist: end.
	normal := (end - start) / length.
	perpendicular := normal y negated @ normal x.
	^perpendicular * width!

start
	^start!

start: anObject
	start := anObject!

width
	^width!

width: anObject
	width := anObject! !

!DrawLine categoriesForMethods!
applyClip:!public! !
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
end!accessing!public! !
end:!accessing!public! !
initialize!public! !
offset!public! !
start!accessing!public! !
start:!accessing!public! !
width!accessing!public! !
width:!accessing!public! !
!

