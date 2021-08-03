as yet unclassified
buildOn: aBuilder

	aBuilder
		addHeader: 'Elements';
		addSectionHeader: 'Primitives';
		addBlock: 'Row' as: LPRow buildDefault;
		addBlock: 'Column' as: LPColumn buildDefault;
		addBlock: 'Button' as: LPButton new;
		addBlock: 'Label' as: LPLabel new;
		addBlock: 'TextBubble' as: LPTextBubble new;
		addSectionHeader: 'New Side Effect';
		addBlock: 'LPSideEffect' as: LPSideEffect new;
		addSectionHeader: 'New Selector';
		addBlock: 'LPSelector' as: LPSelector new;
		addSectionHeader: 'New Component';
		addBlock: 'LPComponent' as: LPComponent new;
		addSectionHeader: 'Own Components'.
	(aBuilder selection containingArtefact isKindOf: LPComponent) ifTrue: [aBuilder selection containingArtefact selfAndOwnerComponentsDo: [:parent | parent declarations childSandblocksDo: [:component | (component isKindOf: LPComponent) ifTrue: [aBuilder addBlock: component name contents as: component newInstance]]]]