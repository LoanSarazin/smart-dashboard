Class {
	#name : #DSCompositeDomain,
	#superclass : #DSContainer,
	#instVars : [
		'domains',
		'range'
	],
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #'instance creation' }
DSCompositeDomain class >> domains: aDSDomainCollection [ 
	^ self new
		domains: aDSDomainCollection;
		yourself
]

{ #category : #'instance creation' }
DSCompositeDomain class >> domains: aDSDomainCollection range: aDSRange [
	^ self new
		domains: aDSDomainCollection;
		range: aDSRange;
		yourself
]

{ #category : #'instance creation' }
DSCompositeDomain class >> example [ 
	<sampleInstance>
	
	^ (DSBuilder 
		consumeCollection: 
			#(
			(2.4 true 'rain')
			(0.5 true 'rain')
			(-1.2 true 'snow')
			(-2.3 false '-')
			(3.2 true 'rain')	) 
		asCompositeElementsOf: { DSTemperature . DSBoolean . DSEnumerated }) first
]

{ #category : #accessing }
DSCompositeDomain >> canAcceptDomain: aDSDomainCollection [
	"self represent the Domains accepted by a chart. aDSDomain is describing datas"
	^ aDSDomainCollection allSatisfy: [ :eachDSDomain |
		(self class =  eachDSDomain class) and: [ 
			self domains canAcceptDomain: eachDSDomain domain 
			].
		]
]

{ #category : #accessing }
DSCompositeDomain >> canAcceptSize: aCollection [ 

	^ (range isWithin: (aCollection size)) and: [
		(domains with: aCollection collect: [ :eachDSDomain :aData |
			eachDSDomain canAcceptSize: aData
			]) allSatisfy: [ :bool | bool ]
		]
]

{ #category : #accessing }
DSCompositeDomain >> domains [
	
	^ domains
]

{ #category : #accessing }
DSCompositeDomain >> domains: aDSDomainCollection [ 
	
	domains := aDSDomainCollection
]

{ #category : #accessing }
DSCompositeDomain >> range [
	
	^ range
]

{ #category : #accessing }
DSCompositeDomain >> range: aDSRange [ 
	
	range := aDSRange
]
