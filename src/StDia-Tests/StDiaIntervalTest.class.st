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

{ #category : #initialization }
StDiaIntervalTest >> setUp [ 

	super setUp. 
	empty := DiaInterval new.
	full := DiaInterval new repeats: 14; title: 'Do It Again!'.
	
	
]
