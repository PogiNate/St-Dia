"
A child of the `DiaEvent` class, a `DiaInterval` represents an event that can happen a few days before or after its nextEvent.
"
Class {
	#name : #DiaInterval,
	#superclass : #DiaEvent,
	#category : #StDia
}

{ #category : #accessing }
DiaInterval >> completeEvent [
	"Creates the next event in the series."
	"TODO: Mark it as complete and store that in some way."
	self createNextEvent.
	^ nextEvent.
]

{ #category : #'accessing - private' }
DiaInterval >> createNextEvent [
	"Creates the next event from today"
	nextEvent := Date today addDays: repeats.
	^nextEvent
]

{ #category : #initialization }
DiaInterval >> initialize [ 
	super initialize.
	^self. "Don't think I need this line?"
	
]

{ #category : #printing }
DiaInterval >> printOn: aStream [
	
	aStream 
		nextPutAll: 'a DiaEvent Object titled ';
		print:self title;
		nextPutAll: '. It repeats every ';
		print: self repeats;
		nextPutAll: ' days, and will next come due on ';
		print: self nextEvent;
		nextPutAll: '.'.	

	^aStream 
]

{ #category : #accessing }
DiaInterval >> repeats: aNumber [
"populates the 'repeats' variable and sets up the next event. Responds with the `nextEvent`."
repeats := aNumber.
self createNextEvent.
^nextEvent.
]

{ #category : #'accessing - private' }
DiaInterval >> setNextEvent: aDate [
	"Sets the next instance of this repeating event manually."
	nextEvent := aDate.
	^ aDate.
]
