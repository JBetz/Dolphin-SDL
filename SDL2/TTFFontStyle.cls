"Filed out from Dolphin Smalltalk"!

Object subclass: #TTFFontStyle
	instanceVariableNames: 'name code'
	classVariableNames: ''
	poolDictionaries: 'TTFConstants'
	classInstanceVariableNames: ''!
TTFFontStyle guid: (GUID fromString: '{e162a0b7-bcb6-4588-93fa-9499cc955616}')!
TTFFontStyle comment: ''!
!TTFFontStyle categoriesForClass!Kernel-Objects! !
!TTFFontStyle methodsFor!

<= aTTFFontStyle
	^code <= aTTFFontStyle code!

code
	^code!

code: anObject
	code := anObject!

name
	^name!

name: anObject
	name := anObject! !
!TTFFontStyle categoriesForMethods!
<=!public! !
code!accessing!public! !
code:!accessing!private! !
name!accessing!public! !
name:!accessing!private! !
!

!TTFFontStyle class methodsFor!

allStyles
	^{self normal. self bold. self italic. self strikethrough. self underline}!

bold
	^TTFFontStyle new
		name: 'Bold';
		code: TTF_STYLE_BOLD!

italic
	^TTFFontStyle new
		name: 'Italic';
		code: TTF_STYLE_ITALIC!

new
	^super new initialize!

normal
	^TTFFontStyle new
		name: 'Normal';
		code: TTF_STYLE_NORMAL!

strikethrough
	^TTFFontStyle new
		name: 'Strikethrough';
		code: TTF_STYLE_STRIKETHROUGH!

underline
	^TTFFontStyle new
		name: 'Underline';
		code: TTF_STYLE_UNDERLINE! !
!TTFFontStyle class categoriesForMethods!
allStyles!public! !
bold!public! !
italic!public! !
new!public! !
normal!public! !
strikethrough!public! !
underline!public! !
!

