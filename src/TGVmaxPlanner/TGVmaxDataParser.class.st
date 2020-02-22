Class {
	#name : #TGVmaxDataParser,
	#superclass : #Object,
	#category : #TGVmaxPlanner
}

{ #category : #parsing }
TGVmaxDataParser >> parseRecord: aRecord [
	| fields |
	fields := aRecord at: 'fields'.
		
	^ TGVmaxDataRecord new
		id: (aRecord at: 'recordid');
		origin: (fields at: 'origine');
		destination: (fields at: 'destination');
		originIata: (fields at: 'origine_iata');
		destinationIata: (fields at: 'destination_iata');
		date: (fields at: 'date') asDate;
		departureTime: (fields at: 'heure_depart') asTime;
		arrivalTime: (fields at: 'heure_arrivee') asTime;
		trainNumber: (fields at: 'train_no');
		yourself.
]

{ #category : #parsing }
TGVmaxDataParser >> parseRecords: aCollectionOfRecords [
	^ aCollectionOfRecords collect: [ :record |
		self parseRecord: record ].
]
