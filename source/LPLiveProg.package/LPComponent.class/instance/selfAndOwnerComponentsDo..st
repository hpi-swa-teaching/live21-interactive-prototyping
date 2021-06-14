as yet unclassified
selfAndOwnerComponentsDo: aBlock

	aBlock value: self.
	(self owner isKindOf: LPComponent) ifTrue: [self owner selfAndOwnerComponentsDo: aBlock]