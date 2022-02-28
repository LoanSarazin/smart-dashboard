Class {
	#name : #DDSingleData,
	#superclass : #DDDomain,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DDSingleData class >> canAcceptDomain: aDSDomain [

	^ self = aDSDomain or: [ self allSubclasses includes: aDSDomain ]
]

{ #category : #testing }
DDSingleData class >> canAcceptSize: aCollection [

	^ true
]

{ #category : #testing }
DDSingleData class >> canDescribe: aData [

	self subclassResponsibility
]

{ #category : #'instance creation' }
DDSingleData class >> consumeCollection: aCollection as: aClass [ 
	
	^ aCollection collect: [ :each | aClass new data: each ]
]

{ #category : #'instance creation' }
DDSingleData class >> consumeFrom: anInteger [

	^ self new data: anInteger ; yourself
]

{ #category : #accessing }
DDSingleData >> canAcceptDomain: aDSDomain [

	^ self class canAcceptDomain: aDSDomain
]

{ #category : #testing }
DDSingleData >> canDescribe: aData [

	self class canDescribe: aData
]
