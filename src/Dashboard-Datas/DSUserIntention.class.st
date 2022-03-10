Class {
	#name : #DSUserIntention,
	#superclass : #Object,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSUserIntention class >> canAcceptUI: aDSUserIntention [

	^ self = aDSUserIntention or: [ self allSubclasses includes: aDSUserIntention ]
]

{ #category : #testing }
DSUserIntention >> canAcceptUI: aDSUserIntention [

	^ self class canAcceptUI: aDSUserIntention
]
