Class {
	#name : #DDCompositeDomain,
	#superclass : #DDContainer,
	#instVars : [
		'domains',
		'range'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #'instance creation' }
DDCompositeDomain class >> domains: aDSDomainCollection [ 
	^ self new
		domains: aDSDomainCollection;
		yourself
]

{ #category : #'instance creation' }
DDCompositeDomain class >> domains: aDSDomainCollection range: aDSRange [
	^ self new
		domains: aDSDomainCollection;
		range: aDSRange;
		yourself
]

{ #category : #'instance creation' }
DDCompositeDomain class >> example [ 
	<sampleInstance>
	
	^ (DDBuilder 
		consumeCollection: 
			#(
			(2.4 true 'rain')
			(0.5 true 'rain')
			(-1.2 true 'snow')
			(-2.3 false '-')
			(3.2 true 'rain')	) 
		asCompositeElementsOf: { DDTemperature . DDBoolean . DDEnumerated }) first
]

{ #category : #accessing }
DDCompositeDomain >> canAcceptDomain: aDSDomainCollection [
	"self represent the Domains accepted by a chart. aDSDomain is describing datas"
	^ aDSDomainCollection allSatisfy: [ :eachDSDomain |
		(self class =  eachDSDomain class) and: [ 
			self domains canAcceptDomain: eachDSDomain domain 
			].
		]
]

{ #category : #accessing }
DDCompositeDomain >> canAcceptSize: aCollection [ 

	^ (range isWithin: (aCollection size)) and: [
		(domains with: aCollection collect: [ :eachDSDomain :aData |
			eachDSDomain canAcceptSize: aData
			]) allSatisfy: [ :bool | bool ]
		]
]

{ #category : #accessing }
DDCompositeDomain >> domains [
	
	^ domains
]

{ #category : #accessing }
DDCompositeDomain >> domains: aDSDomainCollection [ 
	
	domains := aDSDomainCollection
]

{ #category : #accessing }
DDCompositeDomain >> range [
	
	^ range
]

{ #category : #accessing }
DDCompositeDomain >> range: aDSRange [ 
	
	range := aDSRange
]
