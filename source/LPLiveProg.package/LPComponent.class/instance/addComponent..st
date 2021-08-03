as yet unclassified
addComponent: anObject

	self selfAndOwnerComponentsDo: [:c | c extent: c extent + anObject extent].
	declarations addMorphBack: (anObject bottomRight: self bottomRight - 5)