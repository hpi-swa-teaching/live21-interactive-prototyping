as yet unclassified
whoKnows: aKeySymbol

	props
		at: aKeySymbol
		ifAbsent: [self parent ifNil: [^ nil] ifNotNil: [^ self parent whoKnows: aKeySymbol]].
	^ self