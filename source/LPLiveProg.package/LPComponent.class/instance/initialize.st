as yet unclassified
initialize

	| launchOrCreateButton |
	super initialize.
	self outerMostComponent = self
		ifTrue: [
			launchOrCreateButton := SBButton new
				icon: SBIcon iconArrowRight
				label: 'launch'
				do: [self createInstance]]
		ifFalse: [
			launchOrCreateButton := SBButton new
				icon: SBIcon iconPlus
				label: 'create'
				do: [self createInstance]].
	self
		addMorphFront: (SBRow new
			cellGap: 4;
			addMorphFront: (SBTextBubble new contents: 'New Component');
			addMorphBack: (properties := SBRow new);
			addMorphBack: (SBButton new icon: SBIcon iconPlus label: 'add' do: [self addProperty: 'newProperty']);
			addMorphBack: launchOrCreateButton);
		addMorphBack: (elements := SBColumn new
			cellGap: 5;
			borderWidth: 1;
			borderColor: Color gray;
			addMorphBack: ((SBBlock new
				vResizing: #shrinkWrap;
				hResizing: #shrinkWrap) addMorphBack: (LPStringMorph new contents: 'put elements here')));
		disableLayout: true;
		layoutPolicy: SBVerticalLayout new;
		attachDecorator: (SBMoveAssociatedDecorator new hintBlock: [:artefact | 'Move to {1}' format: {artefact name}]);
		attachDecorator: SBResizableDecorator new;
		extent: 278 @ 71