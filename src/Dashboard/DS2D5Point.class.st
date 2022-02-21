Class {
	#name : #DS2D5Point,
	#superclass : #DS2DPoint,
	#instVars : [
		'error'
	],
	#category : #'Dashboard-Data-Domain'
}

{ #category : #'instance creation' }
DS2D5Point class >> consumeFrom: aCollection [ 
	
	^ (super consumeFrom: aCollection)
		marginError: aCollection third; 
		yourself 
]

{ #category : #accessing }
DS2D5Point >> marginError [

	^ error
]

{ #category : #accessing }
DS2D5Point >> marginError: anInteger [ 
	error := anInteger
]
