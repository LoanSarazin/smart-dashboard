Class {
	#name : #DSChartDescription,
	#superclass : #Object,
	#instVars : [
		'kind',
		'populationSize'
	],
	#category : #'Dashboard-Charts-Domain'
}

{ #category : #testing }
DSChartDescription >> canAccept: aDescribedCollection [
	
	^ (self canAcceptKind: aDescribedCollection first kind )
		and: [ self canAcceptSize: aDescribedCollection size] 
]

{ #category : #testing }
DSChartDescription >> canAcceptKind: aClass [ 
	
	^ kind = aClass
]

{ #category : #testing }
DSChartDescription >> canAcceptSize: anInteger [ 
	^ populationSize isWithin: anInteger
]

{ #category : #accessing }
DSChartDescription >> kind: aClass [ 
	kind := aClass
]

{ #category : #accessing }
DSChartDescription >> populationSize: aRange [ 
	populationSize := aRange
]
