as yet unclassified
initialize

	super initialize.
	self
		addMorphBack: (SBRow new addMorphBack: (SBButton new icon: SBIcon iconPlus label: 'add' do: [nil]));
		attachDecorator: SBMoveDecorator new;
		layoutInset: 4;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellGap: 6;
		changeTableLayout