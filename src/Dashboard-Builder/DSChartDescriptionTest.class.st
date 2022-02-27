Class {
	#name : #DSChartDescriptionTest,
	#superclass : #TestCase,
	#instVars : [
		'des'
	],
	#category : #'Dashboard-Builder-Tests'
}

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingBarChart [
 
	| b data wrappedData |
	data := #(
		(43 55 74 16 73 21 85 57)
		(54 72 89 65 53 42 71 41)
		(43 85 28 89 27 14 67 83)
		(60 32 80 43 90 36 76 63)
		).
		
	b := DSBuilder new.
	wrappedData := b
		consumeCollection: data
		asCollectionsOf: DSNumber.
	self assert: (b chartFor: data describedBy: wrappedData) first equals: DSBarChart
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingBoxPl [
 
	| b data wrappedData |
	data := {
		{	{ 1. 2. 3. 4. 5. 6. 7. 8. 9. 10.} .
			{ 5. 6. 7. 5. 10. 8. 6. 6. 5. 9. } .
			{ 12. 12. 13. 14. 15. 24. 20. 15. 16. 14. } } .
		{	{ 1. 2. 2. 2. 3. 4. 3. 5. 12. } .
			{ 1. 12. 7. 10. 11. 11. 15. 10. } .
			{ 12. 12. 13. 15. 18. 20. 21. 24. } }.
		{	{ 1. 2. 3. 3. 3. 5. 3. 5. 5. 7. 8. 5. 6. 10. 11. } .
			{ 12. 7. 10. 11. 11. 13. 10. 11. 12. 11. 15. 16. } .
			{ 12. 12. 13. 15. 18. 20. 21. 24. 25. 24. 25. 26. 24. 23. 23. 25. 25. }} .
		}.
	b  := DSBuilder new.
	wrappedData := b 
		consumeCollection: data
		asCollectionsOf: (DSSingleDomain domain: DSNumber).
		"we are wrapping each element of the serie (i.e. a group of 3 collections) together"
	self assert: (b chartFor: data describedBy: wrappedData) first equals: DSBoxPlot
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingHistogram1 [
 
	| b data wrappedData |
	data := #(33 44 55 66 98 77 88 898 45 3 2 3 4 2222 4442 1 2 34 4 44 ).
	b := DSBuilder new.
	wrappedData := b 
		consume: data
		asAllOf: DSNumber.
	self assert: (b chartFor: data describedBy: wrappedData) first equals: DSHistogram 
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingHistogram2 [
 
	| b data wrappedData |
	data := #('rain' 'snow' 'rain' 'sun' 'sun' 'sun' 'rain' 'rain' 'sun' 'snow' 'cloud').
	b := DSBuilder new.
	wrappedData := b 
		consume: data
		asAllOf: DSEnumerated.
	self assert: (b chartFor: data describedBy: wrappedData) first equals: DSHistogram 
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingPieChart [
 
	| b data wrappedData |
	data := #(0.1 0.6 0.05 0.15 0.08 0.02).
	b := DSBuilder new.
	wrappedData := b 
		consume: data
		asAllOf: DSNumber.
	self assert: (b chartFor: data describedBy: wrappedData) first equals: DSPieChart
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingPieChart2 [
 
	| b data wrappedData |
	data := #(0.1 0.6 0.05 0.15 0.08 0.02).
	b := DSBuilder new.
	wrappedData := b 
		consume: data
		asAllOf: DSTemperature.
	self assert: (b chartFor: data describedBy: wrappedData) first equals: DSPieChart
]

{ #category : #tests }
DSChartDescriptionTest >> testIsBuilderSelectingScatterPlot [
 
	| b data wrappedData |
	data := #(
		(33 44 5) 
		(55 66 2) 
		(34 56 1) 
		(101 100 30) 
		(98 77 4)
		(88 34 2) 
		(898 45 3)
		(2 3 4) 
		(224 23 4) 
		(444 50 2) 
		(34 4 44 )
		).
	b := DSBuilder new.
	wrappedData := b 
		consume: data
		asAllOf: DS2D5Point.
	self assert: (b chartFor: data describedBy: wrappedData) first equals: DSScatterPlotWithError  
]
