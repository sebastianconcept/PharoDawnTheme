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

	Smalltalk
		at: #UIThemeWatery
		ifPresent: [ "Older Pharos didn't had their UITheme refactored like now."
			(Smalltalk at: #Pharo3DarkTheme)
				subclass: #PharoDawnTheme
				instanceVariableNames: ''
				classVariableNames: ''
				package: 'PharoDawnTheme' ].
	(Smalltalk at: #PharoDawnTheme)
		installFullTheme;
		beCurrent
]
