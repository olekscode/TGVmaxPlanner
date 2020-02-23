Class {
	#name : #SncfTgvMaxDataRecord,
	#superclass : #Object,
	#instVars : [
		'id',
		'origin',
		'destination',
		'originIata',
		'destinationIata',
		'date',
		'departureTime',
		'arrivalTime',
		'trainNumber'
	],
	#category : #SncfTgvMaxPlanner
}

{ #category : #accessing }
SncfTgvMaxDataRecord >> arrivalTime [
	^ arrivalTime
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> arrivalTime: anObject [
	arrivalTime := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> date [
	^ date
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> date: anObject [
	date := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> departureTime [
	^ departureTime
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> departureTime: anObject [
	departureTime := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> destination [
	^ destination
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> destination: anObject [
	destination := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> destinationIata [
	^ destinationIata
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> destinationIata: anObject [
	destinationIata := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> id [
	^ id
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> id: anObject [
	id := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> origin [
	^ origin
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> origin: anObject [
	origin := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> originIata [
	^ originIata
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> originIata: anObject [
	originIata := anObject
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> trainNumber [
	^ trainNumber
]

{ #category : #accessing }
SncfTgvMaxDataRecord >> trainNumber: anObject [
	trainNumber := anObject
]
