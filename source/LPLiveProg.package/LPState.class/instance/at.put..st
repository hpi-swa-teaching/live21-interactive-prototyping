as yet unclassified
at: aKeySymbol put: anObject

	| nextState |
	nextState := self whoKnows: aKeySymbol.
	nextState
		ifNotNil: [nextState props at: aKeySymbol put: anObject]
		ifNil: [self props at: aKeySymbol put: anObject]