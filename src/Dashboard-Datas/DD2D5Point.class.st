Class {
	#name : #DD2D5Point,
	#superclass : #DD2DPoint,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DD2D5Point class >> canDescribe: aData [

	^ (aData isCollection and: [ aData size = 3 ]) and: [ 
		aData allSatisfy: [ :eachSubData |
			eachSubData isNumber ].
		]
]

{ #category : #'instance creation' }
DD2D5Point class >> consumeFrom: aCollection [ 
	
	^ (super consumeFrom: aCollection)
		marginError: aCollection third; 
		yourself 
]
