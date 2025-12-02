"Filed out from Dolphin Smalltalk"!

NET_Object subclass: #NET_Address
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

NET_Address guid: (GUID fromString: '{2bf5a091-fbc9-4777-944c-d5a0fa7a3cd3}')!

NET_Address comment: ''!

!NET_Address categoriesForClass!External-Data-Structured! !

!NET_Address methodsFor!

addReference
	self library refAddress_address: self!

defaultTimeout
	^-1!

getStatus
	| result |
	result := self library getAddressStatus_address: self.
	self checkStatusResult: result.
	^result!

getString
	| result |
	result := self library getAddressString_address: self.
	self checkObjectResult: result.
	^result!

removeReference
	self library unrefAddress_address: self!

waitUntilResolved
	| result |
	result := self library waitUntilResolved_address: self timeout: self defaultTimeout.
	self checkStatusResult: result.
	^result! !

!NET_Address categoriesForMethods!
addReference!public! !
defaultTimeout!private! !
getStatus!public! !
getString!public! !
removeReference!public! !
waitUntilResolved!public! !
!

!NET_Address class methodsFor!

fromString: aString
	| result |
	result := SDL3NetLibrary default resolveHostname_host: aString.
	result isNull ifTrue: [self error: SDL3Library default getError].
	^result! !

!NET_Address class categoriesForMethods!
fromString:!public! !
!

