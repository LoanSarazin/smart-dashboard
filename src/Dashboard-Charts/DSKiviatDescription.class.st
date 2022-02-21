"
First version and not following the protocol.
May be we should remove this class and its associated tests.
"
Class {
	#name : #DSKiviatDescription,
	#superclass : #DSChartDescription,
	#category : #'Dashboard-Charts-Domain'
}

{ #category : #testing }
DSKiviatDescription >> canDisplay: aCollection [ 

	^ aCollection size between: 5 and: 7
]
