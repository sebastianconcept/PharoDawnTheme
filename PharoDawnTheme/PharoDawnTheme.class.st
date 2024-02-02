Class {
	#name : #PharoDawnTheme,
	#superclass : #UITheme,
	#category : #PharoDawnTheme
}

{ #category : #accessing }
PharoDawnTheme class >> baseColor [
	^ Color fromHexString: '3e3d32'
]

{ #category : #accessing }
PharoDawnTheme class >> basePassiveBackgroundColor [
	^ Color darkGray
]

{ #category : #accessing }
PharoDawnTheme class >> baseSelectionColor [
	^ Color fromHexString: '49483E'
]

{ #category : #configuration }
PharoDawnTheme class >> colorConfiguratorClass [

	^ DawnThemeColorConfigurator
]

{ #category : #accessing }
PharoDawnTheme class >> darkBaseColor [
	^ Color veryDarkGray
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
	Paragraph insertionPointColor: UITheme current caretColor
]

{ #category : #accessing }
PharoDawnTheme class >> isAbstract [
	"Answer whether the receiver is considered to be abstract."

	^false
]

{ #category : #accessing }
PharoDawnTheme class >> lightBaseColor [
	^ Color darkGray
]

{ #category : #accessing }
PharoDawnTheme class >> lightSelectionColor [
	^ Color fromHexString: '49483E'
]

{ #category : #settings }
PharoDawnTheme class >> setPreferredPreferences [
	"NECPreferences 
		expandPrefixes: true;
		popupShowWithShortcut: Character tab asShortcut."
]

{ #category : #accessing }
PharoDawnTheme class >> themeName [
	^ 'Pharo Dawn'
]

{ #category : #accessing }
PharoDawnTheme class >> veryLightSelectionColor [
	^ self lightSelectionColor muchLighter
]

{ #category : #'accessing colors' }
PharoDawnTheme >> backgroundColor [
	^ Color fromHexString: '262720'
]

{ #category : #'accessing colors' }
PharoDawnTheme >> balloonBackgroundColor [
	^ self backgroundColor

]

{ #category : #'accessing colors' }
PharoDawnTheme >> borderColor [ 
	^ Color darkGray darker darker darker
]

{ #category : #'accessing colors' }
PharoDawnTheme >> buttonColor [
	^ self backgroundColor lighter lighter
]

{ #category : #'border-styles-buttons' }
PharoDawnTheme >> buttonNormalBorderStyleFor: aButton [
	"Return the normal button borderStyle for the given button."
	
	(aButton valueOfProperty: #noBorder ifAbsent: [ false ]) 
		ifTrue: [ 
			^ SimpleBorder new 
				width: 0; 
				baseColor: Color transparent ].
	
	^ SimpleBorder new
		width: 1;
		baseColor: self buttonColor lighter
]

{ #category : #'fill-styles-buttons' }
PharoDawnTheme >> buttonNormalFillStyleFor: aButton [
	"Return the normal button fillStyle for the given button."
	
	(aButton valueOfProperty: #noFill ifAbsent: [false]) 
		ifTrue: [ ^ SolidFillStyle color: Color transparent ].
	^ SolidFillStyle color: self buttonColor
]

{ #category : #'fill-styles-buttons' }
PharoDawnTheme >> buttonSelectedFillStyleFor: aButton [
	"Return the normal button fillStyle for the given button."

	^ SolidFillStyle color: self selectionColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> caretColor [
	^ self backgroundColor muchLighter
]

{ #category : #'accessing colors' }
PharoDawnTheme >> classExtensionColor [
	^ Color gray lighter lighter
]

{ #category : #configure }
PharoDawnTheme >> configureMorphTreeMorph: aMorph [
	aMorph preferedPaneColor: self backgroundColor.
	aMorph 
		rowColorForEven: self backgroundColor
		odd: self backgroundColor.
]

{ #category : #configure }
PharoDawnTheme >> configurePluggableTextMorph: textMorph [ 
	textMorph 	
		color: self backgroundColor;
		textColor: self textColor;
		borderWidth: 1.
]

{ #category : #configure }
PharoDawnTheme >> configureScrollPane: aMorph [ 
	
]

{ #category : #configure }
PharoDawnTheme >> configureSystemWindow: aWindow [
	
]

{ #category : #configure }
PharoDawnTheme >> configureTextMorph: textMorph [ 
	textMorph 
		color: self textColor
]

{ #category : #'border-styles' }
PharoDawnTheme >> configureWindowBorderFor: aWindow [

	| aStyle |
	aStyle := SimpleBorder new 
					color: self borderColor;
					width: 1.
	aWindow borderStyle: aStyle
]

{ #category : #'fill-styles-buttons' }
PharoDawnTheme >> controlButtonNormalFillStyleFor: aButton [
	"Return the normal control button fillStyle for the given button.
	Control buttons are generally used for drop-lists and expanders."
	
	^self buttonNormalFillStyleFor: aButton
]

{ #category : #'accessing colors' }
PharoDawnTheme >> dangerTextColor [
	^ Color
		r: 239
		g: 83
		b: 80
		range: 255
]

{ #category : #'fill-styles' }
PharoDawnTheme >> desktopColor [

	^ Color fromHexString: '1E1F1C'
]

{ #category : #'basic-colors-diffs' }
PharoDawnTheme >> diffAdditionalLineBackgroundColor [
	"Answer the color used to highlight additional text lines in a diff view."
	
	^ Color r: 0.0 g: 0.76 b: 0.0 alpha: 0.2
]

{ #category : #'basic-colors-diffs' }
PharoDawnTheme >> diffEdgeColor [
	"Answer the color used to show the border of the changes."
	
	^ Color white alpha: 0.5
]

{ #category : #'basic-colors-diffs' }
PharoDawnTheme >> diffModificatedLineBackgroundColor [
	"Answer the color used to highlight changed text lines in a diff view."
	
	^ Color gray alpha: 0.2
]

{ #category : #'basic-colors-diffs' }
PharoDawnTheme >> diffRemovedLinesBackgroundColor [
	"Answer the color used to highlight removed text lines in a diff view."
	
	^ Color r: 0.84 g: 0.0 b: 0.0 alpha: 0.2
]

{ #category : #'accessing colors' }
PharoDawnTheme >> disabledColor [ 
	^ Color gray lighter
]

{ #category : #'fill-styles' }
PharoDawnTheme >> dropListNormalFillStyleFor: aDropList [
	"Return the normal fillStyle for the given drop list."
	
	^ self backgroundColor
]

{ #category : #'border-styles' }
PharoDawnTheme >> dropListNormalListBorderStyleFor: aDropList [
	"Return the normal borderStyle for the list of the given given drop list"

	^ BorderStyle inset
		width: 1;
		baseColor: self buttonColor lighter
]

{ #category : #'fill-styles' }
PharoDawnTheme >> dropListNormalListFillStyleFor: aDropList [
	"Return the normal fillStyle for the list of the given drop list."
	
	^ self backgroundColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> enabledColor [ 
	^ self textColor
]

{ #category : #'basic-colors' }
PharoDawnTheme >> errorPopperBackgroundColor [
	^ Color red muchDarker 
]

{ #category : #initialization }
PharoDawnTheme >> initialize [

	super initialize.
	(self respondsTo: #windowActiveDropShadowStyle:) ifTrue:[
		self windowActiveDropShadowStyle: #diffuse].
	self settings preferGradientFill: false.
]

{ #category : #'accessing colors' }
PharoDawnTheme >> lessConspicuousColorFrom: aColor [

	^	aColor slightlyLighter
]

{ #category : #'accessing colors' }
PharoDawnTheme >> lightBackgroundColor [

	^ Color r: 0.218 g: 0.217 b: 0.217
]

{ #category : #'accessing colors' }
PharoDawnTheme >> lineNumberColor [ 
	^ Color gray lighter lighter
]

{ #category : #'fill-styles' }
PharoDawnTheme >> listNormalFillStyleFor: aList [
	"Return the normal fillStyle for the given list."
	
	^ self backgroundColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> listTextColor [
	"Answer the list text color to use."

	^ self textColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> menuBorderColor [
	^ self borderColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> menuBorderWidth [
	^ self borderWidth * self currentWorld displayScaleFactor
]

{ #category : #defaults }
PharoDawnTheme >> menuItemDisabledTextColorFor: aMenuItem [

	^ Color lightGray
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> menuItemNormalTextColorFor: aMenuItem [
	"Answer the color to use for normal menu item text."

	^ self textColor
]

{ #category : #'fill-styles-buttons' }
PharoDawnTheme >> menuItemSelectedFillStyleFor: aMenuItem [
	"Answer the selected fill style to use for the given menu item."

	^ SolidFillStyle color: self selectionColor
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> menuItemSelectedTextColorFor: aMenuItem [
	"Answer the color to use for selected menu item text."

	^ Color white
]

{ #category : #initialization }
PharoDawnTheme >> newRadioMarkerForm [
	"Answer a new checkbox marker form."

	^Form extent: 12@12 depth: 32
]

{ #category : #'accessing colors' }
PharoDawnTheme >> scrollbarColor [ 
	^ self buttonColor
]

{ #category : #'border-styles-scrollbars' }
PharoDawnTheme >> scrollbarNormalFillStyleFor: aScrollbar [
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	^ SolidFillStyle color: self backgroundColor lighter.
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> scrollbarPressedThumbFillStyleFor: aScrollbar [
	"Return the pressed scrollbar thumb fillStyle for the given scrollbar."

	^ SolidFillStyle color: self backgroundColor lighter lighter
]

{ #category : #'accessing colors' }
PharoDawnTheme >> secondarySelectionColor [
	^ self selectionColor darker
]

{ #category : #'accessing colors' }
PharoDawnTheme >> selectionColor [
	^ Color fromHexString: '49483E'
]

{ #category : #'accessing colors' }
PharoDawnTheme >> selectionTextColor [
	^ Color
		r: 16rE0
		g: 16rE2
		b: 16rE4
		range: 255
]

{ #category : #defaults }
PharoDawnTheme >> shStyleTableName [

	^ #dawnStyleTable
]

{ #category : #'fill-styles' }
PharoDawnTheme >> sliderNormalFillStyleFor: aSlider [
	
	^ self backgroundColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> spotlightWindowColor [ 
	^ self windowColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> successTextColor [
	^ Color green darker darker darker
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarFillStyleFor: aTaskbar [
	^ SolidFillStyle color: (Color black lighter alpha: 0.8)
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemDisabledBorderStyleFor: aButton [
	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemDisabledFillStyleFor: aButton [
	"Return the disabled taskbar item fillStyle for the given color."

	^ self taskbarItemNormalFillStyleFor: aButton
]

{ #category : #'basic-colors' }
PharoDawnTheme >> taskbarItemLabelColorForCollapsed: aButton [
	"Answer the colour for the label of the given taskbar button, given that the corresponding window is collapsed."

	^ Color lightGray
]

{ #category : #'basic-colors' }
PharoDawnTheme >> taskbarItemLabelColorForExpanded: aButton [
	"Answer the colour for the label of the given taskbar button, given that the corresponding window is expanded."

	^ Color white
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemMouseOverBorderStyleFor: aButton [
	^ BottomBorder new
		color: Color white;
		width: 2;
		yourself
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarItemMouseOverFillStyleFor: aButton [
	^ SolidFillStyle color: (Color white alpha: 0.15)
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemNormalBorderStyleFor: aButton [
	^ BottomBorder new
		color: Color white;
		width: 1;
		trimSize: 2;
		yourself
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarItemNormalFillStyleFor: aButton [
	^ SolidFillStyle color: Color transparent
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemPressedBorderStyleFor: aButton [
	^ self taskbarItemNormalBorderStyleFor: aButton
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarItemPressedFillStyleFor: aButton [
	^ SolidFillStyle color: (Color white alpha: 0.4)
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedDisabledBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedDisaledFillStyleFor: aButton [
	^ self taskbarItemSelectedFillStyleFor: aButton
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedFillStyleFor: aButton [
	^ SolidFillStyle color: (Color white alpha: 0.15)
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedMouseOverBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedMouseOverFillStyleFor: aButton [
	^ SolidFillStyle color: (Color white alpha: 0.25)
]

{ #category : #'border-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedPressedBorderStyleFor: aButton [
	^ self taskbarItemMouseOverBorderStyleFor: aButton
]

{ #category : #'fill-styles-taskbar' }
PharoDawnTheme >> taskbarItemSelectedPressedFillStyleFor: aButton [
	^ SolidFillStyle color: (Color white alpha: 0.35)
]

{ #category : #'accessing colors' }
PharoDawnTheme >> textColor [
	^ Color fromHexString: 'FCF3D7'
]

{ #category : #'accessing colors' }
PharoDawnTheme >> textColorForNonStandardBackground [
	^ Color black
]

{ #category : #'fill-styles' }
PharoDawnTheme >> textEditorNormalFillStyleFor: aTextEditor [
	^ self backgroundColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> unfocusedSelectionColor [
	^ self secondarySelectionColor
]

{ #category : #'accessing colors' }
PharoDawnTheme >> warningTextColor [
	^ Color yellow darker darker
]

{ #category : #'fill-styles' }
PharoDawnTheme >> windowActiveFillStyleFor: aWindow [
	"We do not want the lighting effect when the window goes inactive"
	^SolidFillStyle color: self class baseColor
]

{ #category : #'fill-styles' }
PharoDawnTheme >> windowActiveLabelFillStyleFor: aWindow [
	^ self textColor
]

{ #category : #'label-styles' }
PharoDawnTheme >> windowLabelForText: aTextOrString [
	^ (super windowLabelForText: aTextOrString)
		color: self textColor;
		yourself
]
