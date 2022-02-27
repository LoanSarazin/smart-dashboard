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
	
	^ DSSingleDomain domain: aDSDomain

]

{ #category : #'instance creation' }
DSBuilder class >> consume: aCollection asDimensions: aCollection2 [ 
	
	^ aCollection 
		with: aCollection2 
		collect: [ :data :dimensionClass | dimensionClass consumeFrom: data ]

]

{ #category : #'as yet unclassified' }
DSBuilder class >> consumeCollection: aCollection asCollectionsOf: aDSDomain [ 
	
	^ DSSingleDomain domain: (DSSingleDomain domain: aDSDomain)
]

{ #category : #'instance creation' }
DSBuilder class >> consumeCollection: aCollection asCompositeElementsOf: aCollection2 [ 
	
	^ aCollection collect: [ :each | DSCompositeDomain data: each for: aCollection2 ]
]

{ #category : #compute }
DSBuilder >> chartFor: aCollection describedBy: aDataDescription [
	"Return the classes of the chart that can display the collection and her description."
	
	^ DSChart allSubclasses select: [ :each | each dashboardDescription
		canAccept: aCollection describedBy: aDataDescription ]
]

{ #category : #describe }
DSBuilder >> consume: aCollection as: aClass [ 

	^ self class consume: aCollection as: aClass 
]

{ #category : #describe }
DSBuilder >> consume: aCollection asAllOf: aClass [ 

	^ self class consume: aCollection asAllOf: aClass 
]

{ #category : #describe }
DSBuilder >> consume: aCollection asDimensions: aCollection2 [ 

	^ self class consume: aCollection asDimensions: aCollection2 
]

{ #category : #describe }
DSBuilder >> consumeCollection: aCollection asCollectionsOf: aClass [  

	^ self class consumeCollection: aCollection asCollectionsOf: aClass 
]

{ #category : #describe }
DSBuilder >> consumeCollection: aCollection asCompositeElementsOf: aCollection2 [ 

	^ self class consumeCollection: aCollection asCompositeElementsOf: aCollection2 
]
