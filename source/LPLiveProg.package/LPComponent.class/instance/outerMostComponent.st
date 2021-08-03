as yet unclassified
outerMostComponent

	| last |
	self selfAndOwnerComponentsDo: [:c | last := c].
	^ last