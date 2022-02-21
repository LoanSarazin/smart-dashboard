Class {
	#name : #DSPercentageComparisonStack,
	#superclass : #DSChart,
	#instVars : [
		'firstCollection',
		'secondCollection'
	],
	#category : #'Dashboard-Charts-Domain'
}

{ #category : #examples }
DSPercentageComparisonStack class >> dashboardDescription [

	^ DSChartDescription new
			kind: (DSCompositeDomain domains: {DSNumber . DSNumber}) ;
			populationSize: (DSRange between: 3 and: 15);
			yourself
	
]

{ #category : #examples }
DSPercentageComparisonStack class >> example [
	<script>

	| ch |
	ch := self new. 
	ch firstCollection: #(25 33 33); secondCollection: #( 50  66 35) .
	^ ch draw open 
	
]

{ #category : #drawing }
DSPercentageComparisonStack >> draw [

	| lb |
	c extent: 300@200.
	c barHeights: firstCollection.
	(c barHeights: secondCollection)
		bottom: firstCollection.
	c addDecoration: (RSHorizontalTick new fromNames: #(Day1 Day2 Day3 Day4 Day5)).
	c addDecoration: (RSVerticalTick new integer).
	c ylabel: 'Scores'.
	c title: 'Scores by group of gender'.
	c build.
	lb := RSLegend new.
	lb layout horizontal.
	#(Men Women) doWithIndex: [ :lbl :index | 
		lb text: lbl withBoxColor: (c plots at:index) computeColor ].
	lb container: c canvas.
	lb build.
	^ c canvas
]

{ #category : #drawing }
DSPercentageComparisonStack >> fill [

	firstCollection ifNil: [ #(20 35 30 35 27)].
	secondCollection ifNil: [ #(25 32 34 20 25)] .
]

{ #category : #accessing }
DSPercentageComparisonStack >> firstCollection [

	^ firstCollection
]

{ #category : #accessing }
DSPercentageComparisonStack >> firstCollection: anObject [

	firstCollection := anObject
]

{ #category : #accessing }
DSPercentageComparisonStack >> secondCollection [

	^ secondCollection
]

{ #category : #accessing }
DSPercentageComparisonStack >> secondCollection: anObject [

	secondCollection := anObject
]
