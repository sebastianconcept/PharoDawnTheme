Class {
	#name : #BaselineOfPharoDawnTheme,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoDawnTheme
}

{ #category : #baseline }
BaselineOfPharoDawnTheme >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec postLoadDoIt: #onLoaded.
			spec package: 'PharoDawnTheme' ]
]

{ #category : #baseline }
BaselineOfPharoDawnTheme >> onLoaded [
	(Smalltalk at: #PharoDawnTheme) installFullTheme
]
