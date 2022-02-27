Class {
	#name : #DSSingleDomain,
	#superclass : #DSContainer,
	#instVars : [
		'domain',
		'range'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #accessing }
DSSingleDomain class >> domain: aClass [ 
	^ self new
		domain: aClass;
		yourself
]

{ #category : #accessing }
DSSingleDomain class >> domain: aDSDomain range: aDSRange [
	^ self new
		domain: aDSDomain;
		range: aDSRange;
		yourself
]

{ #category : #accessing }
DSSingleDomain >> canAcceptDomain: aDSDomain [
	"self represent the Domains accepted by a chart. aDSDomain is describing datas"
	^ (self class = aDSDomain class) and:
		[ self domain canAcceptDomain: aDSDomain domain ]
]

{ #category : #testing }
DSSingleDomain >> canAcceptSize: aCollection [ 

	^ (range isWithin: (aCollection size)) and: [
		aCollection allSatisfy: [ :each |
			domain canAcceptSize: each
			].
		]
]

{ #category : #accessing }
DSSingleDomain >> domain [

	^ domain
]

{ #category : #accessing }
DSSingleDomain >> domain: aDSDomain [

	domain := aDSDomain
]

{ #category : #accessing }
DSSingleDomain >> range [

	^ range
]

{ #category : #accessing }
DSSingleDomain >> range: aDSRange [

	range := aDSRange.
]
