Class {
	#name : #BaselineOfProxiedBaseline,
	#superclass : #BaselineOf,
	#category : #BaselineOfProxiedBaseline
}

{ #category : #baselines }
BaselineOfProxiedBaseline >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec package: 'ProxiedBaseline'.
		spec postLoadDoIt: #postload:package: ]
]

{ #category : #actions }
BaselineOfProxiedBaseline >> postload: loader package: packageSpec [

	(self class environment at: #SeekerInstallHelpers)
		installAndShowMessageOnCompletion
]

{ #category : #actions }
BaselineOfProxiedBaseline >> preload: loader package: packageSpec [

	Transcript crLog: 'The fetch was finished. Now let''s load the project'
]
