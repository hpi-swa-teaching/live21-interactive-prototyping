as yet unclassified
addSideEffectWithStatements: aCollection

	| newSideEffect |
	newSideEffect := LPSideEffect new statements: aCollection.
	declarations addMorphBack: (newSideEffect bottomRight: self bottomRight - 5)