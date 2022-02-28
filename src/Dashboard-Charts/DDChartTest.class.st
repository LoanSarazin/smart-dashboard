Class {
	#name : #DDChartTest,
	#superclass : #TestCase,
	#category : #'Dashboard-Charts-Tests'
}

{ #category : #tests }
DDChartTest >> testAllChartsAreOpening [

	DDChart allSubclasses do: [ :each |
			| opened |
			[ opened := each example ] on: Error do: [ :ex | ].
			(opened isKindOf: SystemWindow) ifTrue: [ opened close].
		 ]
	
]
