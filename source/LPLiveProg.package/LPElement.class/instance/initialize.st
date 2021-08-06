as yet unclassified
initialize

	super initialize.
	self
		layoutInset: 5;
		changeTableLayout.
	popup := LPPopup new parent: self