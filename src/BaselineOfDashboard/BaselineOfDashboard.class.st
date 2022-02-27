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
			package: #'Dashboard-Builder'.
		spec 
			package: #'Dashboard-Datas' with: [ spec requires: 'Dashboard-Builder' ].
		spec 
			package: #'Dashboard-Charts' with: [ spec requires: 'Dashboard-Builder' ]].
]
