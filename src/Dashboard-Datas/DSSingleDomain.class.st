Class {
	#name : #DSSingleDomain,
	#superclass : #DSContainer,
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

	^ (self range contain: (aCollection size)) and: [
		aCollection allSatisfy: [ :each |
			self domain canAcceptSize: each
			].
		]
]

{ #category : #testing }
DSSingleDomain >> canDescribe: aData [

	^ aData isCollection and: [ 
		aData allSatisfy: [ :eachSubData | self domain canDescribe: eachSubData ]
		]
]

{ #category : #testing }
DSSingleDomain >> goDeeperWith: aData [
	
	^ (aData isCollection
		and: [aData isString not ])
		and: [ self domain goDeeperWith: aData first ]
]
