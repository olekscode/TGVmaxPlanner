Class {
	#name : #BaselineOfTGVmaxPlanner,
	#superclass : #BaselineOf,
	#category : #BaselineOfTGVmaxPlanner
}

{ #category : #baselines }
BaselineOfTGVmaxPlanner >> baseline: spec [
	<baseline>
	spec for: #common do: [	
		"Packages"
		spec 
			package: 'TGVmaxPlanner';
			package: 'TERPlanner';
			package: 'TGVmaxPlanner-Tests' with: [ spec requires: #('TGVmaxPlanner') ] ].
]
