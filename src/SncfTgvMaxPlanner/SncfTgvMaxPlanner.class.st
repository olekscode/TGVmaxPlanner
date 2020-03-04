Class {
	#name : #SncfTgvMaxPlanner,
	#superclass : #Object,
	#instVars : [
		'trainGraph'
	],
	#category : #SncfTgvMaxPlanner
}

{ #category : #'as yet unclassified' }
SncfTgvMaxPlanner >> findRoundTripsFrom: aLocation [
	| returnTrains |
	^ aLocation outgoingTrains flatCollect: [ :train |
		returnTrains := train destination outgoingTrains select: [ :returnTrain |
			(returnTrain destination = aLocation) and: (returnTrain departureTime > train arrivalTime) ].
		
		returnTrains collect: [ :returnTrain |
			SncfTgvMaxRoundTrip new
				trainThere: train;
				trainBack: returnTrain;
				yourself ] ].
]

{ #category : #'as yet unclassified' }
SncfTgvMaxPlanner >> findRoundTripsFrom: anOrigin to: aDestination [
	| trainsToDestination returnTrains |
	trainsToDestination := anOrigin outgoingTrains
		select: [ :train | train destination = aDestination ].
		
	^ trainsToDestination flatCollect: [ :train |
		returnTrains := aDestination outgoingTrains select: [ :returnTrain |
			(returnTrain destination = anOrigin) and: (returnTrain departureTime > train arrivalTime) ].
		
		returnTrains collect: [ :returnTrain |
			SncfTgvMaxRoundTrip new
				trainThere: train;
				trainBack: returnTrain;
				yourself ] ].
]

{ #category : #'as yet unclassified' }
SncfTgvMaxPlanner >> findRoundTripsFromAnyOf: aCollectionOfLocations [
	| returnTrains |
	^ aCollectionOfLocations asSet flatCollect: [ :location |
		location outgoingTrains flatCollect: [ :train |
			returnTrains := train destination outgoingTrains select: [ :returnTrain |
				(aCollectionOfLocations includes: returnTrain destination) and:
				(returnTrain departureTime > train arrivalTime) ].
		
			returnTrains collect: [ :returnTrain |
				SncfTgvMaxRoundTrip new
					trainThere: train;
					trainBack: returnTrain;
					yourself ] ] ].
]

{ #category : #accessing }
SncfTgvMaxPlanner >> trainGraph [
	^ trainGraph
]

{ #category : #accessing }
SncfTgvMaxPlanner >> trainGraph: anObject [
	trainGraph := anObject
]
