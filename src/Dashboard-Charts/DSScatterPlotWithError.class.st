Class {
	#name : #DSScatterPlotWithError,
	#superclass : #DSChart,
	#instVars : [
		'xValues',
		'yValues',
		'errorValues'
	],
	#category : #'Dashboard-Charts-Domain'
}

{ #category : #examples }
DSScatterPlotWithError class >> dashboardDescription [

	^ DSChartDescription new
			kind: DS2D5Point ;
			populationSize: (DSRange between: 10 and: 300);
			yourself
	
]

{ #category : #examples }
DSScatterPlotWithError class >> example [
	<script>
	
	| ch |
	ch := self new. 
	^ ch draw open 
	
]

{ #category : #drawing }
DSScatterPlotWithError >> draw [

	| p |
	p := RSScatterPlot new x: xValues y: yValues.
	p color: Color blue translucent.

	c addPlot: p.

	c addDecoration: (RSHorizontalTick new doNotUseNiceLabel asFloat: 3).
	c addDecoration: RSVerticalTick new.
	c build.
	p ellipses models: errorValues.
		RSNormalizer size
			shapes: p ellipses;
			from: 2;
			to: 10;
			normalize: #yourself.
		RSNormalizer color
			shapes: p ellipses;
			normalize: #yourself.
	p ellipses translucent.
	^ c canvas
]

{ #category : #drawing }
DSScatterPlotWithError >> fill [ 

	 xValues := #(2 4 13 7 13 7 5 11 13 8 4 19 17 5 12 8 10 17 5 16 30 23 3 22 29 8 31 29 26 24 26 32 15 34 14 29 30 24 33 16 10 12 28 30 14 30 14 17 18 27 28 13 30 22 43 41 12 20 67 33 62 4 28 35 8 69 37 53 64 59 27 35 69 52 76 27 46 55 64 41 15 31 24 73 33 63 77 54 34 68 25 32 93 13 4 97 89 23 34 73).
	yValues :=  #(7 5 8 4 6 8 11 14 9 7 3 14 18 7 17 11 8 20 17 9 17 25 19 19 9 14 15 16 6 11 20 30 18 37 21 23 22 18 16 5 32 14 14 7 17 34 15 28 5 43 49 47 18 20 30 27 18 58 56 56 38 10 48 56 10 32 22 19 12 22 79 20 42 21 70 12 46 49 34 73 79 32 36 56 14 29 68 54 81 62 58 34 49 69 45 56 68 50 59 55).
	errorValues := #(9 4 9 11 8 6 8 4 12 8 10 17 18 13 16 7 17 24 22 13 26 9 15 24 27 13 16 18 35 9 34 16 23 25 17 24 23 15 29 16 20 16 27 7 46 46 42 51 55 37 5 34 27 48 6 57 16 61 33 34 60 41 31 52 58 17 32 66 70 53 26 4 15 56 70 47 72 59 12 17 20 38 36 23 74 73 10 47 17 66 28 20 67 83 64 9 89 37 29 59).
]
