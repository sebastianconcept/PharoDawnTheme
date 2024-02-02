Extension { #name : #SHRBTextStyler }

{ #category : #'*PharoDawnTheme' }
SHRBTextStyler class >> dawnStyleTable [
	"color can be a valid argument to Color class>>colorFrom: , or nil to
	use the editor text color.
	Multiple emphases can be specified using an array e.g. #(bold italic).
	If emphasis is not specified, #normal will be used.
	if pixel height is not specified , then the editor font size will be used.
	
	This style is inspired on darkula theme from eclipse: http://eclipsecolorthemes.org/?view=theme&id=15515.  
	"
	<styleTable: 'Dawn'>

 ^ #(
			"(symbol color [emphasisSymbolOrArray [textStyleName [pixelHeight]]])" 
			(default 								white)
			(invalid 								'EE3F08' bold)

			(comment 								'72725e' italic)

			(character 							'ef29ef' bold)
			(number 								'E8E187' bold)
			(symbol 								('FFA180')) 
			(string 								('babdb6'))

			(selector 							'729fcf')

			(#true 								'9ffc3d' bold )
			(#false 								'629928' bold )
			(#nil 									'629928' bold )

			(#self 								'ECC284' bold)
			(#super								'ECC284' bold)
			(#thisContext 						'ECC284' bold)
			(#return 								'ECC284' bold)

			(patternArg 							'ECC284' italic) 
			(blockPatternArg 					'ECC284' italic)
			(blockArg 							'ECC284' italic)
			(argument 							'ECC284' italic)
			(blockTempVar 						'ECC284' italic)
			(blockPatternTempVar 				'ECC284' italic)

			(instVar 								'ECC284')
										
			(tempVar 								'ECC284' italic)
			(patternTempVar 					'ECC284' italic)

			(poolConstant 						'A7E2ED' bold)
			(classVar 							'CEEAA7' bold)
			(globalVar 							'fcaf3e' bold)

			(incompleteIdentifier 			'E8E2B7' italic)
			(incompleteSelector 			'E8E2B7' italic)

			(undefinedIdentifier 				'EE3F08' bold)						
			(undefinedSelector 				'EE3F08' bold)						

			(patternSelector 					'729fcf' bold)
			(blockArgColon 						'ECC284' italic)
			(parenthesis 					white)
			(parenthesis1 					(green muchLighter))
			(parenthesis2 					(magenta muchLighter))
			(parenthesis3 					(red muchLighter))
			(parenthesis4 					(green lighter))
			(parenthesis5 					(orange lighter))
			(parenthesis6 					(magenta lighter))
			(parenthesis7 					blue)
			(block 							white bold)
			(block1 						(green muchLighter))
			(block2 						(magenta muchLighter))
			(block3 						(red muchLighter))
			(block4 						(green lighter))
			(block5 						(orange lighter))
			(block6 						(magenta lighter))
			(block7 						blue)
			(brace 						white)
			(brace1 						(green muchLighter))
			(brace2 						(magenta muchLighter))
			(brace3 						(red muchLighter))
			(brace4 						(green lighter))
			(brace5 						(orange lighter))
			(brace6 						(magenta lighter))
			(brace7 						blue)
			(cascadeSeparator 					white bold)
			(statementSeparator 				white bold)
			(methodTempBar 						white)
			(blockTempBar 						white)
			(blockArgsBar 						white)

			(pragma 									'B4DD6E'))
]
