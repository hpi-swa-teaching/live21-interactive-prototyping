as yet unclassified
initialize

	super initialize.
	self
		changeTableLayout;
		layoutPolicy: SBHorizontalLayout new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap