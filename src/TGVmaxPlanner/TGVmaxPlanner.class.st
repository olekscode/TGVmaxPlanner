Class {
	#name : #TGVmaxPlanner,
	#superclass : #Object,
	#instVars : [
		'trainGraph'
	],
	#category : #TGVmaxPlanner
}

{ #category : #'as yet unclassified' }
TGVmaxPlanner >> findRoundTripsFrom: aLocation [
	| returnTrains |
	^ aLocation outgoingTrains flatCollect: [ :train |
		returnTrains := train destination outgoingTrains select: [ :returnTrain |
			(returnTrain destination = aLocation) and: (returnTrain departureTime > train arrivalTime) ].
		
		returnTrains collect: [ :returnTrain |
			TGVmaxRoundTrip new
				trainThere: train;
				trainBack: returnTrain;
				yourself ] ].
]

{ #category : #'as yet unclassified' }
TGVmaxPlanner >> findRoundTripsFromAnyOf: aCollectionOfLocations [
	| returnTrains |
	^ aCollectionOfLocations asSet flatCollect: [ :location |
		location outgoingTrains flatCollect: [ :train |
			returnTrains := train destination outgoingTrains select: [ :returnTrain |
				(aCollectionOfLocations includes: returnTrain destination) and:
				(returnTrain departureTime > train arrivalTime) ].
		
			returnTrains collect: [ :returnTrain |
				TGVmaxRoundTrip new
					trainThere: train;
					trainBack: returnTrain;
					yourself ] ] ].
]

{ #category : #accessing }
TGVmaxPlanner >> trainGraph [
	^ trainGraph
]

{ #category : #accessing }
TGVmaxPlanner >> trainGraph: anObject [
	trainGraph := anObject
]
