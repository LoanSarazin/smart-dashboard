Class {
	#name : #DSSingleData,
	#superclass : #DSDomain,
	#category : #'Dashboard-Data-Domain'
}

{ #category : #'instance creation' }
DSSingleData class >> consumeCollection: aCollection as: aClass [ 
	
	^ aCollection collect: [ :each | aClass new data: each ]
]

{ #category : #'instance creation' }
DSSingleData class >> consumeFrom: anInteger [ 
	^ self new data: anInteger ; yourself
]

{ #category : #accessing }
DSSingleData >> kind [
	^ self class
]
