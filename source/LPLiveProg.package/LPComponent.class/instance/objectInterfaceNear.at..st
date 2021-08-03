as yet unclassified
objectInterfaceNear: aBlock at: aSymbol

	| block |
	block := aBlock className.
	((block = 'SBTextBubble' or: (block = 'SBBlock' and: aSymbol ~= #replace)) or: (block = 'LPColumn' and: aSymbol = #replace)) ifTrue: [^ SBInterfaces never].
	^ {[:o | o isKindOf: LPElement]}