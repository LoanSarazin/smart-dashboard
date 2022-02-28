Class {
	#name : #DDDomain,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DDDomain class >> canAcceptDomain: aDSDomain [

	self subclassResponsibility 
]

{ #category : #testing }
DDDomain class >> canAcceptSize: aCollection [

	self subclassResponsibility 
]

{ #category : #accessing }
DDDomain >> canAcceptDomain: aDSDomain [

	self subclassResponsibility 
]

{ #category : #testing }
DDDomain >> canDescribe: aData [

	self subclassResponsibility
]
