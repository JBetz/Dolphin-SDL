"Filed out from Dolphin Smalltalk"!

Object subclass: #FontStyle
	instanceVariableNames: 'name code'
	classVariableNames: ''
	poolDictionaries: 'TTFConstants'
	classInstanceVariableNames: ''!
FontStyle guid: (GUID fromString: '{e162a0b7-bcb6-4588-93fa-9499cc955616}')!
FontStyle comment: ''!
!FontStyle categoriesForClass!Kernel-Objects! !
!FontStyle methodsFor!

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
!FontStyle categoriesForMethods!
<=!public! !
code!accessing!public! !
code:!accessing!private! !
name!accessing!public! !
name:!accessing!private! !
!

!FontStyle class methodsFor!

allStyles
	^{self normal. self bold. self italic. self strikethrough. self underline}!

bold
	^FontStyle new
		name: 'Bold';
		code: TTF_STYLE_BOLD!

italic
	^FontStyle new
		name: 'Italic';
		code: TTF_STYLE_ITALIC!

new
	^super new initialize!

normal
	^FontStyle new
		name: 'Normal';
		code: TTF_STYLE_NORMAL!

strikethrough
	^FontStyle new
		name: 'Strikethrough';
		code: TTF_STYLE_STRIKETHROUGH!

underline
	^FontStyle new
		name: 'Underline';
		code: TTF_STYLE_UNDERLINE! !
!FontStyle class categoriesForMethods!
allStyles!public! !
bold!public! !
italic!public! !
new!public! !
normal!public! !
strikethrough!public! !
underline!public! !
!

