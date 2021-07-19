as yet unclassified
root

	^ self parent ifNil: [self] ifNotNil: [:p | p root]