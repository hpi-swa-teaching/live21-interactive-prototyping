as yet unclassified
initialize

	super initialize.
	self
		addMorphBack: (subElements := SBColumn new
			cellGap: 5;
			borderWidth: 1;
			borderColor: Color lightGray;
			addMorphBack: ((SBBlock new
				vResizing: #shrinkWrap;
				hResizing: #shrinkWrap) addMorphBack: (LPStringMorph new contents: 'vertical')));
		layoutPolicy: SBVerticalLayout new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap