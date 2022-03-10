Class {
	#name : #DSChartDescription,
	#superclass : #Object,
	#instVars : [
		'domain',
		'userIntention'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #'as yet unclassified' }
DSChartDescription class >> domain: aDSDomain [

	^ self new
		domain: aDSDomain;
		yourself
]

{ #category : #testing }
DSChartDescription >> canAccept: aCollection describedBy: aDataDescription [

	^ ((self canAcceptUI: aDataDescription userIntention)
      and: [ domain canAcceptDomain: aDataDescription ])
      and: [ domain canAcceptSize: aCollection ]
	
]

{ #category : #testing }
DSChartDescription >> canAcceptUI: aDSUserIntentionCollection [

	^ aDSUserIntentionCollection isEmpty or: [ 
		aDSUserIntentionCollection allSatisfy: [ :eachDSUI |
			userIntention includes: eachDSUI
			]
		] 	
]

{ #category : #accessing }
DSChartDescription >> domain [

	^ domain
]

{ #category : #accessing }
DSChartDescription >> domain: aDataDomain [

	domain := aDataDomain
]

{ #category : #testing }
DSChartDescription >> initialize [

	userIntention := DSUserIntention allSubclasses
]
