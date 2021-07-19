as yet unclassified
buildComponent: id state: aState setState: setStateBlock createDeclarations: aDeclBlock createView: viewBlock

	| childState |
	childState := aState childAtOrCreate: id.
	setStateBlock value: childState.
	aDeclBlock value: childState.
	^ SBColumn new addAllMorphs: (viewBlock value: childState)