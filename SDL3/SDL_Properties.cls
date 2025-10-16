"Filed out from Dolphin Smalltalk"!

Object subclass: #SDL_Properties
	instanceVariableNames: 'id'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_Properties guid: (GUID fromString: '{7130dfd8-d695-4a44-9178-be223e8da7d5}')!

SDL_Properties comment: ''!

!SDL_Properties categoriesForClass!Kernel-Objects! !

!SDL_Properties methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: self library getError]!

enumerateProperties
	| properties callback |
	properties := Dictionary new.
	callback := ExternalCallback
				block: [:userdata :props :name | properties at: name put: (self getProperty: name)]
				descriptor: (ExternalDescriptor
						callingConvention: 'cdecl:'
						returnType: 'void'
						argumentTypes: 'lpvoid dword lpstr').
	self checkBooleanResult: (self library
				enumerateProperties_props: id
				callback: callback asParameter
				userdata: nil).
	callback free.
	^properties!

getBooleanProperty: aString defaultValue: anObject
	^self library
		getBooleanProperty_props: id
		name: aString
		defaultValue: (anObject ifNil: [false])!

getFloatProperty: aString defaultValue: anObject
	^self library
		getFloatProperty_props: id
		name: aString
		defaultValue: (anObject ifNil: [0.0])!

getNumberProperty: aString defaultValue: anObject
	^self library
		getNumberProperty_props: id
		name: aString
		defaultValue: (anObject ifNil: [0])!

getPointerPropertyProperty: aString defaultValue: anObject
	^self library
		getPointerProperty_props: id
		name: aString
		defaultValue: anObject!

getProperty: aString
	^self getProperty: aString defaultValue: nil!

getProperty: aString defaultValue: anObject
	| type |
	type := self library getPropertyType_props: id name: aString.
	type = SDL_PROPERTY_TYPE_INVALID
		ifTrue: [self error: ('Invalid property name: <1s>' expandMacrosWith: aString)].
	type = SDL_PROPERTY_TYPE_POINTER
		ifTrue: [^self getPointerPropertyProperty: aString defaultValue: anObject].
	type = SDL_PROPERTY_TYPE_STRING ifTrue: [^self getStringProperty: aString defaultValue: anObject].
	type = SDL_PROPERTY_TYPE_NUMBER ifTrue: [^self getNumberProperty: aString defaultValue: anObject].
	type = SDL_PROPERTY_TYPE_FLOAT ifTrue: [^self getFloatProperty: aString defaultValue: anObject].
	type = SDL_PROPERTY_TYPE_BOOLEAN ifTrue: [^self getBooleanProperty: aString defaultValue: anObject].
	^nil!

getStringProperty: aString defaultValue: anObject
	^self library
		getStringProperty_props: id
		name: aString
		defaultValue: (anObject ifNil: [''])!

id
	^id!

id: anInteger
	id := anInteger!

initialize
	super initialize.
	id := self library createProperties.
	id = 0 ifTrue: [self error: self library getError]!

library
	^SDL3Library default!

setBooleanProperty: aString value: aBoolean
	| result |
	result := self library
				setBooleanProperty_props: id
				name: aString
				value: aBoolean.
	self checkBooleanResult: result!

setFloatProperty: aString value: aFloat
	| result |
	result := self library
				setFloatProperty_props: id
				name: aString
				value: aFloat.
	self checkBooleanResult: result!

setNumberProperty: aString value: anInteger
	| result |
	result := self library
				setNumberProperty_props: id
				name: aString
				value: anInteger.
	self checkBooleanResult: result!

setPointerProperty: aString value: anExternalAddress
	| result |
	result := self library
				setPointerProperty_props: id
				name: aString
				value: anExternalAddress.
	self checkBooleanResult: result!

setStringProperty: aString value: anotherString
	| result |
	result := self library
				setStringProperty_props: id
				name: aString
				value: anotherString.
	self checkBooleanResult: result! !

!SDL_Properties categoriesForMethods!
checkBooleanResult:!private! !
enumerateProperties!public! !
getBooleanProperty:defaultValue:!public! !
getFloatProperty:defaultValue:!public! !
getNumberProperty:defaultValue:!public! !
getPointerPropertyProperty:defaultValue:!public! !
getProperty:!public! !
getProperty:defaultValue:!public! !
getStringProperty:defaultValue:!public! !
id!public! !
id:!public! !
initialize!public! !
library!public! !
setBooleanProperty:value:!public! !
setFloatProperty:value:!public! !
setNumberProperty:value:!public! !
setPointerProperty:value:!public! !
setStringProperty:value:!public! !
!

!SDL_Properties class methodsFor!

fromId: anInteger
	^super new id: anInteger!

new
	^super new initialize! !

!SDL_Properties class categoriesForMethods!
fromId:!public! !
new!public! !
!

