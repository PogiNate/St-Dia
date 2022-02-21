"
A child of the `DiaEvent` class, a `DiaInterval` represents an event that can happen a few days before or after its nextEvent.
"
Class {
	#name : #DiaInterval,
	#superclass : #DiaEvent,
	#category : #'StDia-Events'
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

{ #category : #'accessing - private' }
DiaInterval >> nextEvent: aDate [
	"Sets the next instance of this repeating event manually."
	nextEvent := aDate.
	^ nextEvent.
]

{ #category : #printing }
DiaInterval >> printOn: aStream [
	
	aStream 
		nextPutAll: 'a DiaEvent. title: ';
		print:self title;
		"nextPutAll: '\n';"
		nextPutAll: 'Repeats: ';
		print: self repeats;
		nextPutAll: ' days, next due:  ';
		print: self nextEvent;
		nextPutAll: '. Leeway: ';
		print: self leeway;
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
