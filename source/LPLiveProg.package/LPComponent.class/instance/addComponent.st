as yet unclassified
addComponent

	| newComponent |
	newComponent := LPComponent new.
	self selfAndOwnerComponentsDo: [:c | c extent: c extent + newComponent extent].
	components addMorphBack: (newComponent bottomRight: self bottomRight - 5)