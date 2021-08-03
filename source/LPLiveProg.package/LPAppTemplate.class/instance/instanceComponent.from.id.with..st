as yet unclassified
instanceComponent: aComponent from: aState id: anId with: aBlock

	| childState |
	childState := aState childAt: anId orCreatedDo: [:s | aComponent declarations value: s].
	aBlock value: childState.
	aComponent selectors value: childState.
	^ SBColumn new addAllMorphs: (aComponent view value: childState)