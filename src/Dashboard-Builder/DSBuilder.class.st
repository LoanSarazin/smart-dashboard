Class {
	#name : #DSBuilder,
	#superclass : #Object,
	#category : #'Dashboard-Builder-Builder'
}

{ #category : #'instance creation' }
DSBuilder class >> consumes: aDataCollection as: aDSDomain [
	
	^  DSDataDescription domain: aDSDomain
]

{ #category : #'instance creation' }
DSBuilder class >> consumes: aDataCollection asAllOf: aDSDomain [
	| element |
	element := aDataCollection first.
	(aDSDomain goDeeperWith: element)
		ifTrue: [ ^ DSSingleDomain domain:
			(self consumes: element asAllOf: aDSDomain) ]
		ifFalse: [ ^ DSSingleDomain domain: aDSDomain ]

]

{ #category : #'instance creation' }
DSBuilder class >> consumes: aCollection asCompositeElementsOf: aDSDomainCollection [
	| element |
	element := aCollection first.
	(element isCollection and: [
		aDSDomainCollection first goDeeperWith: element ])
			ifTrue: [ ^ DSSingleDomain domain:
				(self consumes: element asCompositeElementsOf: aDSDomainCollection)
				]
			ifFalse: [ ^ DSCompositeDomain domain: aDSDomainCollection ]
]

{ #category : #'instance creation' }
DSBuilder class >> describes: aDataCollection asAllOf: aDSDomain [
	
	aDSDomain isCollection
		ifFalse: [ 
			^ DSDataDescription domain: (self consumes: aDataCollection asAllOf: aDSDomain) 
			]
		ifTrue: [ 
			^ DSDataDescription domain: (self consumes: aDataCollection asCompositeElementsOf: aDSDomain) 
			]

	

]

{ #category : #compute }
DSBuilder >> chartFor: aCollection describedBy: aDataDescription [
	"Return the classes of the chart that can display the collection and her description."
	^ (aDataDescription canDescribe: aCollection) and: (
		DSChart allSubclasses select: [ :eachClass | 
			eachClass dashboardDescription anySatisfy: [ :eachChartDescription |
				eachChartDescription canAccept: aCollection describedBy: aDataDescription
				]
			]
		)
]

{ #category : #describe }
DSBuilder >> consumeCollection: aCollection asCompositeElementsOf: aDSDomainList [ 

	^ self class consumeCollection: aCollection asCompositeElementsOf: aDSDomainList 
]

{ #category : #describe }
DSBuilder >> consumes: aCollection asAllOf: aClass [ 

	^ self class consumes: aCollection asAllOf: aClass 
]

{ #category : #describe }
DSBuilder >> describes: aDataCollection asAllOf: aDSDomain [

	^ self class describes: aDataCollection asAllOf: aDSDomain
]
