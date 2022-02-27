Class {
	#name : #DSNumber,
	#superclass : #DSSingleData,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSNumber class >> canDescribe: aData [

	^ aData isNumber
]
