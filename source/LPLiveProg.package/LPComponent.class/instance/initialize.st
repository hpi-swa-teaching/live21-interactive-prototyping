as yet unclassified
initialize

	| nameField |
	super initialize.
	self
		addMorphFront: (SBRow new
			cellGap: 4;
			addMorphFront: ((nameField := SBTextBubble new)
				contents: (name := 'New Component');
				when: #stopEditing send: #updateName: to: self withArguments: {nameField});
			addMorphBack: (properties := SBRow new);
			addMorphBack: (SBButton new icon: SBIcon iconPlus label: 'property' do: [self addProperty: 'newProperty']);
			addMorphBack: (launchButton := SBButton new icon: SBIcon iconArrowRight label: '' do: [self createInstance]));
		addMorphBack: (SBRow new
			addMorphBack: (elements := LPColumn new
				addMorphBack: ((SBBlock new
					vResizing: #shrinkWrap;
					hResizing: #shrinkWrap;
					changeTableLayout) addMorphBack: (LPStringMorph new contents: 'put elements here'));
				cellGap: 5;
				borderWidth: 1;
				borderColor: Color gray;
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap);
			addMorphBack: (components := LPDeclarationArea new
				vResizing: #spaceFill;
				hResizing: #spaceFill);
			changeTableLayout;
			cellGap: 4;
			hResizing: #spaceFill;
			vResizing: #spaceFill);
		cellGap: 4;
		layoutInset: 4;
		disableLayout: true;
		changeTableLayout;
		attachDecorator: (SBMoveAssociatedDecorator new hintBlock: [:artefact | 'Move to {1}' format: {artefact name}]);
		attachDecorator: SBResizableDecorator new;
		extent: 277 @ 86