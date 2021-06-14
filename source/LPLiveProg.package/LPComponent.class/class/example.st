as yet unclassified
example

	^ LPComponent new
		addMorphBack: (LPComponent new
			addProperty: 'abc';
			addMorphFront: (LPSideEffect new
				statements: {SBStName contents: 'count'};
				position: 50 @ 50);
			position: 86.0 @ 80.0;
			extent: 200 @ 200);
		addProperty: 'count';
		addMorphFront: (LPSideEffect new
			statements: {SBStName contents: 'count'. SBStName contents: 'abc'};
			position: 17.0 @ 50)