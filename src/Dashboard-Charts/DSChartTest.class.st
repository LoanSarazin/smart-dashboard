Class {
	#name : #DSChartTest,
	#superclass : #TestCase,
	#category : #'Dashboard-Charts-Tests'
}

{ #category : #tests }
DSChartTest >> testAllChartsAreOpening [

	DSChart allSubclasses do: [ :each |
			| opened |
			[ opened := each example ] on: Error do: [ :ex | ].
			(opened isKindOf: SystemWindow) ifTrue: [ opened close].
		 ]
	
]
