Class {
	#name : #BaselineOfTGVmaxPlanner,
	#superclass : #BaselineOf,
	#category : #BaselineOfTGVmaxPlanner
}

{ #category : #baselines }
BaselineOfTGVmaxPlanner >> baseline: spec [
	<baseline>
	spec for: #common do: [	
		"External dependencies"
		spec
			baseline: 'DataFrame'
			with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].	
		
		"Packages"
		spec 
			package: 'TGVmaxPlanner';
			package: 'TERPlanner' with: [ spec requires: #('DataFrame') ];
			package: 'TGVmaxPlanner-Tests' with: [ spec requires: #('TGVmaxPlanner') ] ].
]
