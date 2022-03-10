Class {
	#name : #DSCategorical,
	#superclass : #DSSingleData,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSCategorical class >> canDescribe: aData [

	^ aData isLiteral or: [ aData isNumber ]
]
