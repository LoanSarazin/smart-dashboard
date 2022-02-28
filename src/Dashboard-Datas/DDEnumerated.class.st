Class {
	#name : #DDEnumerated,
	#superclass : #DDSingleData,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DDEnumerated class >> canDescribe: aData [

	^ aData isLiteral or: [ aData isNumber ]
]
