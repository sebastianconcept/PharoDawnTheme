Class {
	#name : #GTSpotterWidgetDawnThemer,
	#superclass : #GTSpotterWidgetThemer,
	#category : #PharoDawnTheme
}

{ #category : #values }
GTSpotterWidgetDawnThemer >> backgroundColor [
	"used as background color for all panes"
	^ Smalltalk ui theme lightBackgroundColor slightlyLighter
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> borderColor [
	"color that is used for border and dividers of UI parts of Spotter
	for example divider between header and results or between preview and list"
	^ Smalltalk ui theme borderColor
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> itemActionSelectedBackgroundColor [

	^ self itemSelectedBackgroundColor slightlyDarker
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> itemIconAlphaValue [

	^ 0.5
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> itemSelectedBackgroundColor [

	^ self backgroundColor slightlyDarker
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> searchFieldTextColor [
	
	^ Color white slightlyDarker
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> titleTextColor [

	^ self backgroundColor muchLighter
]
