as yet unclassified
instanceComponent: aComponent from: aState id: anId with: aBlock

	| childState |
	childState := aState
		childAt: anId
		orCreatedDo: [:s | SBToggledCode comment: '' active: 0 do: {[aComponent declarations value: s]}].
	aComponent declarations value: childState.
	aBlock value: childState.
	aComponent selectors value: childState.
	^ SBColumn new addAllMorphs: (aComponent view value: childState)