Class {
	#name : #DSRangeTest,
	#superclass : #TestCase,
	#category : #'Dashboard-Charts-Tests'
}

{ #category : #tests }
DSRangeTest >> testRangeIsWithin [

	| range |
	range := DSRange between: 1 and: 5.
	self assert: (range isWithin: 4)
	
	
]

{ #category : #tests }
DSRangeTest >> testRangeMaximumCreation [

	| range |
	range := DSRange between: 1 and: 5.
	self assert: range maximumAmount equals: 5
	
	
]

{ #category : #tests }
DSRangeTest >> testRangeMinimumCreation [

	| range |
	range := DSRange between: 1 and: 5.
	self assert: range minimumAmount equals: 1
	
	
]
