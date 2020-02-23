Class {
	#name : #SncfTgvMaxLocation,
	#superclass : #Object,
	#instVars : [
		'name',
		'iata',
		'incomingTrains',
		'outgoingTrains'
	],
	#category : #SncfTgvMaxPlanner
}

{ #category : #accessing }
SncfTgvMaxLocation >> iata [
	^ iata
]

{ #category : #accessing }
SncfTgvMaxLocation >> iata: anObject [
	iata := anObject
]

{ #category : #accessing }
SncfTgvMaxLocation >> incomingTrains [
	^ incomingTrains
]

{ #category : #accessing }
SncfTgvMaxLocation >> incomingTrains: anObject [
	incomingTrains := anObject
]

{ #category : #initialization }
SncfTgvMaxLocation >> initialize [ 
	super initialize.
	incomingTrains := Set new.
	outgoingTrains := Set new.
]

{ #category : #accessing }
SncfTgvMaxLocation >> name [
	^ name
]

{ #category : #accessing }
SncfTgvMaxLocation >> name: anObject [
	name := anObject
]

{ #category : #accessing }
SncfTgvMaxLocation >> outgoingTrains [
	^ outgoingTrains
]

{ #category : #accessing }
SncfTgvMaxLocation >> outgoingTrains: anObject [
	outgoingTrains := anObject
]

{ #category : #printing }
SncfTgvMaxLocation >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: name;
		nextPut: $).
]
