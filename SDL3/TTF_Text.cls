"Filed out from Dolphin Smalltalk"!

TTF_Object subclass: #TTF_Text
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_internal _OffsetOf_num_lines _OffsetOf_refcount _OffsetOf_text'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

TTF_Text guid: (GUID fromString: '{88038bd2-f7f9-4948-addd-0babb2ce7916}')!

TTF_Text addClassConstant: '_OffsetOf_internal' value: 16rC!
TTF_Text addClassConstant: '_OffsetOf_num_lines' value: 16r4!
TTF_Text addClassConstant: '_OffsetOf_refcount' value: 16r8!
TTF_Text addClassConstant: '_OffsetOf_text' value: 16r0!

TTF_Text comment: ''!

!TTF_Text categoriesForClass!External-Data-Structured! !

!TTF_Text methodsFor!

color: aSDLColor
	self library
		setTextColor_text: self
		r: aSDLColor r
		g: aSDLColor g
		b: aSDLColor b
		a: aSDLColor a!

deleteString: index length: length
	| result |
	result := self library
				deleteTextString_text: self
				offset: index - 1
				length: length.
	self checkBooleanResult: result!

destroy
	self library destroyText_text: self!

extent
	| count result substrings |
	count := SDWORD new.
	result := self library
				getTextSubStringsForRange_text: self
				offset: 0
				length: -1
				count: count asParameter.
	self checkObjectResult: result.
	substrings := PointerArray
		fromAddress: result
		length: count value
		elementClass: TTF_SubString.
	^substrings first rect extent!

getSubStringForInterval: anInterval
	| count result |
	count := SDWORD new.
	result := self library
				getTextSubStringsForRange_text: self
				offset: anInterval start
				length: anInterval size
				count: count asParameter.
	self checkObjectResult: result.
	^PointerArray
		fromAddress: result
		length: count value
		elementClass: TTF_SubString!

getSubStringForLine: anInteger
	| substring result |
	substring := TTF_SubString new.
	result := self library
				getTextSubStringForLine_text: self
				line: anInteger
				substring: substring.
	self checkBooleanResult: result.
	^substring!

getSubStringForOffset: anInteger
	| substring result |
	substring := TTF_SubString new.
	result := self library
				getTextSubString_text: self
				offset: anInteger
				substring: substring.
	self checkBooleanResult: result.
	^substring!

getSubStringForPoint: aPoint
	| substring result |
	substring := TTF_SubString new.
	result := self library
				getTextSubStringForPoint_text: self
				x: aPoint x asInteger
				y: aPoint y asInteger
				substring: substring.
	self checkBooleanResult: result.
	^substring!

insertString: aString index: anInteger
	self insertString: aString offset: anInteger - 1!

insertString: aString offset: anInteger
	| result |
	result := self library
				insertTextString_text: self
				offset: anInteger 
				string: aString
				length: aString size.
	self checkBooleanResult: result!

notEmpty
	^self text notNil!

num_lines
	"Answer the <Integer> value of the receiver's 'num_lines' field."

	^bytes sdwordAtOffset: _OffsetOf_num_lines!

num_lines: anInteger
	"Set the receiver's 'num_lines' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_num_lines put: anInteger!

refcount
	"Answer the <Integer> value of the receiver's 'refcount' field."

	^bytes sdwordAtOffset: _OffsetOf_refcount!

refcount: anInteger
	"Set the receiver's 'refcount' field to the value of the argument, anInteger"

	bytes sdwordAtOffset: _OffsetOf_refcount put: anInteger!

setWrapWhitespaceVisible: aBoolean
	self library setTextWrapWhitespaceVisible_text: self visible: aBoolean!

size
	^self text size!

text
	"Answer the <Utf8String> value of the receiver's 'text' field."

	^Utf8String fromAddress: (bytes intPtrAtOffset: _OffsetOf_text)!

text: anUtf8String
	"Set the receiver's 'text' field to the value of the argument, anUtf8String"

	bytes uintPtrAtOffset: _OffsetOf_text put: anUtf8String yourAddress!

wrapWidth
	| wrapWidth result |
	wrapWidth := SDWORD new.
	result := self library getTextWrapWidth_text: self wrapWidth: wrapWidth.
	self checkBooleanResult: result.
	^wrapWidth value!

wrapWidth: anInteger
	| result |
	result := self library setTextWrapWidth_text: self wrapWidth: anInteger.
	self checkBooleanResult: result! !

!TTF_Text categoriesForMethods!
color:!public! !
deleteString:length:!public! !
destroy!public! !
extent!public! !
getSubStringForInterval:!public! !
getSubStringForLine:!public! !
getSubStringForOffset:!public! !
getSubStringForPoint:!public! !
insertString:index:!public! !
insertString:offset:!public! !
notEmpty!public! !
num_lines!**compiled accessors**!public! !
num_lines:!**compiled accessors**!public! !
refcount!**compiled accessors**!public! !
refcount:!**compiled accessors**!public! !
setWrapWhitespaceVisible:!public! !
size!public! !
text!**compiled accessors**!public! !
text:!**compiled accessors**!public! !
wrapWidth!public! !
wrapWidth:!public! !
!

!TTF_Text class methodsFor!

defineFields
	"self compileDefinition"

	self
		defineField: #text type: (PointerField type: Utf8String);
		defineField: #num_lines type: SDWORDField new;
		defineField: #refcount type: SDWORDField new;
		defineField: #internal type: LPVOIDField new beInaccessible!

getFieldNames
	^#(#text #num_lines #refcount)! !

!TTF_Text class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
!

