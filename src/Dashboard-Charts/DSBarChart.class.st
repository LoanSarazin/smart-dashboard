Class {
	#name : #DSBarChart,
	#superclass : #DSChart,
	#instVars : [
		'collection'
	],
	#category : #'Dashboard-Charts-Domain'
}

{ #category : #examples }
DSBarChart class >> dashboardDescription [ 

	^ DSChartDescription new
			kind: (DSSingleDomain domain: DSNumber);
			populationSize: (DSRange between: 1 and: 4);
			yourself
]

{ #category : #examples }
DSBarChart class >> example [
	<script>
	
	| ch |
	ch := self new. 
	^ ch draw open 
]

{ #category : #drawing }
DSBarChart >> draw [
	| x size numberOfData |
	numberOfData := collection size.
	size := 6.
	x := 1 to: numberOfData.
	
	c extent: 300@ 200.
	
	collection doWithIndex: [ :serie :index |
		| plot |
		plot := RSBarPlot new x: (1 to: (serie size)) y: serie.
		plot barSize: size.
		plot barOffset: ((index-(numberOfData +1/ 2)) * size).
		c addPlot: plot.
		].
	
	c addDecoration: (RSHorizontalTick new 
		doNotUseNiceLabel;
		numberOfTicks: x size - 1;
		asFloat: 5;
		useVerticalLabel; 
		yourself).
	
	c build.

	^ c canvas
]

{ #category : #drawing }
DSBarChart >> fill [

	collection := #(
		#(43 55 74 16 73 21 85 57)
		#(54 72 89 65 53 42 71 41)
		#(43 85 28 89 27 14 67 83)
		#(60 32 80 43 90 36 76 63)
		)


]
