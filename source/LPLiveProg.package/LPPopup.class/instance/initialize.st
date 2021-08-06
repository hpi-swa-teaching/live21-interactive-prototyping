as yet unclassified
initialize

	super initialize.
	self
		attachDecorator: SBMoveDecorator new;
		layoutInset: 4;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellGap: 6;
		changeTableLayout;
		addDropShadow