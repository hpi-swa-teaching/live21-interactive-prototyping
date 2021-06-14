as yet unclassified
initialize

	super initialize.
	self
		addMorphBack: (SBRow new
			cellGap: 4;
			addMorphFront: (SBTextBubble new contents: 'New Component');
			addMorphBack: (properties := SBRow new);
			addMorphBack: (SBButton new
				icon: SBIcon iconPlus
				label: 'add'
				do: [self outerMostComponent owner addMorphFront: (LPComponentPicker new bottomRight: self bottomLeft)]);
			addMorphBack: (SBButton new icon: SBIcon iconArrowRight label: 'create' do: [self createInstance]));
		disableLayout: true;
		layoutPolicy: SBVerticalLayout new;
		addMorphBack: (SBRow new
			addMorphBack: (elements := SBColumn new cellGap: 5);
			addMorphBack: (components := SBColumn new));
		attachDecorator: (SBMoveAssociatedDecorator new hintBlock: [:artefact | 'Move to {1}' format: {artefact name}]);
		attachDecorator: SBResizableDecorator new;
		extent: 278 @ 71