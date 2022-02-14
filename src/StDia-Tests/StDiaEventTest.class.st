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
	full := DiaEvent new title: 'BaseEvent'; leeway:4; repeats: 28.
]

{ #category : #tests }
StDiaEventTest >> testCreation [
	"Testing the creation of our Event Objects."
	self 
		assert: easyEvent class equals: DiaEvent;
		assert: easyEvent title equals: 'a Boring Event';
		assert: easyEvent repeats equals: nil;
		assert: easyEvent leeway equals: 0;
		assert: full title equals: 'BaseEvent'
]
