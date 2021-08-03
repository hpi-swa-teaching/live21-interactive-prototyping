as yet unclassified
initialize

	super initialize.
	components := SBBlock new.
	self
		addMorphBack: (SBRow new
			cellGap: 4;
			addMorphFront: (SBTextBubble new contents: 'New Component'));
		addMorphBack: components;
		addMorphBack: (SBRow new
			addMorphBack: (SBColumn new addMorphFront: (SBButton new icon: SBIcon iconPlus label: 'add component' do: [self addComponent]));
			addMorphBack: (SBColumn new addMorphFront: (SBButton new icon: SBIcon iconArrowRight label: 'create' do: [self createInstance])));
		attachDecorator: SBMoveDecorator new;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellGap: 4;
		changeTableLayout