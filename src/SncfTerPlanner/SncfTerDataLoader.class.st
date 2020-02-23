Class {
	#name : #SncfTerDataLoader,
	#superclass : #Object,
	#category : #SncfTerPlanner
}

{ #category : #'as yet unclassified' }
SncfTerDataLoader >> dataDirectory [
	^ 'pharo-local/iceberg/olekscode/TGVmaxPlanner/data/export-ter-gtfs-last' asFileReference.
]

{ #category : #'as yet unclassified' }
SncfTerDataLoader >> loadStations [
	| df |
	df := DataFrame readFromCsv: self stationsFile.
	
	^ df asArrayOfRows collect: [ :row |
		SncfTerStation new
			id: (row at: 'stop_id');
			name: (row at: 'stop_name');
			coordinates: (row at: 'stop_lat') @ (row at: 'stop_lon');
			locationType: (row at: 'location_type');
			parentStation: (row at: 'parent_station');
			yourself ].
]

{ #category : #'as yet unclassified' }
SncfTerDataLoader >> stationsFile [
	^ self dataDirectory / 'stops.txt'
]
