Class {
	#name : #DSContainer,
	#superclass : #DSDomain,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSContainer class >> canAcceptDomain: aDSDomain [

	^ false
]

{ #category : #testing }
DSContainer class >> canAcceptSize: aCollection [

	^ false
]

{ #category : #accessing }
DSContainer >> canAcceptDomain: aDSDomain [

	self subclassResponsibility 
]

{ #category : #testing }
DSContainer >> canDescribe: aData [

	^ aData isCollection and: [ 
		aData allSatisfy: [ :eachSubData | self domain canDescribe: eachSubData ]
		]
]

{ #category : #'instance creation' }
DSContainer >> consumeFrom: aCollection [
	
	^ nil
]
