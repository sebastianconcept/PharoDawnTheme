Class {
	#name : #GTSpotterBrickDawnThemer,
	#superclass : #GLMBrickDarkThemer,
	#category : #PharoDawnTheme
}

{ #category : #'brick-rubric' }
GTSpotterBrickDawnThemer >> rubricBackgroundColor [

	^ self spotterThemer backgroundColor
]

{ #category : #'brick-scrollbar' }
GTSpotterBrickDawnThemer >> scrollbarColor [

	^ self spotterThemer backgroundColor darker
]

{ #category : #'brick-scrollpane' }
GTSpotterBrickDawnThemer >> scrollpaneBackgroundColor [

	^ self spotterThemer backgroundColor
]
