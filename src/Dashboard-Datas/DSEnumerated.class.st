Class {
	#name : #DSEnumerated,
	#superclass : #DSSingleData,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSEnumerated class >> canDescribe: aData [

	^ aData isString or: [ aData isNumber ]
]