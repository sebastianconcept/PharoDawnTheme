Class {
	#name : #GLMBrickDawnThemer,
	#superclass : #GLMBrickDarkThemer,
	#category : #PharoDawnTheme
}

{ #category : #'brick-button' }
GLMBrickDawnThemer >> actionThemer [
	^ GLMActionBrickDawnThemer new
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> backgroundColor [
	^ Color fromHexString: '262720'
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> contentBackgroundColor [
	^ self backgroundColor darker
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> scrollbarColor [
	^ self buttonBackgroundColor
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> spotterThemer [
	^ self
		registerModule: GTSpotterWidgetDawnThemer new
		to: GTSpotterBrickDawnThemer new
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> textColor [
	^ Color fromHexString: 'FCF3D7'
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> textSecondaryColor [
	^ Color black
]
