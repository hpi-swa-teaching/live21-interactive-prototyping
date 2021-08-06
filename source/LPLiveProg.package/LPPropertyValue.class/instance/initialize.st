as yet unclassified
initialize

	sideEffectHandler := LPPropertyDragHandler new
		extent: 10 @ 17;
		element: element;
		property: property.
	super initialize.
	self
		height: 100;
		layoutPolicy: SBHorizontalLayout new;
		contents: 'foo';
		addMorphBack: sideEffectHandler