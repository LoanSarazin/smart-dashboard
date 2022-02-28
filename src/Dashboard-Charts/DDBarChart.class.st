Class {
	#name : #DDBarChart,
	#superclass : #DDChart,
	#instVars : [
		'collection'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #examples }
DDBarChart class >> dashboardDescription [ 

	^ DDChartDescription new
			descriptions: {
			DDDataDescription domain: (
				DDSingleDomain
					domain: (DDSingleDomain
						domain: DDNumber
						range: (DDRange between: 2 and: 20)
						)
					range: (DDRange between: 1 and: 4)
				)};
			yourself
]

{ #category : #examples }
DDBarChart class >> example [
	<script>
	
	| ch |
	ch := self new. 
	^ ch draw open 
]

{ #category : #drawing }
DDBarChart >> draw [
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
		
	^ c
]

{ #category : #drawing }
DDBarChart >> fill [

	collection := #(
		#(43 55 74 16 73 21 85 57)
		#(54 72 89 65 53 42 71 41)
		#(43 85 28 89 27 14 67 83)
		#(60 32 80 43 90 36 76 63)
		)


]
