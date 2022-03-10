Class {
	#name : #DSNumerical,
	#superclass : #DSSingleData,
	#category : #'Dashboard-Datas-Data-Domain'
}

{ #category : #testing }
DSNumerical class >> canDescribe: aData [

	^ aData isNumber
]
