as yet unclassified
addElement: aMorph

	self selfAndOwnerComponentsDo: [:c | c extent: c extent + aMorph extent].
	elements addMorphBack: aMorph