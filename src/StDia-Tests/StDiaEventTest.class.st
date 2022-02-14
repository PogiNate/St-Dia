Class {
	#name : #StDiaEventTest,
	#superclass : #TestCase,
	#instVars : [
		'easyEvent',
		'full'
	],
	#category : #'StDia-Tests'
}

{ #category : #initialization }
StDiaEventTest >> setUp [ 
	super setUp.
	easyEvent := DiaEvent new.
	"Create a version that uses all the interval methods."
	"full := DiaEvent new title: 'Tested' onceEvery: 14 leeway: 2."
]

{ #category : #tests }
StDiaEventTest >> testCreation [
	self 
		assert: (easyEvent class) equals: DiaEvent.
		
]
