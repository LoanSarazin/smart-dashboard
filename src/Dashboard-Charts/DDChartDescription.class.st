Class {
	#name : #DDChartDescription,
	#superclass : #Object,
	#instVars : [
		'descriptions',
		'acceptedChartDescription'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #testing }
DDChartDescription >> canAccept: aCollection describedBy: aDataDescription [
	^ ((aDataDescription canDescribe: aCollection)
		and: [ self canAcceptDescriptions: aDataDescription ])
		and: [ self canAcceptSize: aCollection ]
]

{ #category : #testing }
DDChartDescription >> canAcceptDescriptions: aDataDescription [
"check if the description of the datas match one of the description accepted by the chart"
	^ descriptions anySatisfy: [ :aChartDescription |
		(aChartDescription canAcceptDomain: aDataDescription)
			ifTrue: (acceptedChartDescription :=  aChartDescription);
			yourself
		].
]

{ #category : #testing }
DDChartDescription >> canAcceptSize: aCollection [
	^ acceptedChartDescription isNotNil and: [ 
		acceptedChartDescription canAcceptSize: aCollection]
]

{ #category : #accessing }
DDChartDescription >> descriptions [

	^ descriptions
]

{ #category : #accessing }
DDChartDescription >> descriptions: aDescriptionList [

	descriptions := aDescriptionList
]
