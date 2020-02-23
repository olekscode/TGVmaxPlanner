Class {
	#name : #TERDataLoader,
	#superclass : #Object,
	#category : #TERPlanner
}

{ #category : #'as yet unclassified' }
TERDataLoader >> dataDirectory [
	^ 'pharo-local/iceberg/olekscode/TGVmaxPlanner/data/export-ter-gtfs-last' asFileReference.
]

{ #category : #'as yet unclassified' }
TERDataLoader >> loadStations [
	| df |
	df := DataFrame readFromCsv: self stationsFile.
	
	^ df asArrayOfRows collect: [ :row |
		TERStation new
			id: (row at: 'stop_id');
			name: (row at: 'stop_name');
			coordinates: (row at: 'stop_lat') @ (row at: 'stop_lon');
			locationType: (row at: 'location_type');
			parentStation: (row at: 'parent_station');
			yourself ].
]

{ #category : #'as yet unclassified' }
TERDataLoader >> stationsFile [
	^ self dataDirectory / 'stops.txt'
]
