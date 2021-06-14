as yet unclassified
initialize

	super initialize.
	self
		addMorphFront: (SBRow new
			cellGap: 8;
			addMorphBack: (SBTextBubble new
				layoutInset: 4;
				colored: false;
				color: Color white;
				contents: 'New Element');
			addMorphBack: (SBRow new cellGap: 4));
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		attachDecorator: SBMoveDecorator new;
		attachDecorator: SBResizableDecorator new