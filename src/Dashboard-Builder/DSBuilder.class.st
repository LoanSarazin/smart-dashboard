Class {
	#name : #DSBuilder,
	#superclass : #Object,
	#category : #'Dashboard-Builder-Builder'
}

{ #category : #'instance creation' }
DSBuilder class >> consume: aCollection as: aClass [ 
	
	^  aClass consumeFrom: aCollection
]

{ #category : #'instance creation' }
DSBuilder class >> consume: aCollection asAllOf: aDSDomain [
	
	^ DSDataDescription domain:	(
		DSSingleDomain domain: aDSDomain
		)

]

{ #category : #'instance creation' }
DSBuilder class >> consume: aCollection asDimensions: aCollection2 [ 
	
	^ aCollection 
		with: aCollection2 
		collect: [ :data :dimensionClass | dimensionClass consumeFrom: data ]

]

{ #category : #'instance creation' }
DSBuilder class >> consumeCollection: aCollection asCollectionsOf: aDSDomain [ 
	
	^ DSDataDescription domain:	(
		DSSingleDomain domain: (DSSingleDomain domain: aDSDomain)
		)
]

{ #category : #'instance creation' }
DSBuilder class >> consumeCollection: aCollection asCompositeElementsOf: aDSDomainList [
	
	^ DSDataDescription domain:	(
		DSCompositeDomain domains: aDSDomainList
		)
]

{ #category : #compute }
DSBuilder >> chartFor: aCollection describedBy: aDataDescription [
	"Return the classes of the chart that can display the collection and her description."
	
	^ DSChart allSubclasses select: [ :each | each dashboardDescription
		canAccept: aCollection describedBy: aDataDescription ]
]

{ #category : #describe }
DSBuilder >> consume: aCollection asAllOf: aClass [ 

	^ self class consume: aCollection asAllOf: aClass 
]

{ #category : #describe }
DSBuilder >> consumeCollection: aCollection asCollectionsOf: aDSDomain [

	^ self class consumeCollection: aCollection asCollectionsOf: aDSDomain 
]

{ #category : #describe }
DSBuilder >> consumeCollection: aCollection asCompositeElementsOf: aDSDomainList [ 

	^ self class consumeCollection: aCollection asCompositeElementsOf: aDSDomainList 
]
