as yet unclassified
initialize

	super initialize.
	self
		addMorphBack: (subElements := SBColumn new
			cellGap: 3;
			borderWidth: 1;
			borderColor: Color lightGray);
		layoutPolicy: SBVerticalLayout new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap