Class {
	#name : #DSDomain,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'Dashboard-Data-Domain'
}

{ #category : #accessing }
DSDomain >> data: aPoint [ 
	data := aPoint
]

{ #category : #accessing }
DSDomain >> type [
	^ self class
]
