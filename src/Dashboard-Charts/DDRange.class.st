Class {
	#name : #DDRange,
	#superclass : #Object,
	#instVars : [
		'minimumAmount',
		'maximumAmount'
	],
	#classInstVars : [
		'minimumAmount',
		'maximumAmount'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #'instance creation' }
DDRange class >> between: anInteger1 and: anInteger2 [ 

	^ self new
			minimumAmount: anInteger1;
			maximumAmount: anInteger2;
			yourself
]

{ #category : #'instance creation' }
DDRange class >> exactly: anInteger [

	^ self new
			minimumAmount: anInteger;
			maximumAmount: anInteger;
			yourself
]

{ #category : #testing }
DDRange >> isWithin: anInteger [

	^ anInteger between: minimumAmount and: maximumAmount  
]

{ #category : #accessing }
DDRange >> maximumAmount [

	^ maximumAmount
]

{ #category : #accessing }
DDRange >> maximumAmount: anInteger [ 
	maximumAmount := anInteger
]

{ #category : #accessing }
DDRange >> minimumAmount [ 

	^ minimumAmount
]

{ #category : #accessing }
DDRange >> minimumAmount: anInteger [ 

	minimumAmount := anInteger
]
