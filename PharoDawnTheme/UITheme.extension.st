Extension { #name : #UITheme }

{ #category : #'*PharoDawnTheme' }
UITheme >> baseSelectionColorFor: aButton [
	^ self class baseSelectionColor
]

{ #category : #'*PharoDawnTheme' }
UITheme >> darkBaseColorFor: aButton [
	^ self class darkBaseColor
]

{ #category : #'*PharoDawnTheme' }
UITheme >> lightColorFor: aButton [
	^ self class lightBaseColor
]

{ #category : #'*PharoDawnTheme' }
UITheme >> newFocusIndicatorMorphFor: aMorph [
	"Answer a new focus indicator for the given morph."

	^ BorderedMorph new
		fillStyle: Color transparent;
		borderStyle: (SimpleBorder new
			 width: 1;
			baseColor: (self baseSelectionColorFor: aMorph));
		bounds: aMorph focusBounds
]

{ #category : #'*PharoDawnTheme' }
UITheme >> normalFillStyleFor: aMorph height: anInteger [
	"Return the normal button fillStyle for the given button."

	^ SolidFillStyle color: (self lightColorFor: aMorph)
]

{ #category : #'*PharoDawnTheme' }
UITheme >> scrollbarNormalThumbFillStyleFor: aScrollbar [
	"Return the normal scrollbar fillStyle for the given scrollbar."
	^ self normalFillStyleFor: aScrollbar height: aScrollbar height
]

{ #category : #'*PharoDawnTheme' }
UITheme >> subgroupColorFrom: paneColor [
	"Answer the colour for a subgroup given the pane colour."

	^ self lightColorFor: paneColor" self class baseColor"
]

{ #category : #'*PharoDawnTheme' }
UITheme >> tabPanelBorderStyleFor: aTabGroup [
	^ Pharo3TabPanelBorder new 
		width: 1;
		baseColor: ((self darkBaseColorFor: aTabGroup));
		tabSelector: aTabGroup tabSelectorMorph
]
