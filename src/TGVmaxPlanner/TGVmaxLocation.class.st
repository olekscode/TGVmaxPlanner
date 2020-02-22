Class {
	#name : #TGVmaxLocation,
	#superclass : #Object,
	#instVars : [
		'name',
		'iata',
		'incomingTrains',
		'outgoingTrains'
	],
	#category : #TGVmaxPlanner
}

{ #category : #accessing }
TGVmaxLocation >> iata [
	^ iata
]

{ #category : #accessing }
TGVmaxLocation >> iata: anObject [
	iata := anObject
]

{ #category : #accessing }
TGVmaxLocation >> incomingTrains [
	^ incomingTrains
]

{ #category : #accessing }
TGVmaxLocation >> incomingTrains: anObject [
	incomingTrains := anObject
]

{ #category : #initialization }
TGVmaxLocation >> initialize [ 
	super initialize.
	incomingTrains := Set new.
	outgoingTrains := Set new.
]

{ #category : #accessing }
TGVmaxLocation >> name [
	^ name
]

{ #category : #accessing }
TGVmaxLocation >> name: anObject [
	name := anObject
]

{ #category : #accessing }
TGVmaxLocation >> outgoingTrains [
	^ outgoingTrains
]

{ #category : #accessing }
TGVmaxLocation >> outgoingTrains: anObject [
	outgoingTrains := anObject
]

{ #category : #printing }
TGVmaxLocation >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: name;
		nextPut: $).
]
