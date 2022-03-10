Class {
	#name : #DSDataDescription,
	#superclass : #Object,
	#instVars : [
		'domain',
		'userIntention'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #accessing }
DSDataDescription class >> domain: aDSDomain [

	^ self new
		domain: aDSDomain;
		yourself
]

{ #category : #testing }
DSDataDescription >> canAcceptDomain: aDSDataDescription [ 
	
	^ domain canAcceptDomain: aDSDataDescription domain
]

{ #category : #testing }
DSDataDescription >> canAcceptSize: aCollection [ 
	
	^ domain canAcceptSize: aCollection
]

{ #category : #testing }
DSDataDescription >> canAcceptUI: aDSUserIntention [
	
	^ userIntention canAcceptUI: aDSUserIntention
]

{ #category : #testing }
DSDataDescription >> canDescribe: aCollection [ 
	^ domain canDescribe: aCollection
]

{ #category : #accessing }
DSDataDescription >> domain [

	^ domain
]

{ #category : #accessing }
DSDataDescription >> domain: aDSDomain [

	domain := aDSDomain
]

{ #category : #accessing }
DSDataDescription >> initialize [
	
	userIntention := OrderedCollection new
]

{ #category : #accessing }
DSDataDescription >> userIntention [

	^ userIntention
]

{ #category : #accessing }
DSDataDescription >> userIntention: aDSUserIntention [

	userIntention := aDSUserIntention
]
