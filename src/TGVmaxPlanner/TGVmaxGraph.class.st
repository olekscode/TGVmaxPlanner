Class {
	#name : #TGVmaxGraph,
	#superclass : #Object,
	#instVars : [
		'locations',
		'trains'
	],
	#category : #TGVmaxPlanner
}

{ #category : #accessing }
TGVmaxGraph >> locations [
	^ locations
]

{ #category : #accessing }
TGVmaxGraph >> locations: anObject [
	locations := anObject
]

{ #category : #accessing }
TGVmaxGraph >> trains [
	^ trains
]

{ #category : #accessing }
TGVmaxGraph >> trains: anObject [
	trains := anObject
]
