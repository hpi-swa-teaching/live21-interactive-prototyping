as yet unclassified
example

	SBMorphExample
		setUp: [
			self class new
				addSubmorph: LPButton new;
				addSubmorph: LPButton new]
		cases: {SBMorphExampleCase name: 'example 1' caseBlock: [:m | m]}
		extent: 300 @ 300