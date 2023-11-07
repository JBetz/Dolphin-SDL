"Filed out from Dolphin Smalltalk"!

Dictionary variableSubclass: #PriorityQueue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PriorityQueue guid: (GUID fromString: '{928c2e51-0158-4483-9b47-12f3a526fe5d}')!
PriorityQueue comment: ''!
!PriorityQueue categoriesForClass!Kernel-Objects! !
!PriorityQueue methodsFor!

dequeue
	^(self at: self highestPriorityLevel) removeLast!

enqueue: anObject
	self enqueue: anObject priority: 0!

enqueue: anObject priority: anInteger
	| priorityList |
	priorityList := self at: anInteger ifAbsent: [self at: anInteger put: OrderedCollection new].
	priorityList add: anObject!

flush
	self removeAll!

flushWith: aBlock
	self flushWith: aBlock sortBlock:  [ :a :b | a > b ]!

flushWith: aBlock sortBlock: aSortBlock
	| priorityLevels |
	priorityLevels := self keys asOrderedCollection sortUsing: (DefaultSortAlgorithm newSortBlock: aSortBlock).
	priorityLevels do: [:anInteger | (self at: anInteger) do: [:anItem | aBlock value: anItem]].
	self removeAll!

highestPriorityLevel
	^(self keys asOrderedCollection sortUsing: (DefaultSortAlgorithm sortBlock: [:a :b | a > b]))
		ifNotNil: [:priorityLevels | priorityLevels first]!

reverseFlushWith: aBlock
	self flushWith: aBlock sortBlock:  [ :a :b | a < b ]! !
!PriorityQueue categoriesForMethods!
dequeue!public! !
enqueue:!public! !
enqueue:priority:!public! !
flush!public! !
flushWith:!public! !
flushWith:sortBlock:!public! !
highestPriorityLevel!public! !
reverseFlushWith:!public! !
!

