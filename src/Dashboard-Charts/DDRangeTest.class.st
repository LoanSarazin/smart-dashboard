Class {
	#name : #DDRangeTest,
	#superclass : #TestCase,
	#category : #'Dashboard-Charts-Tests'
}

{ #category : #tests }
DDRangeTest >> testRangeIsWithin [

	| range |
	range := DDRange between: 1 and: 5.
	self assert: (range isWithin: 4)
	
	
]

{ #category : #tests }
DDRangeTest >> testRangeMaximumCreation [

	| range |
	range := DDRange between: 1 and: 5.
	self assert: range maximumAmount equals: 5
	
	
]

{ #category : #tests }
DDRangeTest >> testRangeMinimumCreation [

	| range |
	range := DDRange between: 1 and: 5.
	self assert: range minimumAmount equals: 1
	
	
]
