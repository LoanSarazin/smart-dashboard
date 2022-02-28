Class {
	#name : #DDContainer,
	#superclass : #DDDomain,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DDContainer class >> canAcceptDomain: aDSDomain [

	^ false
]

{ #category : #testing }
DDContainer class >> canAcceptSize: aCollection [

	^ false
]

{ #category : #accessing }
DDContainer >> canAcceptDomain: aDSDomain [

	self subclassResponsibility 
]

{ #category : #testing }
DDContainer >> canDescribe: aData [

	^ aData isCollection and: [ 
		aData allSatisfy: [ :eachSubData | self domain canDescribe: eachSubData ]
		]
]

{ #category : #'instance creation' }
DDContainer >> consumeFrom: aCollection [
	
	^ nil
]
