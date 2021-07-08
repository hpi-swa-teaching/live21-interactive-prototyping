as yet unclassified
initialize

	| nameField |
	super initialize.
	launchOrCreateButton := SBButton new
		icon: SBIcon iconArrowRight
		label: 'launch'
		do: [self createInstance].
	self
		addMorphFront: (SBRow new
			cellGap: 4;
			addMorphFront: ((nameField := SBTextBubble new)
				contents: (name := 'New Component');
				when: #stopEditing send: #updateName: to: self withArguments: {nameField});
			addMorphBack: (properties := SBRow new);
			addMorphBack: (SBButton new icon: SBIcon iconPlus label: 'add' do: [self addProperty: 'newProperty']);
			addMorphBack: launchOrCreateButton);
		addMorphBack: (SBRow new
			addMorphBack: (elements := SBColumn new
				cellGap: 5;
				borderWidth: 1;
				borderColor: Color gray;
				addMorphBack: ((SBBlock new
					vResizing: #shrinkWrap;
					hResizing: #shrinkWrap) addMorphBack: (LPStringMorph new contents: 'put elements here'));
				hResizing: #shrinkWrap);
			addMorphBack: (components := LPDeclarationArea new
				vResizing: #spaceFill;
				hResizing: #spaceFill);
			changeTableLayout;
			hResizing: #spaceFill;
			vResizing: #spaceFill);
		disableLayout: true;
		changeTableLayout;
		attachDecorator: (SBMoveAssociatedDecorator new hintBlock: [:artefact | 'Move to {1}' format: {artefact name}]);
		attachDecorator: SBResizableDecorator new;
		extent: 278 @ 71