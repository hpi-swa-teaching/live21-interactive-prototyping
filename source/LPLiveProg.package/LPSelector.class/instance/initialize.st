as yet unclassified
initialize

	super initialize.
	self
		disableLayout: true;
		attachDecorator: (SBMoveAssociatedDecorator new hintBlock: [:artefact | 'Move to {1}' format: {artefact name}]);
		attachDecorator: SBResizableDecorator new