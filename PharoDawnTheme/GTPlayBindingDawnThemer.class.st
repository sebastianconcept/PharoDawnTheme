Class {
	#name : #GTPlayBindingDawnThemer,
	#superclass : #GTPlayBindingDarkThemer,
	#category : #PharoDawnTheme
}

{ #category : #rows }
GTPlayBindingDawnThemer >> selectedColor [
	^ (Color fromHexString: '262720') alpha: 0.1
]
