Class {
	#name : #TGVmaxRoundTrip,
	#superclass : #Object,
	#instVars : [
		'trainThere',
		'trainBack'
	],
	#category : #TGVmaxPlanner
}

{ #category : #accessing }
TGVmaxRoundTrip >> trainBack [
	^ trainBack
]

{ #category : #accessing }
TGVmaxRoundTrip >> trainBack: anObject [
	trainBack := anObject
]

{ #category : #accessing }
TGVmaxRoundTrip >> trainThere [
	^ trainThere
]

{ #category : #accessing }
TGVmaxRoundTrip >> trainThere: anObject [
	trainThere := anObject
]
