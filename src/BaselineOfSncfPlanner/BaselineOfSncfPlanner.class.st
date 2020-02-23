Class {
	#name : #BaselineOfSncfPlanner,
	#superclass : #BaselineOf,
	#category : #BaselineOfSncfPlanner
}

{ #category : #baselines }
BaselineOfSncfPlanner >> baseline: spec [
	<baseline>
	spec for: #common do: [	
		"External dependencies"
		spec
			baseline: 'DataFrame'
			with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].	
		
		"Packages"
		spec 
			package: 'SncfTgvMaxPlanner';
			package: 'SncfTerPlanner' with: [ spec requires: #('DataFrame') ];
			package: 'SncfTgvMaxPlanner-Tests' with: [ spec requires: #('SncfTgvMaxPlanner') ] ].
]
