Class {
	#name : #DSDimensionTest,
	#superclass : #TestCase,
	#category : #'Dashboard-Datas-Tests'
}

{ #category : #tests }
DSDimensionTest >> testCompositeCreation1 [

	| data wrappedData | 
	data := #(
		(2.4 true 'rain')
		(0.5 true 'rain')
		(-1.2 true 'snow')
		(-2.3 false '-')
		(3.2 true 'rain')	
		) .
	wrappedData := DSBuilder 
		describes: data
		asAllOf: { DSTemperature . DSBoolean . DSCategorical }.
		
	self assert: (wrappedData canDescribe: data)
	
	 
]

{ #category : #tests }
DSDimensionTest >> testCompositeCreation2 [

	| data wrappedData | 
	data := #(
		(1 2 3)
		('rain' 'cloud' 'sun')
		) .
	wrappedData := DSBuilder 
		describes: data
		asAllOf: {
			DSSingleDomain domain: DSNumerical .
			DSSingleDomain domain: DSCategorical
			}.
	self assert: (wrappedData canDescribe: data)
	
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension [
	
	| wrappedData |
	wrappedData := (DSBuilder consumes: #(100 200) as: DS2DPoint).
	self assert: wrappedData domain equals: DS2DPoint
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension2 [

	| wrappedData |
	wrappedData := DSBuilder consumes: #(12 15) asCompositeElementsOf: { DSAge . DSNumerical }.
	self assert: wrappedData domain equals: { DSAge . DSNumerical }
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension2d5 [

	| wrappedData |
	wrappedData := (DSBuilder consumes: #(100 200 5) as: DS2D5Point).
	self assert: wrappedData domain equals: DS2D5Point
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleListOfNumber [

	| wrappedData |
	wrappedData := DSBuilder 
				describes: #( 33 44 55 66 98 77 88 898 45 3 2 3 4 2222 4442 1 2 34 4 44 ) 
				asAllOf: DSNumerical.
	self assert: wrappedData domain domain = DSNumerical
	
]
