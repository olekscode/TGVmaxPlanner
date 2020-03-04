Class {
	#name : #SncfTgvMaxRoundTrip,
	#superclass : #Object,
	#instVars : [
		'trainThere',
		'trainBack'
	],
	#category : #SncfTgvMaxPlanner
}

{ #category : #accessing }
SncfTgvMaxRoundTrip >> destination [
	^ trainThere destination
]

{ #category : #accessing }
SncfTgvMaxRoundTrip >> origin [ 
	^ trainThere origin
]

{ #category : #printing }
SncfTgvMaxRoundTrip >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: self origin name asString;
		nextPutAll: ' => ';
		nextPutAll: self destination name asString;
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
