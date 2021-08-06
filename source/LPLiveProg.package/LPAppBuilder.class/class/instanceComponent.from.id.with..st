as yet unclassified
instanceComponent: aComponent from: aState id: anId with: aBlock

	| childState morphOrCollection component |
	childState := aState childAt: anId orCreatedDo: [:s | aComponent declarations value: s].
	aComponent declarations value: childState.
	aBlock value: childState.
	aComponent selectors value: childState.
	component := SBColumn new.
	morphOrCollection := aComponent view value: childState.
	(morphOrCollection isKindOf: Collection)
		ifTrue: [component addAllMorphs: morphOrCollection]
		ifFalse: [component addMorph: morphOrCollection].
	^ component