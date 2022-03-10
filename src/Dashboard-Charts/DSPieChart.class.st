Class {
	#name : #DSPieChart,
	#superclass : #DSChart,
	#instVars : [
		'collection'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #description }
DSPieChart class >> dashboardDescription [ 

	^ {
		DSChartDescription
			domain: (
			DSDataDescription domain: (
				DSSingleDomain domain: DSNumerical range: (DSRange between: 2 and: 6)
				)
			)
		}
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
