as yet unclassified
example

	SBMorphExample
		setUp: [
			Compiler evaluate: (self class new
				addElement: LPButton new;
				addElement: LPButton new) asExecutableBlock sourceString]
		cases: {SBMorphExampleCase name: 'example 1' caseBlock: [:m | m]}
		extent: 300 @ 300