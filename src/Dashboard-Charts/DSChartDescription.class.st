Class {
	#name : #DSChartDescription,
	#superclass : #Object,
	#instVars : [
		'descriptions',
		'acceptedChartDescription'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #testing }
DSChartDescription >> canAccept: aCollection describedBy: aDataDescription [
	^ ((aDataDescription canDescribe: aCollection)
		and: [ self canAcceptDescriptions: aDataDescription ])
		and: [ self canAcceptSize: aCollection ]
]

{ #category : #testing }
DSChartDescription >> canAcceptDescriptions: aDataDescription [
"check if the description of the datas match one of the description accepted by the chart"
	^ descriptions anySatisfy: [ :aChartDescription |
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
DSChartDescription >> descriptions [

	^ descriptions
]

{ #category : #accessing }
DSChartDescription >> descriptions: aDescriptionList [

	descriptions := aDescriptionList
]
