"
Used by `DiaDueDate`s to represent the actual repeating nature with fixed days.

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	days:		<Object>
	intervalType:		<Object>


    Implementation Points
"
Class {
	#name : #DueDatePattern,
	#superclass : #Object,
	#instVars : [
		'days',
		'intervalType'
	],
	#category : #'StDia-Events'
}

{ #category : #'instance creation' }
DueDatePattern class >> newPattern: aTitle every: aDate ofThe: anInterval [
	"Create a new `DiaDueDate`, populate it with a `DueDatePattern` and return the DueDate after populating it."
	|aPattern aDueDate|
	aDueDate := DiaDueDate new.
	aPattern := (self class new).
	aPattern 
		days: aDate;
		intervalType: anInterval.
	aDueDate addPattern: aPattern.
	^aDueDate 
]

{ #category : #accessing }
DueDatePattern >> days [

	^ days
]

{ #category : #accessing }
DueDatePattern >> days: anObject [

	days := anObject
]

{ #category : #accessing }
DueDatePattern >> intervalType [

	^ intervalType
]

{ #category : #accessing }
DueDatePattern >> intervalType: anObject [

	intervalType := anObject
]
