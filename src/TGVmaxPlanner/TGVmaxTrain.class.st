Class {
	#name : #TGVmaxTrain,
	#superclass : #Object,
	#instVars : [
		'trainNumber',
		'origin',
		'destination',
		'date',
		'departureTime',
		'arrivalTime'
	],
	#category : #TGVmaxPlanner
}

{ #category : #accessing }
TGVmaxTrain >> arrivalTime [
	^ arrivalTime
]

{ #category : #accessing }
TGVmaxTrain >> arrivalTime: anObject [
	arrivalTime := anObject
]

{ #category : #accessing }
TGVmaxTrain >> date [
	^ date
]

{ #category : #accessing }
TGVmaxTrain >> date: anObject [
	date := anObject
]

{ #category : #accessing }
TGVmaxTrain >> departureTime [
	^ departureTime
]

{ #category : #accessing }
TGVmaxTrain >> departureTime: anObject [
	departureTime := anObject
]

{ #category : #accessing }
TGVmaxTrain >> destination [
	^ destination
]

{ #category : #accessing }
TGVmaxTrain >> destination: anObject [
	destination := anObject
]

{ #category : #accessing }
TGVmaxTrain >> origin [
	^ origin
]

{ #category : #accessing }
TGVmaxTrain >> origin: anObject [
	origin := anObject
]

{ #category : #accessing }
TGVmaxTrain >> trainNumber [
	^ trainNumber
]

{ #category : #accessing }
TGVmaxTrain >> trainNumber: anObject [
	trainNumber := anObject
]
