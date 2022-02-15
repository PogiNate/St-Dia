"
# St Dia's Events
St Dia uses Events to track things that we want to have happen on a recurrent basis. This is the basis for all the other event types that we want to create going forward.
"
Class {
	#name : #DiaEvent,
	#superclass : #Object,
	#instVars : [
		'title',
		'leeway',
		'repeats',
		'nextEvent'
	],
	#category : #StDia
}

{ #category : #initialization }
DiaEvent >> initialize [ 
	super initialize.
	title := 'a Boring Event'.
	leeway := 0.
	^self.
]

{ #category : #accessing }
DiaEvent >> leeway [

	^ leeway
]

{ #category : #accessing }
DiaEvent >> leeway: anObject [

	leeway := anObject
]

{ #category : #accessing }
DiaEvent >> nextEvent [

^ nextEvent 
]

{ #category : #accessing }
DiaEvent >> repeats [

	^ repeats
]

{ #category : #accessing }
DiaEvent >> repeats: anObject [

	repeats := anObject
]

{ #category : #accessing }
DiaEvent >> title [

	^ title
]

{ #category : #accessing }
DiaEvent >> title: anObject [

	title := anObject
]
