as yet unclassified
buildDefault

	^ self new
		addSubmorph: ((SBBlock new
			vResizing: #shrinkWrap;
			hResizing: #shrinkWrap;
			changeTableLayout) addMorphBack: (LPStringMorph new contents: 'vertical'));
		yourself