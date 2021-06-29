as yet unclassified
objectInterfaceNear: aBlock at: aSymbol

	aBlock printString = 'text bubble' ifFalse: [self halt].
	^ {[:o | (o isKindOf: LPElement) or: [(o isKindOf: LPComponent) or: [o isKindOf: LPSideEffect]]]}