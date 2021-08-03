as yet unclassified
initialize

	super initialize.
	self
		addMorphBack: ((textBubble := SBTextBubble new) contents: 'new text bubble');
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap