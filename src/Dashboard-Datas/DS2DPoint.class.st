Class {
	#name : #DS2DPoint,
	#superclass : #DSDomain,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DS2DPoint class >> canAcceptDomain: aDSDomain [

	^ self = aDSDomain  
]

{ #category : #testing }
DS2DPoint class >> canAcceptSize: aCollection [

	^ true
]

{ #category : #testing }
DS2DPoint class >> canDescribe: aData [

	^ (aData isCollection and: [ aData size = 2 ]) and: [ 
		aData allSatisfy: [ :eachSubData |
			eachSubData isNumber ].
		]
]

{ #category : #'instance creation' }
DS2DPoint class >> consumeFrom: aCollection [ 
	
	^ self new data: (Point new setX: aCollection first setY: aCollection second); yourself
]

{ #category : #accessing }
DS2DPoint >> canAcceptDomain: aDSDomain [

	^ self class canAcceptDomain: aDSDomain
]

{ #category : #testing }
DS2DPoint >> canDescribe: aData [

	^ self class canDescribe: aData
]
