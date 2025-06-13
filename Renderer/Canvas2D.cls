"Filed out from Dolphin Smalltalk"!

Object subclass: #Canvas2D
	instanceVariableNames: 'drawCommands offset clip textEngine'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Canvas2D guid: (GUID fromString: '{7642f313-32d3-420e-95c6-a41e9db81739}')!

Canvas2D comment: ''!

!Canvas2D categoriesForClass!Kernel-Objects! !

!Canvas2D methodsFor!

addDrawCommand: aDrawCommand
	offset ~= Point zero ifTrue: [aDrawCommand applyOffset: offset].
	clip ifNotNil: [aDrawCommand applyClip: clip].
	drawCommands enqueue: aDrawCommand priority: aDrawCommand zIndex!

addOffset: aPoint
	offset := offset + aPoint!

clip
	^clip!

drawArrowFrom: startPoint to: endPoint width: width color: color zIndex: zIndex
	| isVertical |
	isVertical := startPoint x = endPoint x.
	self
		addDrawCommand: (DrawLine new
					start: startPoint;
					end: endPoint;
					width: width;
					color: color;
					zIndex: zIndex);
		addDrawCommand: (DrawLine new
					start: endPoint;
					end: (isVertical
								ifTrue: [(endPoint x - 5) @ (endPoint y + 5)]
								ifFalse: [(endPoint x - 5) @ (endPoint y - 5)]);
					width: width;
					color: color;
					zIndex: zIndex);
		addDrawCommand: (DrawLine new
					start: endPoint;
					end: (isVertical
								ifTrue: [(endPoint x + 5) @ (endPoint y + 5)]
								ifFalse: [(endPoint x - 5) @ (endPoint y + 5)]);
					width: width;
					color: color;
					zIndex: zIndex)!

drawLineFrom: startPoint to: endPoint color: color width: width zIndex: zIndex
	self addDrawCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				color: color;
				width: width;
				zIndex: zIndex)!

drawLineFrom: startPoint to: endPoint color: color zIndex: zIndex
	self addDrawCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				color: color;
				zIndex: zIndex)!

drawLineFrom: startPoint to: endPoint width: width color: color zIndex: zIndex
	self addDrawCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				width: width;
				color: color;
				zIndex: zIndex)!

drawLineFrom: aPoint to: aPoint2 width: aFloat zIndex: anInteger
	self addDrawCommand: (DrawLine new
				start: aPoint;
				end: aPoint2;
				width: aFloat;
				zIndex: anInteger)!

drawLineFrom: startPoint to: endPoint zIndex: anInteger
	self addDrawCommand: (DrawLine new
				start: startPoint;
				end: endPoint;
				zIndex: anInteger)!

drawPoint: aPoint color: aColor zIndex: anInteger
	self addDrawCommand: (DrawPoint new
				position: aPoint;
				color: aColor;
				zIndex: anInteger)!

drawQueue
	^drawCommands copy!

drawRectangle: aRectangle
	self addDrawCommand: (DrawRectangle new rectangle: aRectangle)!

drawRectangle: aRectangle color: aColor
	self addDrawCommand: (DrawRectangle new
				rectangle: aRectangle;
				color: aColor)!

drawRectangle: aRectangle color: aColor width: anInteger zIndex: anotherInteger
	self addDrawCommand: (DrawRectangle new
				rectangle: aRectangle;
				color: aColor;
				width: anInteger;
				zIndex: anotherInteger)!

drawRectangle: aRectangle color: aColor zIndex: anInteger
	self addDrawCommand: (DrawRectangle new
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

drawString: aString rectangle: aRectangle color: aColor fontSize: anInteger zIndex: anotherInteger
	self addDrawCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				color: aColor;
				fontSize: anInteger;
				zIndex: anotherInteger)!

drawString: aString rectangle: aRectangle color: aColor zIndex: anInteger
	self addDrawCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

drawString: aString rectangle: aRectangle fontSize: anInteger zIndex: anotherInteger
	self addDrawCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				fontSize: anInteger;
				zIndex: anotherInteger)!

drawString: aString rectangle: aRectangle zIndex: anInteger
	self addDrawCommand: (DrawString new
				string: aString;
				rectangle: aRectangle;
				color: Color black;
				zIndex: anInteger)!

drawText: aTTFText rectangle: aRectangle color: aColor
	self addDrawCommand: (DrawText new
				string: aTTFText;
				rectangle: aRectangle;
				color: aColor;
				zIndex: 1)!

drawText: aTTFText rectangle: aRectangle color: aColor wrapWidth: anInteger zIndex: anotherInteger
	self addDrawCommand: (DrawText new
				text: aTTFText;
				rectangle: aRectangle;
				color: aColor;
				wrapWidth: anInteger;
				zIndex: anotherInteger)!

drawText: aTTFText rectangle: aRectangle color: aColor zIndex: anInteger
	self addDrawCommand: (DrawText new
				text: aTTFText;
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

drawTexture: aTexture rectangle: aRectangle rotation: anInteger zIndex: anotherInteger
	self addDrawCommand: (DrawTexture new
				texture: aTexture;
				rectangle: aRectangle;
				rotation: anInteger;
				zIndex: anotherInteger)!

drawTexture: aTexture rectangle: aRectangle stretch: aBoolean zIndex: anInteger
	self addDrawCommand: (DrawTexture new
				texture: aTexture;
				rectangle: aRectangle;
				stretch: aBoolean;
				zIndex: anInteger)!

drawTexture: aTexture rectangle: aRectangle zIndex: anInteger
	self addDrawCommand: (DrawTexture new
				texture: aTexture;
				rectangle: aRectangle;
				zIndex: anInteger)!

fillPolygon: anArrayOfVertices zIndex: anInteger
	self addDrawCommand: (FillPolygon new
				vertices: anArrayOfVertices;
				indices: ((0 to: anArrayOfVertices size - 1) collect: [:each | each]);
				zIndex: anInteger)!

fillQuadrilateral: anArrayOfVertices zIndex: anInteger
	self assert: [anArrayOfVertices size = 4].
	self addDrawCommand: (FillPolygon new
				vertices: anArrayOfVertices;
				indices: #(0 3 1 1 2 3);
				zIndex: anInteger)!

fillRectangle: aRectangle color: aColor zIndex: anInteger
	self addDrawCommand: (FillRectangle new
				rectangle: aRectangle;
				color: aColor;
				zIndex: anInteger)!

fillTriangle: anArrayOfVertices zIndex: anInteger
	self assert: [anArrayOfVertices size = 3].
	self addDrawCommand: (FillPolygon new
				vertices: anArrayOfVertices;
				indices: #(0 1 2);
				zIndex: anInteger)!

initialize
	super initialize.
	drawCommands := PriorityQueue new.
	offset := 0 @ 0!

offset
	^offset!

offset: aPoint
	offset := aPoint!

resetClip
	clip := nil!

subtractOffset: aPoint
	offset := offset - aPoint!

withClip: aRectangle do: aBlock
	| currentClip |
	aRectangle ifNil: [^aBlock value].
	aRectangle moveBy: offset.
	currentClip := clip.
	clip := currentClip
				ifNotNil: 
					[(currentClip intersects: aRectangle)
						ifTrue: [currentClip intersect: aRectangle]
						ifFalse: [Rectangle empty]]
				ifNil: [aRectangle].
	aBlock value.
	clip := currentClip!

withOffset: aPoint do: aBlock
	self addOffset: aPoint.
	aBlock value.
	self subtractOffset: aPoint!

withoutClipDo: aBlock
	| currentClip |
	currentClip := clip.
	clip := nil.
	aBlock value.
	clip := currentClip!

withoutOffsetDo: aBlock
	| currentOffset |
	currentOffset := offset.
	offset := 0@0.
	aBlock value.
	offset := currentOffset! !

!Canvas2D categoriesForMethods!
addDrawCommand:!private! !
addOffset:!private! !
clip!public! !
drawArrowFrom:to:width:color:zIndex:!public! !
drawLineFrom:to:color:width:zIndex:!geometry!public! !
drawLineFrom:to:color:zIndex:!geometry!public! !
drawLineFrom:to:width:color:zIndex:!geometry!public! !
drawLineFrom:to:width:zIndex:!public! !
drawLineFrom:to:zIndex:!geometry!public! !
drawPoint:color:zIndex:!geometry!public! !
drawQueue!public! !
drawRectangle:!geometry!public! !
drawRectangle:color:!geometry!public! !
drawRectangle:color:width:zIndex:!geometry!public! !
drawRectangle:color:zIndex:!geometry!public! !
drawString:rectangle:color:fontSize:zIndex:!public!text! !
drawString:rectangle:color:zIndex:!public!text! !
drawString:rectangle:fontSize:zIndex:!public!text! !
drawString:rectangle:zIndex:!public!text! !
drawText:rectangle:color:!public!text! !
drawText:rectangle:color:wrapWidth:zIndex:!public!text! !
drawText:rectangle:color:zIndex:!public!text! !
drawTexture:rectangle:rotation:zIndex:!public! !
drawTexture:rectangle:stretch:zIndex:!images!public! !
drawTexture:rectangle:zIndex:!images!public! !
fillPolygon:zIndex:!geometry!public! !
fillQuadrilateral:zIndex:!geometry!public! !
fillRectangle:color:zIndex:!geometry!public! !
fillTriangle:zIndex:!geometry!public! !
initialize!public! !
offset!accessing!public! !
offset:!accessing!public! !
resetClip!public! !
subtractOffset:!private! !
withClip:do:!public! !
withOffset:do:!public! !
withoutClipDo:!public! !
withoutOffsetDo:!public! !
!

!Canvas2D class methodsFor!

new
	^super new initialize! !

!Canvas2D class categoriesForMethods!
new!public! !
!

