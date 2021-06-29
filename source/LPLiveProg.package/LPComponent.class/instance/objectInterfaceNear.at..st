as yet unclassified
objectInterfaceNear: aBlock at: aSymbol

	| block |
	block := aBlock className.
	(block = 'SBTextBubble' or: (block = 'SBBlock' and: aSymbol ~= #replace)) ifTrue: [^ SBInterfaces never].
	^ {[:o | (o isKindOf: LPElement) or: [(o isKindOf: LPComponent) or: [o isKindOf: LPSideEffect]]]}