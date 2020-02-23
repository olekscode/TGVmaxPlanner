Class {
	#name : #SncfTgvMaxDataParser,
	#superclass : #Object,
	#category : #SncfTgvMaxPlanner
}

{ #category : #parsing }
SncfTgvMaxDataParser >> buildGraphFromRecords: aCollectionOfRecords [
	| locations trains origin destination train |
	
	locations := Dictionary new.
	
	trains := aCollectionOfRecords collect: [ :record |
		origin := locations at: record origin ifAbsentPut: [ 
			SncfTgvMaxLocation new
				name: record origin;
				iata: record originIata;
				yourself ].
			
		destination := locations at: record destination ifAbsentPut: [ 
			SncfTgvMaxLocation new
				name: record destination;
				iata: record destinationIata;
				yourself ].
			
		train := SncfTgvMaxTrain new
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
	
	^ SncfTgvMaxGraph new
		locations: locations asSet;
		trains: trains asSet;
		yourself
]

{ #category : #parsing }
SncfTgvMaxDataParser >> parseRecord: aRecord [
	| fields |
	fields := aRecord at: 'fields'.
		
	^ SncfTgvMaxDataRecord new
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
SncfTgvMaxDataParser >> parseRecords: aCollectionOfRecords [
	^ aCollectionOfRecords collect: [ :record |
		self parseRecord: record ].
]
