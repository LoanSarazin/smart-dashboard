Class {
	#name : #DDPieChart,
	#superclass : #DDChart,
	#instVars : [
		'collection'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #description }
DDPieChart class >> dashboardDescription [ 

	^ DDChartDescription new
			descriptions: {
			DDDataDescription domain: (
				DDSingleDomain domain: DDNumber range: (DDRange between: 3 and: 6)
			)};
			yourself
]

{ #category : #examples }
DDPieChart class >> example [
	<script>
	
	| ch |
	ch := self new. 
	^ ch draw open 
]

{ #category : #drawing }
DDPieChart >> draw [
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
DDPieChart >> fill [

	collection := #(0.15 0.5 0.05 0.03 0.07 0.2)
]
