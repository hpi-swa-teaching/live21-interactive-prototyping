as yet unclassified
initializeWithComponents: aComponentObject andElements: anElementObject

	super initialize.
	propertyDictionary := Dictionary new.
	self
		addMorphFront: (SBRow new
			cellGap: 8;
			addMorphBack: (SBTextBubble new
				layoutInset: 4;
				colored: false;
				color: Color white;
				contents: 'New Element');
			addMorphBack: (SBRow new cellGap: 4));
		addMorphBack: (SBRow new
			addMorphBack: (components := aComponentObject);
			addMorphBack: (elements := anElementObject));
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		attachDecorator: SBMoveDecorator new;
		attachDecorator: SBResizableDecorator new