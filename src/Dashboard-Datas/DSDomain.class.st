Class {
	#name : #DSDomain,
	#superclass : #Object,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSDomain class >> canAcceptDomain: aDSDomain [

	self subclassResponsibility 
]

{ #category : #testing }
DSDomain class >> canAcceptSize: aCollection [

	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
DSDomain class >> goDeeperWith: aData [ 
	
	self subclassResponsibility
]

{ #category : #accessing }
DSDomain >> canAcceptDomain: aDSDomain [

	self subclassResponsibility 
]

{ #category : #testing }
DSDomain >> canDescribe: aData [

	self subclassResponsibility
]
