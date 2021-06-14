as yet unclassified
example

	SBMorphExample
		setUp: [self class new]
		cases: {
			SBMorphExampleCase name: 'example 1' caseBlock: [:m |
				m
					addProperty: 'name';
					addComponent;
					addElement: LPButton new]}
		extent: 502 @ 255