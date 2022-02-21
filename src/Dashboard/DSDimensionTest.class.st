Class {
	#name : #DSDimensionTest,
	#superclass : #TestCase,
	#category : #'Dashboard-Tests'
}

{ #category : #tests }
DSDimensionTest >> testCompositeDimension [

	| res | 
	res := DSBuilder 
		consumeCollection: 
			#(
			(2.4 true 'rain')
			(0.5 true 'rain')
			(-1.2 true 'snow')
			(-2.3 false '-')
			(3.2 true 'rain')	) 
		asCompositeElementsOf: { DSTemperature . DSBoolean . DSEnumerated }.
	self assert: res size equals: 5.
	self assert: res first first type equals: DSTemperature.
	self assert: res first second type equals: DSBoolean.
	self assert: res first third type equals: DSEnumerated
	
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension [

	| res |
	res := (DSBuilder consume: #(100 200) as: DS2DPoint).
	self assert: res x equals: 100.
	self assert: res y equals: 200.
	self assert: res type equals: DS2DPoint
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension2 [

	| res |
	res := DSBuilder consume: #(118 60) asDimensions: { DSHeight . DSWeight }.
	self assert: res first height equals: 118.
	self assert: res second weight equals: 60.
	self assert: res first type equals: DSHeight.
	self assert: res second type equals: DSWeight
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleDimension2d5 [

	| res |
	res := (DSBuilder consume: #(100 200 5) as: DS2D5Point).
	self assert: res x equals: 100.
	self assert: res y equals: 200.
	self assert: res marginError equals: 5.
	self assert: res type equals: DS2D5Point
	 
]

{ #category : #tests }
DSDimensionTest >> testSimpleListOfNumber [

	| res |
	res := DSBuilder 
				consume: #( 33 44 55 66 98 77 88 898 45 3 2 3 4 2222 4442 1 2 34 4 44 ) 
				asAllOf: DSNumber.
	self assert: res first data equals: 33.
	self assert: res last data equals: 44.
	
]
