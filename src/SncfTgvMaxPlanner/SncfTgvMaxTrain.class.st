Class {
	#name : #SncfTgvMaxTrain,
	#superclass : #Object,
	#instVars : [
		'trainNumber',
		'origin',
		'destination',
		'date',
		'departureTime',
		'arrivalTime'
	],
	#category : #SncfTgvMaxPlanner
}

{ #category : #accessing }
SncfTgvMaxTrain >> arrivalTime [
	^ arrivalTime
]

{ #category : #accessing }
SncfTgvMaxTrain >> arrivalTime: anObject [
	arrivalTime := anObject
]

{ #category : #accessing }
SncfTgvMaxTrain >> date [
	^ date
]

{ #category : #accessing }
SncfTgvMaxTrain >> date: anObject [
	date := anObject
]

{ #category : #accessing }
SncfTgvMaxTrain >> departureTime [
	^ departureTime
]

{ #category : #accessing }
SncfTgvMaxTrain >> departureTime: anObject [
	departureTime := anObject
]

{ #category : #accessing }
SncfTgvMaxTrain >> destination [
	^ destination
]

{ #category : #accessing }
SncfTgvMaxTrain >> destination: anObject [
	destination := anObject
]

{ #category : #accessing }
SncfTgvMaxTrain >> origin [
	^ origin
]

{ #category : #accessing }
SncfTgvMaxTrain >> origin: anObject [
	origin := anObject
]

{ #category : #printing }
SncfTgvMaxTrain >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: origin name asString;
		nextPutAll: ' => ';
		nextPutAll: destination name asString;
		nextPut: $).
]

{ #category : #accessing }
SncfTgvMaxTrain >> trainNumber [
	^ trainNumber
]

{ #category : #accessing }
SncfTgvMaxTrain >> trainNumber: anObject [
	trainNumber := anObject
]
