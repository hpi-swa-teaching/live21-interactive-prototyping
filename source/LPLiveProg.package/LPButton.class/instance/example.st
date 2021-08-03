as yet unclassified
example

	SBMorphExample
		setUp: [Compiler evaluate: self class new asExecutableBlock sourceString]
		cases: {SBMorphExampleCase name: 'example 1' caseBlock: [:m | m]}
		extent: 300 @ 300