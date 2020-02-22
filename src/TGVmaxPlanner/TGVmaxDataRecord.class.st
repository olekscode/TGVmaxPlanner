Class {
	#name : #TGVmaxDataRecord,
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
	#category : #TGVmaxPlanner
}

{ #category : #accessing }
TGVmaxDataRecord >> arrivalTime [
	^ arrivalTime
]

{ #category : #accessing }
TGVmaxDataRecord >> arrivalTime: anObject [
	arrivalTime := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> date [
	^ date
]

{ #category : #accessing }
TGVmaxDataRecord >> date: anObject [
	date := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> departureTime [
	^ departureTime
]

{ #category : #accessing }
TGVmaxDataRecord >> departureTime: anObject [
	departureTime := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> destination [
	^ destination
]

{ #category : #accessing }
TGVmaxDataRecord >> destination: anObject [
	destination := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> destinationIata [
	^ destinationIata
]

{ #category : #accessing }
TGVmaxDataRecord >> destinationIata: anObject [
	destinationIata := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> id [
	^ id
]

{ #category : #accessing }
TGVmaxDataRecord >> id: anObject [
	id := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> origin [
	^ origin
]

{ #category : #accessing }
TGVmaxDataRecord >> origin: anObject [
	origin := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> originIata [
	^ originIata
]

{ #category : #accessing }
TGVmaxDataRecord >> originIata: anObject [
	originIata := anObject
]

{ #category : #accessing }
TGVmaxDataRecord >> trainNumber [
	^ trainNumber
]

{ #category : #accessing }
TGVmaxDataRecord >> trainNumber: anObject [
	trainNumber := anObject
]
