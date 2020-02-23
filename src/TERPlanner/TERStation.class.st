Class {
	#name : #TERStation,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'coordinates',
		'locationType',
		'parentStation'
	],
	#category : #TERPlanner
}

{ #category : #accessing }
TERStation >> coordinates [
	^ coordinates
]

{ #category : #accessing }
TERStation >> coordinates: anObject [
	coordinates := anObject
]

{ #category : #accessing }
TERStation >> id [
	^ id
]

{ #category : #accessing }
TERStation >> id: anObject [
	id := anObject
]

{ #category : #accessing }
TERStation >> locationType [
	^ locationType
]

{ #category : #accessing }
TERStation >> locationType: anObject [
	locationType := anObject
]

{ #category : #accessing }
TERStation >> name [
	^ name
]

{ #category : #accessing }
TERStation >> name: anObject [
	name := anObject
]

{ #category : #accessing }
TERStation >> parentStation [
	^ parentStation
]

{ #category : #accessing }
TERStation >> parentStation: anObject [
	parentStation := anObject
]
