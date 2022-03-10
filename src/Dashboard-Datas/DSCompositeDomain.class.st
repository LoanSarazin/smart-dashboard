Class {
	#name : #DSCompositeDomain,
	#superclass : #DSContainer,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #'instance creation' }
DSCompositeDomain class >> domain: aDSDomainCollection [ 
	^ self new
		domain: aDSDomainCollection;
		yourself
]

{ #category : #'instance creation' }
DSCompositeDomain class >> domain: aDSDomain range: aDSRange [
	^ self new
		domain: aDSDomain;
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
		asCompositeElementsOf: { DSTemperature . DSBoolean . DSCategorical }) first
]

{ #category : #accessing }
DSCompositeDomain >> canAcceptDomain: aDSDomainCollection [
	"self represent the Domains accepted by a chart. aDSDomain is describing datas"
	^ aDSDomainCollection allSatisfy: [ :eachDSDomain |
		(self class =  eachDSDomain class) and: [ 
			self domain canAcceptDomain: eachDSDomain domain 
			].
		]
]

{ #category : #accessing }
DSCompositeDomain >> canAcceptSize: aCollection [ 

	^ (self range contain: (aCollection size)) and: [
		(self domain with: aCollection collect: [ :eachDSDomain :aData |
			eachDSDomain canAcceptSize: aData
			]) allSatisfy: [ :bool | bool ]
		]
]

{ #category : #accessing }
DSCompositeDomain >> canDescribe: aData [
	^ (aData isCollection 
		and: [ aData size = self domain size ])
		and: [ 
			(self domain with: aData collect: [ 
				:eachDSDomain :eachSubData| eachDSDomain canDescribe: eachSubData
				])
				allSatisfy: [ :eachbool | eachbool ]
			]
]

{ #category : #accessing }
DSCompositeDomain >> goDeeperWith: aData [
	| bool |
	bool := aData isCollection and: [aData isString not ].
	^ bool and: [
		(self domain with: aData collect: [ :eachSubDomain :eachSubData |
			eachSubDomain goDeeperWith: eachSubData
			]) allSatisfy: [ :eachBool | eachBool ]
		]
]
