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
			kind: {DSSingleDomain domain: DSNumber range: (DSRange between: 3 and: 6)};
			populationSize: (DSRange exactly: 1);
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
		segmentSpacing: 0;
		innerRadius: 0;
		externalRadius: 200;
		withBorder.
	pie
		sliceColor: NSScale google20;
		build.
	pie canvas zoomToFit.
	
	^ pie
]

{ #category : #drawing }
DSPieChart >> fill [

	collection := #(0.15 0.5 0.05 0.03 0.07 0.2)
]
