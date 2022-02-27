Class {
	#name : #DSChartDescription,
	#superclass : #Object,
	#instVars : [
		'kind',
		'acceptedChartDescription'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #testing }
DSChartDescription >> canAccept: aCollection describedBy: aDataDescription [
	^ ((aDataDescription canDescribe: aCollection)
		and: [ self canAcceptKind: aDataDescription ])
		and: [ self canAcceptSize: aCollection ]
]

{ #category : #testing }
DSChartDescription >> canAcceptKind: aDataDescription [
"check if the description of the datas match one of the description accepted by the chart"
	^ kind anySatisfy: [ :aChartDescription |
		(aChartDescription canAcceptDomain: aDataDescription)
			ifTrue: (acceptedChartDescription :=  aChartDescription);
			yourself
		].
]

{ #category : #testing }
DSChartDescription >> canAcceptSize: aCollection [
	^ acceptedChartDescription isNotNil and: [ 
		acceptedChartDescription canAcceptSize: aCollection]
]

{ #category : #accessing }
DSChartDescription >> kind [
	^ kind
]

{ #category : #accessing }
DSChartDescription >> kind: aDescriptionList [
	kind := aDescriptionList
]
