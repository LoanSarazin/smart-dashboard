Class {
	#name : #DS2DPoint,
	#superclass : #DSDomain,
	#category : #'Dashboard-Data-Domain'
}

{ #category : #'instance creation' }
DS2DPoint class >> consumeFrom: aCollection [ 
	
	^ self new data: (Point new setX: aCollection first setY: aCollection second); yourself
]

{ #category : #description }
DS2DPoint >> kind [

	^ self class
]

{ #category : #accessing }
DS2DPoint >> x [
	^ data x
]

{ #category : #accessing }
DS2DPoint >> y [
	^ data y
]
