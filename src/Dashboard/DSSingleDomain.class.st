Class {
	#name : #DSSingleDomain,
	#superclass : #DSDomain,
	#instVars : [
		'domain',
		'range'
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
DSSingleDomain class >> domain: aClass range: aRange [
	^ self new
		domain: aClass;
		range: aRange;
		yourself
]

{ #category : #accessing }
DSSingleDomain >> canAcceptKind: aDataDescriptionList [
	^ aDataDescriptionList anySatisfy: [ :each |
		((each class = self class)
			and: [ each domain = self domain ])
			and: [ each range isWithin: (self data size) ]
		]
]

{ #category : #accessing }
DSSingleDomain >> data [

	^ data
]

{ #category : #accessing }
DSSingleDomain >> data: aCollection [ 
	data := aCollection 
]

{ #category : #accessing }
DSSingleDomain >> domain [

	^ domain
]

{ #category : #accessing }
DSSingleDomain >> domain: aClass [ 
	domain := aClass
]

{ #category : #description }
DSSingleDomain >> kind [
	^ self
]

{ #category : #accessing }
DSSingleDomain >> range [

	^ range
]

{ #category : #accessing }
DSSingleDomain >> range: aDSRange [ 
	range := aDSRange.
]
