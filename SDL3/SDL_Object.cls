﻿"Filed out from Dolphin Smalltalk"!

ExternalStructure subclass: #SDL_Object
	instanceVariableNames: 'propertiesId'
	classVariableNames: ''
	poolDictionaries: 'SDLConstants'
	classInstanceVariableNames: ''!

SDL_Object guid: (GUID fromString: '{94f3180b-5da5-45a7-8ae7-499f08d724db}')!

SDL_Object comment: ''!

!SDL_Object categoriesForClass!External-Data-Structured! !

!SDL_Object methodsFor!

checkBooleanResult: aBoolean
	aBoolean ifFalse: [self error: self library getError]!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: self library getError]!

destroy
	self subclassResponsibility!

free
	[self destroy] on: Error
		do: 
			[:error |
			Transcript
				display: error;
				cr].
	super free!

getPropertiesId
	self subclassResponsibility!

getProperty: aString
	| type propertyId |
	propertyId := self propertiesId.
	type := self library getPropertyType_props: propertyId name: aString.
	type = SDL_PROPERTY_TYPE_INVALID
		ifTrue: [self error: ('Invalid property name: <1s>' expandMacrosWith: aString)].
	type = SDL_PROPERTY_TYPE_POINTER
		ifTrue: 
			[^self library
				getPointerProperty_props: propertyId
				name: aString
				defaultValue: nil].
	type = SDL_PROPERTY_TYPE_STRING
		ifTrue: 
			[^self library
				getStringProperty_props: propertyId
				name: aString
				defaultValue: ''].
	type = SDL_PROPERTY_TYPE_NUMBER
		ifTrue: 
			[^self library
				getNumberProperty_props: propertyId
				name: aString
				defaultValue: 0].
	type = SDL_PROPERTY_TYPE_FLOAT
		ifTrue: 
			[^self library
				getFloatProperty_props: propertyId
				name: aString
				defaultValue: 0.0].
	type = SDL_PROPERTY_TYPE_BOOLEAN
		ifTrue: 
			[^self library
				getBooleanProperty_props: propertyId
				name: aString
				defaultValue: false].
	^nil!

initialize
	super initialize.
	self beFinalizable!

library
	^SDL3Library default!

propertiesId
	propertiesId ifNil: [propertiesId := self getPropertiesId].
	^propertiesId! !

!SDL_Object categoriesForMethods!
checkBooleanResult:!private! !
checkObjectResult:!private! !
destroy!public! !
free!public! !
getPropertiesId!public! !
getProperty:!public! !
initialize!public! !
library!public! !
propertiesId!public! !
!

!SDL_Object class methodsFor!

checkObjectResult: anObject
	anObject isNull ifTrue: [self error: SDL3Library default getError]!

library
	^SDL3Library default!

new
	^super new initialize! !

!SDL_Object class categoriesForMethods!
checkObjectResult:!private! !
library!public! !
new!public! !
!

