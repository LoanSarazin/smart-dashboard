Class {
	#name : #DDBuilder,
	#superclass : #Object,
	#category : #'Dashboard-Builder-Builder'
}

{ #category : #'instance creation' }
DDBuilder class >> consume: aCollection as: aClass [ 
	
	^  aClass consumeFrom: aCollection
]

{ #category : #'instance creation' }
DDBuilder class >> consume: aCollection asAllOf: aDSDomain [
	
	^ DDDataDescription domain:	(
		DDSingleDomain domain: aDSDomain
		)

]

{ #category : #'instance creation' }
DDBuilder class >> consume: aCollection asDimensions: aCollection2 [ 
	
	^ aCollection 
		with: aCollection2 
		collect: [ :data :dimensionClass | dimensionClass consumeFrom: data ]

]

{ #category : #'instance creation' }
DDBuilder class >> consumeCollection: aCollection asCollectionsOf: aDSDomain [ 
	
	^ DDDataDescription domain:	(
		DDSingleDomain domain: (DDSingleDomain domain: aDSDomain)
		)
]

{ #category : #'instance creation' }
DDBuilder class >> consumeCollection: aCollection asCompositeElementsOf: aDSDomainList [
	
	^ DDDataDescription domain:	(
		DDCompositeDomain domains: aDSDomainList
		)
]

{ #category : #compute }
DDBuilder >> chartFor: aCollection describedBy: aDataDescription [
	"Return the classes of the chart that can display the collection and her description."
	
	^ DDChart allSubclasses select: [ :each | each dashboardDescription
		canAccept: aCollection describedBy: aDataDescription ]
]

{ #category : #describe }
DDBuilder >> consume: aCollection asAllOf: aClass [ 

	^ self class consume: aCollection asAllOf: aClass 
]

{ #category : #describe }
DDBuilder >> consumeCollection: aCollection asCollectionsOf: aDSDomain [

	^ self class consumeCollection: aCollection asCollectionsOf: aDSDomain 
]

{ #category : #describe }
DDBuilder >> consumeCollection: aCollection asCompositeElementsOf: aDSDomainList [ 

	^ self class consumeCollection: aCollection asCompositeElementsOf: aDSDomainList 
]
