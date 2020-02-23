Class {
	#name : #SncfTerStation,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'coordinates',
		'locationType',
		'parentStation'
	],
	#category : #SncfTerPlanner
}

{ #category : #accessing }
SncfTerStation >> coordinates [
	^ coordinates
]

{ #category : #accessing }
SncfTerStation >> coordinates: anObject [
	coordinates := anObject
]

{ #category : #accessing }
SncfTerStation >> id [
	^ id
]

{ #category : #accessing }
SncfTerStation >> id: anObject [
	id := anObject
]

{ #category : #accessing }
SncfTerStation >> locationType [
	^ locationType
]

{ #category : #accessing }
SncfTerStation >> locationType: anObject [
	locationType := anObject
]

{ #category : #accessing }
SncfTerStation >> name [
	^ name
]

{ #category : #accessing }
SncfTerStation >> name: anObject [
	name := anObject
]

{ #category : #accessing }
SncfTerStation >> parentStation [
	^ parentStation
]

{ #category : #accessing }
SncfTerStation >> parentStation: anObject [
	parentStation := anObject
]
