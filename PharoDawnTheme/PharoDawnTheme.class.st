Class {
	#name : #PharoDawnTheme,
	#superclass : #PharoDarkTheme,
	#category : #PharoDawnTheme
}

{ #category : #accessing }
PharoDawnTheme class >> baseColor [
	"^ Color fromHexString: '585859'"
	
	^ Color fromHexString: '3e3d32'
	"^ Color veryDarkGray"
]

{ #category : #accessing }
PharoDawnTheme class >> baseSelectionColor [
	^ Color fromHexString: '49483E'
	"^ Color r: 97 g: 163 b: 225 range: 255"
]

{ #category : #installing }
PharoDawnTheme class >> installFullTheme [
	"Installs full theme: 
		this theme
		dark forts
		desktop background
		completion list colors"
		
	self beCurrent.
	SHPreferences setStyleTable: SHRBTextStyler dawnStyleTable.
	PolymorphSystemSettings desktopColor: Color darkGray darker.
	NECPreferences backgroundColor: UITheme current windowColor. 
	Paragraph insertionPointColor: UITheme current caretColor.
	
]

{ #category : #accessing }
PharoDawnTheme class >> lightSelectionColor [
	^ Color fromHexString: '49483E'
]

{ #category : #'accessing colors' }
PharoDawnTheme >> backgroundColor [
	^ Color fromHexString: '262720'
]

{ #category : #'fill-styles-buttons' }
PharoDawnTheme >> buttonSelectedFillStyleFor: aButton [
	"Return the normal button fillStyle for the given button."
	
	^ SolidFillStyle color: self selectionColor.
	"| top bottom |
	
	top := self secondarySelectionColor.
	bottom := self selectionColor.

	^(GradientFillStyle ramp: {
			0.0->top.
			0.7->bottom.})
		origin: aButton bounds origin;
		direction: 0 @ aButton height;
		radial: false"
]

{ #category : #'accessing colors' }
PharoDawnTheme >> caretColor [
	^ self backgroundColor muchLighter 
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> menuItemNormalTextColorFor: aMenuItem [
	"Answer the color to use for normal menu item text."

	^ self textColor 
]

{ #category : #'fill-styles-buttons' }
PharoDawnTheme >> menuItemSelectedFillStyleFor: aMenuItem [
	"Answer the selected fill style to use for the given menu item."
	
	^ SolidFillStyle color: self selectionColor.
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> menuItemSelectedTextColorFor: aMenuItem [
	"Answer the color to use for selected menu item text."

	^ Color white
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> scrollbarPressedThumbFillStyleFor: aScrollbar [
	"Return the pressed scrollbar thumb fillStyle for the given scrollbar."
	
	^ SolidFillStyle color: self backgroundColor lighter lighter.
]

{ #category : #'accessing colors' }
PharoDawnTheme >> secondarySelectionColor [
	^ self selectionColor darker
]

{ #category : #'accessing colors' }
PharoDawnTheme >> selectionColor [
	
	^ Color fromHexString: '49483E'
	
	"^ Color r: 16r07 g: 16r63 b: 16rAD range: 255"
]

{ #category : #'accessing colors' }
PharoDawnTheme >> selectionTextColor [
	^ Color r: 16rE0 g: 16rE2 b: 16rE4 range: 255
]

{ #category : #'accessing colors' }
PharoDawnTheme >> textColor [
	
	^ Color fromHexString: 'FCF3D7'
]

{ #category : #'fill-styles' }
PharoDawnTheme >> windowActiveFillStyleFor: aWindow [
	"We do not want the lighting effect when the window goes inactive"
	^SolidFillStyle color: self class baseColor
]
