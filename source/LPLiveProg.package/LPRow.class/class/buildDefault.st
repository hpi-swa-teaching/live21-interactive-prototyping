as yet unclassified
buildDefault

	^ self new
		addSubmorph: ((SBBlock new
			vResizing: #shrinkWrap;
			hResizing: #shrinkWrap) addMorphBack: (LPStringMorph new contents: 'horizontal'));
		yourself