"Filed out from Dolphin Smalltalk"!

TTF_Object subclass: #TTF_TextEngine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TTF_TextEngine guid: (GUID fromString: '{f9e11075-b382-4a25-a776-17b94270d2cc}')!

TTF_TextEngine comment: ''!

!TTF_TextEngine categoriesForClass!External-Data-Structured! !

!TTF_TextEngine methodsFor!

createText: aString font: aFont
	| text |
	text := self library
				createText_engine: self
				font: aFont
				text: aString
				length: aString size.
	self checkObjectResult: text.
	^text initialize!

createText: aString font: aFont wrapWidth: anInteger
	| text |
	text := self library
				createText_engine: self
				font: aFont
				text: aString
				length: aString size.
	anInteger ifNotNil: [text wrapWidth: anInteger asInteger].
	self checkObjectResult: text.
	^text initialize!

destroy
	self library destroyRendererTextEngine_engine: self!

drawText: aTTFText x: aFloat y: anotherFloat
	| result |
	result := self library
				drawRendererText_text: aTTFText
				x: aFloat asFloat truncated
				y: anotherFloat asFloat truncated.
	self checkBooleanResult: result!

getDrawData: aTTFText
	| result |
	result := self library getGPUTextDrawData_text: aTTFText.
	self checkObjectResult: result.
	^result! !

!TTF_TextEngine categoriesForMethods!
createText:font:!public! !
createText:font:wrapWidth:!public! !
destroy!public! !
drawText:x:y:!public! !
getDrawData:!public! !
!

