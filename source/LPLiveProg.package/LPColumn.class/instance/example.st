as yet unclassified
example

	SBMorphExample
		setUp: [Compiler evaluate: ((self class new addSubmorph: LPTextBubble new) addSubmorph: LPLabel new) asExecutableBlock sourceString]
		cases: {SBMorphExampleCase name: 'example 1' caseBlock: [:m | m]}
		extent: 300 @ 300