Class {
	#name : #GLMBrickTabLabelDawnThemer,
	#superclass : #GLMBrickTabLabelThemer,
	#category : #PharoDawnTheme
}

{ #category : #'brick-tab-label' }
GLMBrickTabLabelDawnThemer >> normalBorderStyleFor: aBrick [

	^ BorderStyle simple
			width: 1;
			baseColor: Color transparent
]

{ #category : #'brick-tab-label' }
GLMBrickTabLabelDawnThemer >> normalStyleFor: aBrick [

	super normalStyleFor: aBrick.
	aBrick padding: #(0 1).
]

{ #category : #'brick-tab-label' }
GLMBrickTabLabelDawnThemer >> selectedBorderStyleFor: aBrick [

	^ self normalBorderStyleFor: aBrick
]
