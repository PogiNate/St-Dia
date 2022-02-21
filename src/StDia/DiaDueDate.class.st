"
A due date is designed to be visible for a number of days _before_ the event, and is scheduled based on set dates. It does not change based on when the previous iteration was completed.
"
Class {
	#name : #DiaDueDate,
	#superclass : #DiaEvent,
	#instVars : [
		'patterns'
	],
	#category : #'StDia-Events'
}

{ #category : #adding }
DiaDueDate >> addDueDate: aPattern [
	"Add a Date object to the list of due Dates."
	patterns add: aPattern.
	
]

{ #category : #adding }
DiaDueDate >> addPattern: aDueDatePattern [
	"Add a Date object to the list of due Dates."
	patterns add: aDueDatePattern.
	
]

{ #category : #accessing }
DiaDueDate >> dueDates [
	"Return a view of the due dates for this event."
	^ patterns
]

{ #category : #initialization }
DiaDueDate >> initialize [ 
	"Create the patterns array as empty. For now."
	super initialize.
	patterns := {  }.
	
]