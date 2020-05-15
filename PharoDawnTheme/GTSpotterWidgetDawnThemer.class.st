Class {
	#name : #GTSpotterWidgetDawnThemer,
	#superclass : #GTSpotterWidgetDarkThemer,
	#category : #PharoDawnTheme
}

{ #category : #values }
GTSpotterWidgetDawnThemer >> backgroundColor [
	^ Color fromHexString: '262720'
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> itemActionSelectedBackgroundColor [
	^ self itemSelectedBackgroundColor lighter
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> itemSelectedBackgroundColor [

	^ Color fromHexString: '49483E'
]

{ #category : #values }
GTSpotterWidgetDawnThemer >> titleTextColor [
	^Color fromHexString: 'FCF3D7'
]
