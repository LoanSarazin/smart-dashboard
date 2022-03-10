Class {
	#name : #DSContainer,
	#superclass : #DSDomain,
	#instVars : [
		'domain',
		'range'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSContainer class >> canAcceptDomain: aDSDomain [

	^ false
]

{ #category : #testing }
DSContainer class >> canAcceptSize: aCollection [

	^ false
]

{ #category : #accessing }
DSContainer >> canAcceptDomain: aDSDomain [

	self subclassResponsibility 
]

{ #category : #testing }
DSContainer >> canAcceptSize: aCollection [

	self subclassResponsibility
]

{ #category : #testing }
DSContainer >> canDescribe: aData [

	self subclassResponsibility
]

{ #category : #accessing }
DSContainer >> domain [
	
	^ domain
]

{ #category : #accessing }
DSContainer >> domain: aDSDomainCollection [ 
	
	domain := aDSDomainCollection
]

{ #category : #accessing }
DSContainer >> range [
	
	^ range
]

{ #category : #accessing }
DSContainer >> range: aDSRange [ 
	
	range := aDSRange
]
