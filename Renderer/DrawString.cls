"Filed out from Dolphin Smalltalk"!

DrawCommand subclass: #DrawString
	instanceVariableNames: 'color font rectangle fontSize fontStyle format string'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

DrawString guid: (GUID fromString: '{3bd8bdbd-fd9a-400b-b677-a972c22853c6}')!

DrawString comment: ''!

!DrawString categoriesForClass!Kernel-Objects! !

!DrawString methodsFor!

applyClip: aRectangle 
	rectangle := rectangle intersect: aRectangle!

applyOffset: aPoint
	rectangle := rectangle moveBy: aPoint!

color
	^color!

color: anObject
	color := anObject!

font
	^font!

font: anObject
	font := anObject!

fontSize
	^fontSize!

fontSize: anInteger
	fontSize := anInteger!

fontStyle
	^fontStyle!

fontStyle: anObject
	fontStyle := anObject!

format
	^format!

format: anObject
	format := anObject!

indices
	string isEmpty ifNil: [^#()].
	^self drawData indices!

initialize
	super initialize.
	color := Color black!

rectangle
	^rectangle!

rectangle: anObject
	rectangle := anObject!

scaledBy: aFloat 
	rectangle := rectangle scaledBy: aFloat center: rectangle center !

string
	^string!

string: anObject
	string := anObject! !

!DrawString categoriesForMethods!
applyClip:!public! !
applyOffset:!public! !
color!accessing!public! !
color:!accessing!public! !
font!accessing!public! !
font:!accessing!public! !
fontSize!accessing!public! !
fontSize:!public! !
fontStyle!accessing!public! !
fontStyle:!accessing!public! !
format!accessing!public! !
format:!accessing!public! !
indices!public! !
initialize!public! !
rectangle!accessing!public! !
rectangle:!accessing!public! !
scaledBy:!public! !
string!accessing!public! !
string:!accessing!public! !
!

