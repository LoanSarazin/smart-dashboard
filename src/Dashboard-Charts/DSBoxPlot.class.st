Class {
	#name : #DSBoxPlot,
	#superclass : #DSChart,
	#instVars : [
		'collection'
	],
	#category : #'Dashboard-Charts-Chart-Domain'
}

{ #category : #examples }
DSBoxPlot class >> dashboardDescription [ 

	^ DSChartDescription new
			kind: {
				DSSingleDomain
					domain: (DSSingleDomain 
						domain: (DSSingleDomain 
							domain: DSNumber
							"number of datas per series"
							range: (DSRange between: 8 and: 10000))
						"number of categories"
						range: (DSRange between: 1 and: 4))
					"number of groups of categories (i.e. general series)"
					range: (DSRange between: 1 and: 20)
					};
			yourself
]

{ #category : #examples }
DSBoxPlot class >> example [
	<script>
	
	| ch |
	ch := self new. 
	^ ch draw open 
]

{ #category : #drawing }
DSBoxPlot >> draw [
	| x size numberOfData |
	numberOfData := collection size.
	x := 1 to: numberOfData.
	
	size := 12.
	
	collection doWithIndex: [ :serie :index |
		| plot |
		plot := RSBoxPlot new y: serie.
		plot barSize: size.
		plot barOffset: (size * (index - 1)).
		c addPlot: plot.
		].
	
	c addDecoration: (RSHorizontalTick new fromNames: x).
	c addDecoration: (RSVerticalTick new integer).
	
	^ c
]

{ #category : #drawing }
DSBoxPlot >> fill [

	collection :={
		{	{ 1. 2. 3. 4. 5. } .
			{ 5. 6. 7. 5. 10. } .
			{ 12. 12. 13. 14. 15. 24. }
		}.
		{ 
			{ 1. 2. 2. 2. 3. 4. 3. 5. 12. } .
			{ 1. 12. 7. 10. 11. 11. 15. 10. } .
			{ 12. 12. 13. 15. 18. 20. 21. 24. }
		}.
		{
			{ 1. 2. 3. 3. 3. 5. 3. 5. 5. 7. 8. 5. 6. 10. 11. } .
			{ 12. 7. 10. 11. 11. 13. 10. 11. 12. 11. 15. 16. } .
			{ 12. 12. 13. 15. 18. 20. 21. 24. 25. 24. 25. 26. 24. 23. 23. 25. 25. }
		}.
	}
]
