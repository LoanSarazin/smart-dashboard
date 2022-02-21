Class {
	#name : #DSChart,
	#superclass : #Object,
	#instVars : [
		'c'
	],
	#category : #'Dashboard-Charts-Domain'
}

{ #category : #description }
DSChart class >> dashboardDescription [ 

	^ SubclassResponsibility 
]

{ #category : #examples }
DSChart class >> example [
	<script>
	"example04VerticalStack"
	
	| ch |
	ch := self new. 
	ch draw open 
	
]

{ #category : #drawing }
DSChart >> draw [ 

	self fill
]

{ #category : #drawing }
DSChart >> fill [

	self subclassResponsibility 
]

{ #category : #drawing }
DSChart >> initialize [ 
	super initialize.
	c := RSChart new.
	self fill
]
