as yet unclassified
testAsExecutableBlockx

	self
		assert: (SBExampleWatch report: LPComponent new asExecutableBlock sourceString for: 984966709)
		equals: 'b'