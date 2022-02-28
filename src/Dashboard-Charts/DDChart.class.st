Class {
	#name : #DDChart,
	#superclass : #Object,
	#instVars : [
		'c'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #description }
DDChart class >> dashboardDescription [ 

	^ SubclassResponsibility 
]

{ #category : #examples }
DDChart class >> example [
	<script>
	"example04VerticalStack"
	
	| ch |
	ch := self new. 
	ch draw open 
	
]

{ #category : #drawing }
DDChart >> draw [ 

	self fill
]

{ #category : #drawing }
DDChart >> fill [

	self subclassResponsibility 
]

{ #category : #drawing }
DDChart >> initialize [ 
	super initialize.
	c := RSChart new.
	self fill
]
