Class {
	#name : #TGVmaxDataParser,
	#superclass : #Object,
	#category : #TGVmaxPlanner
}

{ #category : #parsing }
TGVmaxDataParser >> buildGraphFromRecords: aCollectionOfRecords [
	| locations trains origin destination train |
	
	locations := Dictionary new.
	
	trains := aCollectionOfRecords collect: [ :record |
		origin := locations at: record origin ifAbsentPut: [ 
			TGVmaxLocation new
				name: record origin;
				iata: record originIata;
				yourself ].
			
		destination := locations at: record destination ifAbsentPut: [ 
			TGVmaxLocation new
				name: record destination;
				iata: record destinationIata;
				yourself ].
			
		train := TGVmaxTrain new
			trainNumber: record trainNumber;
			origin: origin;
			destination: destination;
			date: record date;
			departureTime: record departureTime;
			arrivalTime: record arrivalTime;
			yourself.
			
		origin outgoingTrains add: train.
		destination incomingTrains add: train.
		train ].
	
	locations := locations values.
	
	^ TGVmaxGraph new
		locations: locations asSet;
		trains: trains asSet;
		yourself
]

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
