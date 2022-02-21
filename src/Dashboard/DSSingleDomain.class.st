Class {
	#name : #DSSingleDomain,
	#superclass : #DSDomain,
	#instVars : [
		'domain'
	],
	#category : #'Dashboard-Data-Domain'
}

{ #category : #'as yet unclassified' }
DSSingleDomain class >> data: aCollection of: aClass [
	"aCollection is a colection of data, that can all be represented by aClass"
	^ self new
		data: aCollection;
		domain: aClass;
		yourself
]

{ #category : #accessing }
DSSingleDomain class >> domain: aClass [ 
	^ self new
		domain: aClass;
		yourself
]

{ #category : #accessing }
DSSingleDomain >> data: aCollection [ 
	data := aCollection 
]

{ #category : #accessing }
DSSingleDomain >> domain: aClass [ 
	domain := aClass
]

{ #category : #description }
DSSingleDomain >> kind [
	^ self
]
