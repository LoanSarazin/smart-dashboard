Class {
	#name : #BaselineOfDashboard,
	#superclass : #BaselineOf,
	#category : #BaselineOfDashboard
}

{ #category : #baselines }
BaselineOfDashboard >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			package: #'Dashboard'.
		spec 
			package: #'Dashboard-Charts' with: [ spec requires: 'Dashboard' ]]
]
