Class {
	#name : #SncfTgvMaxDataLoaderTest,
	#superclass : #TestCase,
	#category : #'SncfTgvMaxPlanner-Tests'
}

{ #category : #tests }
SncfTgvMaxDataLoaderTest >> testDateStringFrom [
	| date expected actual |
	date := Date year: 2020 month: 12 day: 24.
	expected := '2020%2F12%2F24'.
	actual := SncfTgvMaxDataLoader new dateStringFrom: date.
	self assert: actual equals: expected.
]

{ #category : #tests }
SncfTgvMaxDataLoaderTest >> testDateStringFromPadded [
	| date expected actual |
	date := Date year: 2020 month: 2 day: 5.
	expected := '2020%2F02%2F05'.
	actual := SncfTgvMaxDataLoader new dateStringFrom: date.
	self assert: actual equals: expected.
]
