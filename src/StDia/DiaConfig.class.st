"
`DiaConfig` holds a user's configuration settings while using `StDia`.

For now this is a configurable window of how long events should be ""visible"". 
"
Class {
	#name : #DiaConfig,
	#superclass : #Object,
	#instVars : [
		'visibleWindow'
	],
	#category : #'StDia-Configuration'
}

{ #category : #accessing }
DiaConfig >> visibleWindow [

	^ visibleWindow
]

{ #category : #accessing }
DiaConfig >> visibleWindow: aNumber [

	visibleWindow := aNumber 
]
