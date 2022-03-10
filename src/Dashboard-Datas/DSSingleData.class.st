Class {
	#name : #DSSingleData,
	#superclass : #DSDomain,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSSingleData class >> canAcceptDomain: aDSDomain [

	^ self = aDSDomain or: [ self allSubclasses includes: aDSDomain ]
]

{ #category : #testing }
DSSingleData class >> canAcceptSize: aCollection [

	^ true
]

{ #category : #testing }
DSSingleData class >> canDescribe: aData [

	self subclassResponsibility
]

{ #category : #'instance creation' }
DSSingleData class >> consumeCollection: aCollection as: aClass [ 
	
	^ aCollection collect: [ :each | aClass new data: each ]
]

{ #category : #'instance creation' }
DSSingleData class >> consumeFrom: anInteger [

	^ self new data: anInteger ; yourself
]

{ #category : #'as yet unclassified' }
DSSingleData class >> goDeeperWith: aData [ 
	
	^ aData isCollection and: [ aData isString not ]
]

{ #category : #accessing }
DSSingleData >> canAcceptDomain: aDSDomain [

	^ self class canAcceptDomain: aDSDomain
]

{ #category : #testing }
DSSingleData >> canDescribe: aData [

	self class canDescribe: aData
]
