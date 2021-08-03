as yet unclassified
initialize

	super initialize.
	self
		addMorphBack: ((button := SBButton new) label: 'new button' shortcut: nil do: [nil]);
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap