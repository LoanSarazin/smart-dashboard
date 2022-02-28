Class {
	#name : #DDDimensionTest,
	#superclass : #TestCase,
	#category : #'Dashboard-Datas-Tests'
}

{ #category : #tests }
DDDimensionTest >> testCompositeDimension [

	| res | 
	res := DDBuilder 
		consumeCollection: 
			#(
			(2.4 true 'rain')
			(0.5 true 'rain')
			(-1.2 true 'snow')
			(-2.3 false '-')
			(3.2 true 'rain')	) 
		asCompositeElementsOf: { DDTemperature . DDBoolean . DDEnumerated }.
	self assert: res size equals: 5.
	self assert: res first first type equals: DDTemperature.
	self assert: res first second type equals: DDBoolean.
	self assert: res first third type equals: DDEnumerated
	
	 
]

{ #category : #tests }
DDDimensionTest >> testSimpleDimension [

	| res |
	res := (DDBuilder consume: #(100 200) as: DD2DPoint).
	self assert: res x equals: 100.
	self assert: res y equals: 200.
	self assert: res type equals: DD2DPoint
	 
]

{ #category : #tests }
DDDimensionTest >> testSimpleDimension2 [

	| res |
	res := DDBuilder consume: #(118 60) asDimensions: { DSHeight . DSWeight }.
	self assert: res first height equals: 118.
	self assert: res second weight equals: 60.
	self assert: res first type equals: DSHeight.
	self assert: res second type equals: DSWeight
	 
]

{ #category : #tests }
DDDimensionTest >> testSimpleDimension2d5 [

	| res |
	res := (DDBuilder consume: #(100 200 5) as: DD2D5Point).
	self assert: res x equals: 100.
	self assert: res y equals: 200.
	self assert: res marginError equals: 5.
	self assert: res type equals: DD2D5Point
	 
]

{ #category : #tests }
DDDimensionTest >> testSimpleListOfNumber [

	| res |
	res := DDBuilder 
				consume: #( 33 44 55 66 98 77 88 898 45 3 2 3 4 2222 4442 1 2 34 4 44 ) 
				asAllOf: DDNumber.
	self assert: res first data first equals: 33.
	self assert: res first data last equals: 44.
	
]
