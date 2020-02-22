Class {
	#name : #TGVmaxDataLoaderTest,
	#superclass : #TestCase,
	#category : #'TGVmaxPlanner-Tests'
}

{ #category : #tests }
TGVmaxDataLoaderTest >> testDateStringFrom [
	| date expected actual |
	date := Date year: 2020 month: 12 day: 24.
	expected := '2020%2F12%2F24'.
	actual := TGVmaxDataLoader new dateStringFrom: date.
	self assert: actual equals: expected.
]

{ #category : #tests }
TGVmaxDataLoaderTest >> testDateStringFromPadded [
	| date expected actual |
	date := Date year: 2020 month: 2 day: 5.
	expected := '2020%2F02%2F05'.
	actual := TGVmaxDataLoader new dateStringFrom: date.
	self assert: actual equals: expected.
]
