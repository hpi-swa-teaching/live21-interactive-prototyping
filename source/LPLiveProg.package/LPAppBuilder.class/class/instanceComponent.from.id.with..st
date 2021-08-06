as yet unclassified
instanceComponent: aComponent from: aState id: anId with: aBlock

	| childState |
	childState := aState childAt: anId orCreatedDo: [:s | aComponent declarations value: s].
	aComponent declarations value: childState.
	aBlock value: childState.
	aComponent selectors value: childState.
	^ SBColumn new addMorph: (aComponent view value: childState)