as yet unclassified
example

	SBMorphExample
		setUp: [
			SBStringMorph new contents: (self class new
				addSubmorph: LPButton new;
				asExecutableBlock) sourceString]
		cases: {SBMorphExampleCase name: 'example 1' caseBlock: [:m | m]}
		extent: 300 @ 300