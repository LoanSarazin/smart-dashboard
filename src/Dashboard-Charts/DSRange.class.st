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
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #'instance creation' }
DSRange class >> between: anInteger1 and: anInteger2 [ 

	^ self new
			minimumAmount: anInteger1;
			maximumAmount: anInteger2;
			yourself
]

{ #category : #'instance creation' }
DSRange class >> exactly: anInteger [

	^ self new
			minimumAmount: anInteger;
			maximumAmount: anInteger;
			yourself
]

{ #category : #testing }
DSRange >> contain: anInteger [

	^ anInteger between: minimumAmount and: maximumAmount  
]

{ #category : #accessing }
DSRange >> maximumAmount [

	^ maximumAmount
]

{ #category : #accessing }
DSRange >> maximumAmount: anInteger [ 
	maximumAmount := anInteger
]

{ #category : #accessing }
DSRange >> minimumAmount [ 

	^ minimumAmount
]

{ #category : #accessing }
DSRange >> minimumAmount: anInteger [ 

	minimumAmount := anInteger
]
