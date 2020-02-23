Class {
	#name : #SncfTgvMaxRoundTrip,
	#superclass : #Object,
	#instVars : [
		'trainThere',
		'trainBack'
	],
	#category : #SncfTgvMaxPlanner
}

{ #category : #printing }
SncfTgvMaxRoundTrip >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: trainThere origin name asString;
		nextPutAll: ' => ';
		nextPutAll: trainThere destination name asString;
		nextPut: $).
]

{ #category : #accessing }
SncfTgvMaxRoundTrip >> trainBack [
	^ trainBack
]

{ #category : #accessing }
SncfTgvMaxRoundTrip >> trainBack: anObject [
	trainBack := anObject
]

{ #category : #accessing }
SncfTgvMaxRoundTrip >> trainThere [
	^ trainThere
]

{ #category : #accessing }
SncfTgvMaxRoundTrip >> trainThere: anObject [
	trainThere := anObject
]
