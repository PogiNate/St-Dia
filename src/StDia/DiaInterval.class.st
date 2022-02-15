"
A child of the `DiaEvent` class, a `DiaInterval` represents an event that can happen a few days before or after its nextEvent.
"
Class {
	#name : #DiaInterval,
	#superclass : #DiaEvent,
	#category : #StDia
}

{ #category : #'accessing - private' }
DiaInterval >> createNextEvent [
	"Creates the next event from today"
	nextEvent := Date today + repeats asDays.
	^nextEvent
]

{ #category : #initialization }
DiaInterval >> initialize [ 
	super initialize.
	^self. "Don't think I need this line?"
	
]
