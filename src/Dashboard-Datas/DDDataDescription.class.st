Class {
	#name : #DDDataDescription,
	#superclass : #Object,
	#instVars : [
		'domain',
		'userIntention'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #accessing }
DDDataDescription class >> domain: aDSDomain [

	^ self new
		domain: aDSDomain;
		yourself
]

{ #category : #testing }
DDDataDescription >> canAcceptDomain: aDSDataDescription [ 
	
	^ domain canAcceptDomain: aDSDataDescription domain
]

{ #category : #testing }
DDDataDescription >> canAcceptSize: aCollection [ 
	
	^ domain canAcceptSize: aCollection
]

{ #category : #testing }
DDDataDescription >> canDescribe: aCollection [ 
	^ domain canDescribe: aCollection
]

{ #category : #accessing }
DDDataDescription >> domain [

	^ domain
]

{ #category : #accessing }
DDDataDescription >> domain: aDSDomain [

	domain := aDSDomain
]

{ #category : #accessing }
DDDataDescription >> userIntention [

	^ userIntention
]

{ #category : #accessing }
DDDataDescription >> userIntention: aDSUserIntention [

	userIntention := aDSUserIntention
]
