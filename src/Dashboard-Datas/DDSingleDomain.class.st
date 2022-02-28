Class {
	#name : #DDSingleDomain,
	#superclass : #DDContainer,
	#instVars : [
		'domain',
		'range'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #accessing }
DDSingleDomain class >> domain: aClass [ 
	^ self new
		domain: aClass;
		yourself
]

{ #category : #accessing }
DDSingleDomain class >> domain: aDSDomain range: aDSRange [
	^ self new
		domain: aDSDomain;
		range: aDSRange;
		yourself
]

{ #category : #accessing }
DDSingleDomain >> canAcceptDomain: aDSDomain [
	"self represent the Domains accepted by a chart. aDSDomain is describing datas"
	^ (self class = aDSDomain class) and:
		[ self domain canAcceptDomain: aDSDomain domain ]
]

{ #category : #testing }
DDSingleDomain >> canAcceptSize: aCollection [ 

	^ (range isWithin: (aCollection size)) and: [
		aCollection allSatisfy: [ :each |
			domain canAcceptSize: each
			].
		]
]

{ #category : #accessing }
DDSingleDomain >> domain [

	^ domain
]

{ #category : #accessing }
DDSingleDomain >> domain: aDSDomain [

	domain := aDSDomain
]

{ #category : #accessing }
DDSingleDomain >> range [

	^ range
]

{ #category : #accessing }
DDSingleDomain >> range: aDSRange [

	range := aDSRange.
]
