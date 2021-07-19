as yet unclassified
at: aKeySymbol

	^ props at: aKeySymbol ifAbsent: [
		self parent ifNil: [^ (KeyNotFound key: aKeySymbol) signal].
		self parent at: aKeySymbol]