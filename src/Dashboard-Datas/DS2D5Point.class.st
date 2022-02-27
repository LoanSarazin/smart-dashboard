Class {
	#name : #DS2D5Point,
	#superclass : #DS2DPoint,
	#instVars : [
		'error'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DS2D5Point class >> canDescribe: aData [

	^ (aData isCollection and: [ aData size = 3 ]) and: [ 
		aData allSatisfy: [ :eachSubData |
			eachSubData isNumber ].
		]
]

{ #category : #'instance creation' }
DS2D5Point class >> consumeFrom: aCollection [ 
	
	^ (super consumeFrom: aCollection)
		marginError: aCollection third; 
		yourself 
]
