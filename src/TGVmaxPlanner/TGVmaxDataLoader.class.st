Class {
	#name : #TGVmaxDataLoader,
	#superclass : #Object,
	#category : #TGVmaxPlanner
}

{ #category : #accessing }
TGVmaxDataLoader >> dateStringFrom: aDate [ 
	^ aDate year asString, '%2F', (aDate month index asString padLeftTo: 2 with: $0), '%2F', (aDate dayOfMonth asString padLeftTo: 2 with: $0)
]

{ #category : #accessing }
TGVmaxDataLoader >> requestDataForDate: aDate [
	| response jsonString |
	
	response := ZnClient new
		url: (self urlForDate: aDate);
		get;
		response.
		
	jsonString := response entity string.
	^ STONJSON fromString: jsonString.
]

{ #category : #accessing }
TGVmaxDataLoader >> urlForDate: aDate [
	^ 'https://data.sncf.com/api/records/1.0/search/?dataset=tgvmax&rows=10000&facet=date&facet=origine&ofacet=destination&facet=od_happy_card&refine.od_happy_card=OUI&refine.date=', (self dateStringFrom: aDate).
]
