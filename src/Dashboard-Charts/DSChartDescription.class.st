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
	
	^ (aDescribedCollection allSatisfy: [ :each | self canAcceptKind: each ])
		and: [ self canAcceptSize: aDescribedCollection size ] 
]

{ #category : #testing }
DSChartDescription >> canAcceptKind: aDataDescription [
"check if the description of the datas match the ones accepted by the chart"
	
	^ aDataDescription canAcceptKind: kind
]

{ #category : #testing }
DSChartDescription >> canAcceptSize: anInteger [ 
	^ populationSize isWithin: anInteger
]

{ #category : #accessing }
DSChartDescription >> kind: aDataDescriptionList [
	kind := aDataDescriptionList
]

{ #category : #accessing }
DSChartDescription >> populationSize: aRange [ 
	populationSize := aRange
]
