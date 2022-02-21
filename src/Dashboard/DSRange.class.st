Class {
	#name : #DSRange,
	#superclass : #Object,
	#instVars : [
		'minimumAmount',
		'maximumAmount'
	],
	#classInstVars : [
		'minimumAmount',
		'maximumAmount'
	],
	#category : #'Dashboard-Chart-Domain'
}

{ #category : #'instance creation' }
DSRange class >> between: anInteger and: anInteger2 [ 

	^ self new
			minimumAmount: anInteger;
			maximumAmount: anInteger2;
			yourself
]

{ #category : #testing }
DSRange >> isWithin: anInteger [ 
	^ anInteger between: minimumAmount and: maximumAmount  
]

{ #category : #accessing }
DSRange >> maximumAmount: anInteger [ 
	maximumAmount := anInteger
]

{ #category : #accessing }
DSRange >> minimumAmount: anInteger [ 

	minimumAmount := anInteger
]
