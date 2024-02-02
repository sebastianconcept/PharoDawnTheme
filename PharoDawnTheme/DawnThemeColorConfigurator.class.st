Class {
	#name : #DawnThemeColorConfigurator,
	#superclass : #UIThemeColorConfigurator,
	#category : #PharoDawnTheme
}

{ #category : #colors }
DawnThemeColorConfigurator >> backgroundColor [

	^ Color r: 0.130 g: 0.130 b: 0.130
]

{ #category : #colors }
DawnThemeColorConfigurator >> badgeColor [

	^ Color red alpha: 0.5
]

{ #category : #colors }
DawnThemeColorConfigurator >> badgeTextColor [

	^ self textColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> balloonBackgroundColor [

	^ self darkBaseColor lighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> baseColor [

	^ Color veryDarkGray
]

{ #category : #colors }
DawnThemeColorConfigurator >> basePassiveBackgroundColor [

	^ Color darkGray
]

{ #category : #colors }
DawnThemeColorConfigurator >> baseSelectionColor [

	^ Color r: 97 g: 163 b: 225 range: 255
]

{ #category : #colors }
DawnThemeColorConfigurator >> borderColor [

	^ Color darkGray darker darker darker
]

{ #category : #colors }
DawnThemeColorConfigurator >> buttonColor [

	^ self backgroundColor lighter lighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> caretColor [

	^ Color lightBlue
]

{ #category : #colors }
DawnThemeColorConfigurator >> classExtensionColor [

	^ Color gray lighter lighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> dangerTextColor [

	^ Color r: 239 g: 83 b: 80 range: 255
]

{ #category : #colors }
DawnThemeColorConfigurator >> darkBaseColor [

	^ Color veryDarkGray
]

{ #category : #colors }
DawnThemeColorConfigurator >> desktopColor [

	^ Color darkGray darker
]

{ #category : #colors }
DawnThemeColorConfigurator >> diffAdditionalLineBackgroundColor [

	^ Color r: 0.0 g: 0.76 b: 0.0 alpha: 0.2
]

{ #category : #colors }
DawnThemeColorConfigurator >> diffEdgeColor [

	^ Color white alpha: 0.5
]

{ #category : #colors }
DawnThemeColorConfigurator >> diffModificatedLineBackgroundColor [

	^ Color gray alpha: 0.2
]

{ #category : #colors }
DawnThemeColorConfigurator >> diffRemovedLinesBackgroundColor [

	^ Color r: 0.84 g: 0.0 b: 0.0 alpha: 0.2
]

{ #category : #colors }
DawnThemeColorConfigurator >> disabledColor [

	^ Color gray lighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> disabledLabelColor [

	^ Color r: 0.7673509286412512
		  g: 0.7673509286412512
		  b: 0.7673509286412512
		  alpha: 0.7647058823529411
]

{ #category : #colors }
DawnThemeColorConfigurator >> dropListNormalFillStyleFor: aDropList [

	^ self backgroundColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> dropListNormalListFillStyleFor: aDropList [

	^ self backgroundColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> enabledColor [

	^ self textColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> errorPopperBackgroundColor [

	^ Color red muchDarker
]

{ #category : #colors }
DawnThemeColorConfigurator >> lessConspicuousColorFrom: aColor [

	^ aColor slightlyLighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> lightBackgroundColor [

	^ Color r: 0.218 g: 0.217 b: 0.217
]

{ #category : #colors }
DawnThemeColorConfigurator >> lightBaseColor [

	^ Color darkGray
]

{ #category : #colors }
DawnThemeColorConfigurator >> lineNumberColor [

	^ Color gray lighter lighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> listNormalFillStyleFor: aList [

	^ self backgroundColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> listTextColor [

	^ self textColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> menuBorderColor [

	^ self borderColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> menuItemDisabledTextColorFor: aMenuItem [

	^ Color lightGray
]

{ #category : #colors }
DawnThemeColorConfigurator >> mouseOverColor [

	^ self lightBackgroundColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> paginatorSelectionColor [

	^ self lightBaseColor alpha: 0.8
]

{ #category : #colors }
DawnThemeColorConfigurator >> popoverButtonColor [

	^ self lightBaseColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> scrollbarColor [

	^ self buttonColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> scrollbarNormalFillStyleFor: aScrollbar [

	"Return the normal scrollbar fillStyle for the given scrollbar."

	^ SolidFillStyle color: self backgroundColor lighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> secondarySelectionColor [

	^ Color r: 0.31 g: 0.31 b: 0.36 alpha: 1.0
]

{ #category : #colors }
DawnThemeColorConfigurator >> selectionColor [

	^ Color r: 16r07 g: 16r63 b: 16rAD range: 255
]

{ #category : #colors }
DawnThemeColorConfigurator >> selectionTextColor [

	^ Color r: 16rE0 g: 16rE2 b: 16rE4 range: 255
]

{ #category : #colors }
DawnThemeColorConfigurator >> sliderNormalFillStyleFor: aSlider [

	^ self backgroundColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> spotlightWindowColor [

	^ self windowColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> successTextColor [

	^ Color green darker darker darker
]

{ #category : #colors }
DawnThemeColorConfigurator >> taskbarItemLabelColorForCollapsed: aButton [

	^ Color lightGray
]

{ #category : #colors }
DawnThemeColorConfigurator >> taskbarItemLabelColorForExpanded: aButton [

	^ Color white
]

{ #category : #colors }
DawnThemeColorConfigurator >> textColor [

	^ Color white
]

{ #category : #colors }
DawnThemeColorConfigurator >> textColorForNonStandardBackground [

	^ Color black
]

{ #category : #colors }
DawnThemeColorConfigurator >> textEditorNormalFillStyleFor: aTextEditor [

	^ self backgroundColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> unfocusedSelectionColor [

	^ self secondarySelectionColor
]

{ #category : #colors }
DawnThemeColorConfigurator >> veryLightSelectionColor [

	^ self lightSelectionColor muchLighter
]

{ #category : #colors }
DawnThemeColorConfigurator >> warningTextColor [

	^ Color yellow darker darker
]

{ #category : #colors }
DawnThemeColorConfigurator >> windowActiveLabelFillStyleFor: aWindow [

	^ self textColor
]
