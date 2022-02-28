Class {
	#name : #DD2DPoint,
	#superclass : #DDDomain,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DD2DPoint class >> canAcceptDomain: aDSDomain [

	^ self = aDSDomain  
]

{ #category : #testing }
DD2DPoint class >> canAcceptSize: aCollection [

	^ true
]

{ #category : #testing }
DD2DPoint class >> canDescribe: aData [

	^ (aData isCollection and: [ aData size = 2 ]) and: [ 
		aData allSatisfy: [ :eachSubData |
			eachSubData isNumber ].
		]
]

{ #category : #'instance creation' }
DD2DPoint class >> consumeFrom: aCollection [ 
	
	^ self new data: (Point new setX: aCollection first setY: aCollection second); yourself
]

{ #category : #accessing }
DD2DPoint >> canAcceptDomain: aDSDomain [

	^ self class canAcceptDomain: aDSDomain
]

{ #category : #testing }
DD2DPoint >> canDescribe: aData [

	^ self class canDescribe: aData
]
