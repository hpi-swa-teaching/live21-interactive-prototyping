as yet unclassified
initialize

	super initialize.
	self
		addMorphBack: ((label := SBStringMorph new) contents: 'new label');
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap