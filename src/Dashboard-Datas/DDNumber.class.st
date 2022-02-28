Class {
	#name : #DDNumber,
	#superclass : #DDSingleData,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DDNumber class >> canDescribe: aData [

	^ aData isNumber
]
