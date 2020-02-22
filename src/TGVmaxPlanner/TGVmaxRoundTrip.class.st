Class {
	#name : #TGVmaxRoundTrip,
	#superclass : #Object,
	#instVars : [
		'trainThere',
		'trainBack'
	],
	#category : #TGVmaxPlanner
}

{ #category : #printing }
TGVmaxRoundTrip >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: trainThere origin name asString;
		nextPutAll: ' => ';
		nextPutAll: trainThere destination name asString;
		nextPut: $).
]

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
