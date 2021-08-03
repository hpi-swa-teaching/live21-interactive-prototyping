as yet unclassified
testAsExecutableBlock

	| subComponent subComponentInstance testComponent |
	subComponent := LPComponent new
		addProperty: 'iAmAProp';
		addElement: (LPButton new text: 'ButtonLabel').
	subComponentInstance := subComponent newInstance
		setProperty: #iAmAProp
		to: 'IAmAValue'.
	testComponent := LPComponent new
		addComponent: subComponent;
		addProperty: 'count';
		addProperty: 'abc';
		addElement: subComponentInstance;
		addSideEffectWithStatements: {SBStName contents: 'count'. SBStName contents: 'abc'}.
	self
		assert: (SBExampleWatch report: testComponent asExecutableBlock prettySourceString for: 960508062)
		equals: 'b'