as yet unclassified
objectInterfaceNear: aBlock at: aSymbol

	| block |
	aSymbol.
	block := aBlock className.
	(block = 'SBBlock' and: aSymbol ~= #replace) ifTrue: [^ SBInterfaces never].
	^ {[:o | (o isKindOf: LPElement) or: [(o isKindOf: LPComponent) or: [o isKindOf: LPSideEffect]]]}