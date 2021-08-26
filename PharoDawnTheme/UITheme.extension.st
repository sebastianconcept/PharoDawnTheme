Extension { #name : #UITheme }

{ #category : #'*PharoDawnTheme' }
UITheme >> lightColorFor: aButton [
	^ self class lightBaseColor
]

{ #category : #'*PharoDawnTheme' }
UITheme >> subgroupColorFrom: paneColor [
	"Answer the colour for a subgroup given the pane colour."

	^ self lightColorFor: paneColor" self class baseColor"
]
