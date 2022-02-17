"
This class contains tests for the `DiaInterval` class, specifically around `DiaInterval>>createNextEvent` and other interval specific functionality.
"
Class {
	#name : #StDiaIntervalTest,
	#superclass : #TestCase,
	#instVars : [
		'empty',
		'full'
	],
	#category : #'StDia-Tests'
}

{ #category : #running }
StDiaIntervalTest >> setUp [ 

	super setUp. 
	empty := DiaInterval new.
	full := DiaInterval new repeats: 14; title: 'Do It Again!'.
	
	
]

{ #category : #tests }
StDiaIntervalTest >> testCreationEmpty [
"Make some assertions about an empty DiaInterval and ensure that it was created correctly."
self
	assert: empty title equals: 'a Boring Event';
	assert: empty nextEvent equals: nil
	
]

{ #category : #tests }
StDiaIntervalTest >> testCreationFull [
"Make some assertions about a DiaInterval that was created with all fields filled."
self
	assert: full title equals: 'Do It Again!';
	assert: full nextEvent equals: (Date today addDays: 14).
	
]
