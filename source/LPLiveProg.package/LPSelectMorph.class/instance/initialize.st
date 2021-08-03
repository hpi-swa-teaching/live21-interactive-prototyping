as yet unclassified
initialize

	| icon |
	super initialize.
	self
		addMorphBack: (SBRow new addMorphBack: (SBLabel new contents: 'COOL'));
		addMorphBack: ((SBRow new hResizing: #spaceFill)
			changeTableLayout;
			cellGap: 6;
			addMorphBack: (icon := SBIcon iconCog);
			addMorphBack: (SBTextBubble new hResizing: #spaceFill));
		changeTableLayout;
		cellGap: 6;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 4;
		attachDecorator: SBMoveDecorator new.
	
	
	