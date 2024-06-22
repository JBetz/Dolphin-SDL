"Filed out from Dolphin Smalltalk"!

RenderCommand subclass: #DrawLine
	instanceVariableNames: 'start end color width'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawLine guid: (GUID fromString: '{fd5096a2-6069-41e3-96a8-ad80448a7a92}')!

DrawLine comment: ''!

!DrawLine categoriesForClass!Kernel-Objects! !

!DrawLine methodsFor!

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

start
	^start!

start: anObject
	start := anObject!

width
	^width!

width: anObject
	width := anObject! !

!DrawLine categoriesForMethods!
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
end!accessing!public! !
end:!accessing!public! !
start!accessing!public! !
start:!accessing!public! !
width!accessing!public! !
width:!accessing!public! !
!

