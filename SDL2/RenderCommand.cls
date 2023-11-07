"Filed out from Dolphin Smalltalk"!

Object subclass: #RenderCommand
	instanceVariableNames: 'zIndex rotate clip'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderCommand guid: (GUID fromString: '{0565881b-e125-4551-b037-26816ec53091}')!
RenderCommand comment: ''!
!RenderCommand categoriesForClass!Kernel-Objects! !
!RenderCommand methodsFor!

asSelector
	^('execute' , self class name asString , ':') asSymbol!

clip
	^clip!

clip: anObject
	clip := anObject!

ifDrawRectangle: drawRectangleBlock ifDrawString: drawStringBlock ifFillRectangle: fillRectangleBlock ifDrawImage: drawImageBlock ifDrawBitmap: drawBitmapBlock ifDrawLine: drawLineBlock ifDrawBezierCurve: drawBezierCurveBlock ifFillPolygon: fillPolygonBlock
	self class = DrawRectangle
		ifTrue: [drawRectangleBlock value]
		ifFalse: 
			[self class = DrawString
				ifTrue: [drawStringBlock value]
				ifFalse: 
					[self class = FillRectangle
						ifTrue: [fillRectangleBlock value]
						ifFalse: 
							[self class = DrawImage
								ifTrue: [drawImageBlock value]
								ifFalse: 
									[self class = DrawBitmap
										ifTrue: [drawBitmapBlock value]
										ifFalse: 
											[self class = DrawLine
												ifTrue: [drawLineBlock value]
												ifFalse: [self class = DrawBezierCurve
													ifTrue: [ drawBezierCurveBlock value ] 
													ifFalse: [ self class = FillPolygon ifTrue: [fillPolygonBlock value]]]]]]]]!

ifDrawRectangle: drawRectangleBlock ifDrawString: drawStringBlock ifFillRectangle: fillRectangleBlock ifDrawImage: drawImageBlock ifDrawBitmap: drawBitmapBlock ifDrawLine: drawLineBlock ifFillPolygon: fillPolygonBlock
	self class = DrawRectangle
		ifTrue: [drawRectangleBlock value]
		ifFalse: 
			[self class = DrawString
				ifTrue: [drawStringBlock value]
				ifFalse: 
					[self class = FillRectangle
						ifTrue: [fillRectangleBlock value]
						ifFalse: 
							[self class = DrawImage
								ifTrue: [drawImageBlock value]
								ifFalse: 
									[self class = DrawBitmap
										ifTrue: [drawBitmapBlock value]
										ifFalse: 
											[self class = DrawLine
												ifTrue: [drawLineBlock value]
												ifFalse: [self class = FillPolygon ifTrue: [fillPolygonBlock value]]]]]]]!

rotate
	^rotate!

rotate: aRealAngle
	rotate := aRealAngle!

zIndex
	^zIndex!

zIndex: anObject
	zIndex := anObject! !
!RenderCommand categoriesForMethods!
asSelector!public! !
clip!public! !
clip:!public! !
ifDrawRectangle:ifDrawString:ifFillRectangle:ifDrawImage:ifDrawBitmap:ifDrawLine:ifDrawBezierCurve:ifFillPolygon:!public! !
ifDrawRectangle:ifDrawString:ifFillRectangle:ifDrawImage:ifDrawBitmap:ifDrawLine:ifFillPolygon:!public! !
rotate!public! !
rotate:!public! !
zIndex!public! !
zIndex:!public! !
!

!RenderCommand class methodsFor!

new
	^super new initialize! !
!RenderCommand class categoriesForMethods!
new!public! !
!

