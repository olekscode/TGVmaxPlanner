Class {
	#name : #SncfTgvMaxGraph,
	#superclass : #Object,
	#instVars : [
		'locations',
		'trains'
	],
	#category : #SncfTgvMaxPlanner
}

{ #category : #accessing }
SncfTgvMaxGraph >> locations [
	^ locations
]

{ #category : #accessing }
SncfTgvMaxGraph >> locations: anObject [
	locations := anObject
]

{ #category : #accessing }
SncfTgvMaxGraph >> trains [
	^ trains
]

{ #category : #accessing }
SncfTgvMaxGraph >> trains: anObject [
	trains := anObject
]
