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

{ #category : #running }
StDiaIntervalTest >> tearDown [ 
full := nil.
empty := nil.
super tearDown.
]

{ #category : #tests }
StDiaIntervalTest >> testCompleteEvent [
	"Test the functionality of completing an event."
	full setNextEvent: (Date today subtractDays: 12).
	self assert: full nextEvent equals:(Date today subtractDays: 12).
	full completeEvent.
	self
		"Full has an interval of 14 days, so this should work."
		assert: full nextEvent equals: (Date today addDays: 14).
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
