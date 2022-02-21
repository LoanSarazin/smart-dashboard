Class {
	#name : #DSPieChart,
	#superclass : #DSChart,
	#instVars : [
		'collection'
	],
	#category : #'Dashboard-Charts-Domain'
}

{ #category : #description }
DSPieChart class >> dashboardDescription [ 

	^ DSChartDescription new
		kind: DSNumber;
		populationSize: (DSRange between: 2 and: 6);
		yourself 
]

{ #category : #examples }
DSPieChart class >> example [
	<script>
	
	| ch |
	ch := self new. 
	^ ch draw open 
]

{ #category : #drawing }
DSPieChart >> draw [
	<script>
	| pie |
	pie := RSPie new
		objects: collection;
		yourself.
	pie sliceShape
		segmentSpacing: 5;
		innerRadius: 50;
		externalRadius: 200;
		withBorder.
	pie
		sliceColor: NSScale google20;
		build.
	pie canvas zoomToFit.
	^ pie canvas
]

{ #category : #drawing }
DSPieChart >> fill [

	collection := #(0.15 0.5 0.05 0.03 0.07 0.2)
]
