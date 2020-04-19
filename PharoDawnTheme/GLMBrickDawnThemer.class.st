Class {
	#name : #GLMBrickDawnThemer,
	#superclass : #GLMBrickThemer,
	#category : #PharoDawnTheme
}

{ #category : #'theme-actions' }
GLMBrickDawnThemer >> actionThemer [

	^ GLMActionBrickDawnThemer new
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> buttonBackgroundColor [

	^ Color veryDarkGray lighter
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> buttonPressedColor [

	^ self backgroundColor whiter
]

{ #category : #'brick-button' }
GLMBrickDawnThemer >> buttonSelectedColor [

	^ Color veryDarkGray lighter slightlyDarker
]

{ #category : #'brick-checkbox' }
GLMBrickDawnThemer >> checkboxBorderColor [

	^ Color lightGray
]

{ #category : #brick }
GLMBrickDawnThemer >> contentBackgroundColor [

	"^ Color darkGray darker"
	^ Color fromHexString: '262720'
]

{ #category : #'brick-scrollbar' }
GLMBrickDawnThemer >> scrollbarColor [

	^ Color black alpha: 0.5
]

{ #category : #'as yet unclassified' }
GLMBrickDawnThemer >> spotterThemer [

	^ self
		registerModule: GTSpotterWidgetDawnThemer new
		to: GTSpotterBrickDawnThemer new
]

{ #category : #'as yet unclassified' }
GLMBrickDawnThemer >> tabLabelThemer [

	^ self
		registerModule: GLMBrickTabLabelDawnThemer new
]

{ #category : #brick }
GLMBrickDawnThemer >> textColor [

	^ self color whiten
]

{ #category : #brick }
GLMBrickDawnThemer >> textSecondaryColor [

	^ Color white
]
